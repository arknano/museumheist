using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

namespace UnityStandardAssets.Characters.ThirdPerson
{
    [RequireComponent(typeof (ThirdPersonCharacter))]
    public class ThirdPersonUserControl : MonoBehaviour
    {
        private ThirdPersonCharacter m_Character; // A reference to the ThirdPersonCharacter on the object
        private Transform m_Cam;                  // A reference to the main camera in the scenes transform
        private Vector3 m_CamForward;             // The current forward direction of the camera
        private Vector3 m_Move;
        private bool m_Jump;                      // the world-relative desired move direction, calculated from the camForward and user input.

        Player m_player;

        public PlayerInputManager m_inputManager;

        private void Start()
        {
            // get the transform of the main camera
            if (Camera.main != null)
            {
                m_Cam = Camera.main.transform;
            }
            else
            {
                Debug.LogWarning(
                    "Warning: no main camera found. Third person character needs a Camera tagged \"MainCamera\", for camera-relative controls.", gameObject);
                // we use self-relative controls in this case, which probably isn't what the user wants, but hey, we warned them!
            }

            // get the third person character ( this should never be null due to require component )
            m_Character = GetComponent<ThirdPersonCharacter>();

            m_inputManager = GetComponent<PlayerInputManager>();

            m_player = GetComponent<Player>();
        }


        private void Update()
        {
            if (!m_player.isStunned)
            {
                if (m_inputManager == null)
                {
                    m_inputManager = GetComponent<PlayerInputManager>();
                }

                if (!m_Jump)
                {
                    m_Jump = (m_inputManager.GetActive()) ? m_inputManager.GetButtonDown(Button.Jump) : CrossPlatformInputManager.GetButtonDown("Jump");
                }
            }
            m_Character.isStunned = m_player.isStunned;
        }


        // Fixed update is called in sync with physics
        private void FixedUpdate()
        {
            // read inputs
            //float h = (m_inputManager.GetActive()) ? m_inputManager.GetAxis(Axis.Horizontal) : CrossPlatformInputManager.GetAxis("Horizontal");
            //float v = (m_inputManager.GetActive()) ? m_inputManager.GetAxis(Axis.Verticle) : CrossPlatformInputManager.GetAxis("Vertical");
            if (!m_player.isStunned)
            {

                float h = (m_inputManager.GetActive()) ? m_inputManager.GetAxis(Axis.Horizontal) :
                            (Input.GetKey(KeyCode.A)) ? -1 :
                                (Input.GetKey(KeyCode.D)) ? 1 :
                                    0;
                float v = (m_inputManager.GetActive()) ? m_inputManager.GetAxis(Axis.Verticle) :
                            (Input.GetKey(KeyCode.W)) ? 1 :
                                (Input.GetKey(KeyCode.S)) ? -1 :
                                    0;

                bool crouch = (m_inputManager.GetActive()) ? m_inputManager.GetButtonDown(Button.Crouch) : Input.GetKey(KeyCode.C);

                // calculate move direction to pass to character
                if (m_Cam != null)
                {
                    // calculate camera relative direction to move:
                    m_CamForward = Vector3.Scale(m_Cam.forward, new Vector3(1, 0, 1)).normalized;
                    m_Move = v * m_CamForward + h * m_Cam.right;
                }
                else
                {
                    // we use world-relative directions in the case of no main camera
                    m_Move = v * Vector3.forward + h * Vector3.right;
                }
#if !MOBILE_INPUT
                // walk speed multiplier
                if (Input.GetKey(KeyCode.LeftShift)) m_Move *= 0.5f;
#endif

                // pass all parameters to the character control script
                m_Character.Move(m_Move, crouch, m_Jump);
                m_Jump = false;
            }
        }
    }
}
