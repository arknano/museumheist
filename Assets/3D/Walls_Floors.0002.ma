//Maya ASCII 2017 scene
//Name: Walls_Floors.0002.ma
//Last modified: Wed, Apr 19, 2017 04:35:43 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "A89427C2-455D-E37A-FD49-C690BE913036";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1837.7207807530594 2345.6858444761624 1966.6422787290912 ;
	setAttr ".r" -type "double3" -39.938352728867777 -310.60000000018624 -2.4436698605041328e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B5856B3C-4500-AF5C-CC96-FCAE5A29EF6E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3751.0305013131151;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 200 99.999999999999886 -80.637042999267578 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E775E2D3-46CE-583C-AF04-51A16032B3DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "20DB8C48-4F3A-9383-C81E-2CBF7369898B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "75305524-472B-593B-4249-F7ABAB029C28";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 114.86723327636719 19.93466949462875 1023.7653045740537 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2AC3315F-4202-8B6C-2AB3-9BA21C50B599";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1135.6282682505064;
	setAttr ".ow" 64.907515348720224;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 114.86723327636719 19.93466949462875 -111.86296367645262 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BED15F15-44A8-B154-C57F-10918A9CB549";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1012.5023138428594 99.999999999999829 -99.999999999999815 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F6051412-4F10-FE51-8393-41ADC4990900";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 812.50231384285917;
	setAttr ".ow" 465.68303604198786;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 200 99.999999999999829 -100 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "doorway_slim_MESH";
	rename -uid "4BE86E61-4515-AAC9-E141-FC810B7E97E7";
	setAttr ".t" -type "double3" 400 100.00000000000003 -76.27407073974608 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" -100 -23.725929260253693 99.999999999999872 ;
	setAttr ".rpt" -type "double3" 0 -76.274070739746307 -123.72592926025379 ;
	setAttr ".sp" -type "double3" -100 -23.725929260253693 99.999999999999872 ;
createNode mesh -n "polySurfaceShape1" -p "doorway_slim_MESH";
	rename -uid "2AB4EB20-481B-A31F-F849-288304CC7E1D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -100 -2.220446e-014 100 100 -2.220446e-014 100
		 -100 2.220446e-014 -100 100 2.220446e-014 -100;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ground_mesh4";
	rename -uid "E1D839D3-47D1-CBAF-5850-449AC18B7242";
	setAttr ".rp" -type "double3" 400 99.999999999999886 -1.3500311979441904e-013 ;
	setAttr ".sp" -type "double3" 400 99.999999999999886 -1.3500311979441904e-013 ;
createNode mesh -n "Ground_mesh4Shape" -p "Ground_mesh4";
	rename -uid "DF611BD4-478D-ADD0-DEFE-9D9AF736563E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:64]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0 0 1 0 0 1 1 1 0.29999998
		 0 0.29999998 0.59937251 0.33333331 0.59937257 0.33333331 0 0.69999999 0 0.69999999
		 0.59937257 1 0.59937257 1 0 1 0.63943529 0.69999999 0.63943529 0.69999999 1 1 1 0.66666663
		 0.63943529 0.33333331 0.63943529 0.33333331 1 0.66666663 1 0.29999998 0.63943523
		 0.29999998 1 0 0 0.29999998 0 0.29999998 0.59937251 0 0.59937257 0.66666663 0 0.69999999
		 0 0.69999999 0.59937257 0.66666663 0.59937257 0.69999999 0.63943529 0.66666663 0.63943529
		 0.33333331 0.59937257 0.33333331 0.63943529 0.29999998 0.63943529 0 0.63943529 0.33333331
		 0 0.33333331 0.59937257 0.66666663 0.59937257 0.66666663 0.59937257 0.66666663 0
		 0.66666663 0 0.29999998 0.59937251 0.29999998 0 0.33333331 0 0.29999998 0.63943529
		 0.69999999 0.59937257 0.69999999 0 1 0 1 0.59937257 1 0.63943529 0.69999999 0.63943529
		 0.69999999 1 0.69999999 0.63943529 1 0.63943529 1 1 0.66666663 0.63943529 0.66666663
		 1 0.33333331 0.63943529 0.33333331 1 0.29999998 1 0.29999998 0.63943529 0 0.63943529
		 0 1 0 0 0 0.59937257 0 0.63943529 0 1 0 0.59937257 0 0 0.66666663 0.59937257 0.66666663
		 0 0.66666663 0 0.66666663 0.59937257 0.66666663 0.63943529 0.33333331 0.59937257
		 0.33333331 0.59937257 0.33333331 0.63943529 0.33333331 0 0.33333331 0 1 0 1 0.59937257;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 78 ".vt[0:77]"  300 -2.220446e-014 100 500 -2.220446e-014 100
		 300 2.220446e-014 -100 500 2.220446e-014 -100 300 0 -76.27407074 500 0 -76.27407074
		 300 200 -76.27407074 500 200 -76.27407074 444.58786011 0 -76.27407074 444.58786011 200 -76.27407074
		 355.41210938 0 -76.27407074 355.41210938 200 -76.27407074 500 149.49810791 -76.27407074
		 444.58786011 149.49810791 -76.27407074 355.41210938 149.49810791 -76.27407074 300 149.49810791 -76.27407074
		 300 0 -100 355.41210938 0 -100 355.41210938 149.49810791 -100 300 149.49810791 -100
		 444.58786011 0 -100 500 0 -100 500 149.49810791 -100 444.58786011 149.49810791 -100
		 500 200 -100 444.58786011 200 -100 355.41210938 200 -100 300 200 -100 349.87091064 200 -76.27407074
		 450.12908936 200 -76.27407074 500 154.54829407 -76.27407074 450.12908936 154.54829407 -76.27407074
		 444.58786011 154.54829407 -76.27407074 355.41210938 154.54829407 -76.27407074 349.87091064 154.54829407 -76.27407074
		 300 154.54829407 -76.27407074 500 154.54829407 -100 444.58786011 154.54829407 -100
		 355.41210938 154.54829407 -100 300 154.54829407 -100 450.12908936 0 -100 450.12908936 149.49810791 -100
		 450.12908936 154.54829407 -100 450.12908936 200 -100 349.87091064 0 -100 349.87091064 149.49810791 -100
		 349.87091064 154.54829407 -100 349.87091064 200 -100 300 0 -73.27407074 349.87091064 0 -73.27407074
		 349.87091064 149.49810791 -73.27407074 300 149.49810791 -73.27407074 444.58786011 0 -73.27407074
		 450.12908936 0 -73.27407074 450.12908936 149.49810791 -73.27407074 444.58786011 149.49810791 -73.27407074
		 450.12908936 154.54829407 -73.27407074 444.58786011 154.54829407 -73.27407074 355.41210938 149.49810791 -73.27407074
		 355.41210938 154.54829407 -73.27407074 349.87091064 154.54829407 -73.27407074 300 154.54829407 -73.27407074
		 355.41210938 0 -73.27407074 500 0 -73.27407074 500 149.49810791 -73.27407074 500 154.54829407 -73.27407074
		 444.58786011 0 -71.27407074 450.12908936 0 -71.27407074 450.12908936 149.49810791 -71.27407074
		 444.58786011 149.49810791 -71.27407074 450.12908936 154.54829407 -71.27407074 444.58786011 154.54829407 -71.27407074
		 355.41210938 149.49810791 -71.27407074 355.41210938 154.54829407 -71.27407074 349.87091064 0 -71.27407074
		 349.87091064 149.49810791 -71.27407074 355.41210938 0 -71.27407074 349.87091064 154.54829407 -71.27407074;
	setAttr -s 142 ".ed[0:141]"  0 1 0 0 2 0 1 3 0 2 3 0 4 15 0 5 12 0 6 28 0
		 9 29 0 8 13 1 11 9 0 10 14 1 12 30 0 13 14 1 15 35 0 10 17 0 16 44 0 14 18 0 17 18 0
		 18 45 1 16 19 0 8 20 0 20 40 0 21 22 0 13 23 0 22 41 1 20 23 0 22 36 0 25 43 0 23 37 1
		 23 18 0 26 25 0 18 38 1 27 47 0 19 39 0 28 11 0 29 7 0 30 7 0 31 29 1 32 9 1 33 11 1
		 34 28 1 35 6 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 36 24 0 37 25 1 38 26 1 39 27 0
		 36 42 1 37 38 1 38 46 1 40 21 0 41 23 1 42 37 1 43 24 0 40 41 1 41 42 1 42 43 1 44 17 0
		 45 19 1 46 39 1 47 26 0 44 45 1 45 46 1 46 47 1 4 48 0 48 49 0 49 50 0 15 51 1 50 51 1
		 48 51 0 8 52 0 53 54 0 13 55 0 52 55 1 31 56 1 54 56 0 32 57 1 56 57 1 14 58 0 55 58 1
		 33 59 1 57 59 1 34 60 1 50 60 0 35 61 0 60 61 0 51 61 0 10 62 0 62 58 1 59 60 1 5 63 0
		 53 63 0 12 64 1 63 64 0 64 54 1 30 65 0 65 56 0 64 65 0 52 66 0 53 67 0 66 67 0 54 68 1
		 67 68 0 55 69 0 68 69 1 66 69 0 56 70 0 68 70 0 57 71 1 70 71 0 69 71 1 58 72 0 69 72 0
		 59 73 1 71 73 0 72 73 1 49 74 0 50 75 1 74 75 0 62 76 0 74 76 0 76 72 0 72 75 1 60 77 0
		 73 77 0 75 77 0 7 24 0 6 27 0 28 47 0 11 26 0 9 25 0 29 43 0 5 21 0 30 36 0 12 22 0
		 4 16 0 15 19 0 35 39 0;
	setAttr -s 65 -ch 260 ".fc[0:64]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 65 -19 -18 -62
		mu 0 4 4 5 6 7
		f 4 58 -25 -23 -55
		mu 0 4 8 9 10 11
		f 4 51 60 57 -48
		mu 0 4 12 13 14 15
		f 4 52 49 30 -49
		mu 0 4 16 17 18 19
		f 4 53 67 64 -50
		mu 0 4 17 20 21 18
		f 4 69 70 72 -74
		mu 0 4 22 23 24 25
		f 4 104 106 108 -110
		mu 0 4 26 27 28 29
		f 4 -109 111 113 -115
		mu 0 4 29 28 30 31
		f 4 -117 114 118 -120
		mu 0 4 32 29 31 33
		f 4 -73 87 89 -91
		mu 0 4 25 24 34 35
		f 4 14 17 -17 -11
		mu 0 4 36 7 6 37
		f 4 23 -26 -21 8
		mu 0 4 38 39 40 41
		f 4 16 -30 -24 12
		mu 0 4 37 6 39 38
		f 4 -123 124 125 126
		mu 0 4 42 43 44 32
		f 4 128 -130 -127 119
		mu 0 4 33 45 42 32
		f 4 -76 95 97 98
		mu 0 4 46 47 48 49
		f 4 100 -80 -99 101
		mu 0 4 50 51 46 49
		f 4 -38 -43 36 -36
		mu 0 4 52 53 54 55
		f 4 -44 37 -8 -39
		mu 0 4 56 53 52 57
		f 4 -45 38 -10 -40
		mu 0 4 58 56 57 59
		f 4 -41 -46 39 -35
		mu 0 4 60 61 58 59
		f 4 -47 40 -7 -42
		mu 0 4 62 61 60 63
		f 4 59 -52 -27 24
		mu 0 4 9 13 12 10
		f 4 31 -53 -29 29
		mu 0 4 6 17 16 39
		f 4 66 -54 -32 18
		mu 0 4 5 20 17 6
		f 4 25 -56 -59 -22
		mu 0 4 40 39 9 8
		f 4 28 -57 -60 55
		mu 0 4 39 16 13 9
		f 4 -61 56 48 27
		mu 0 4 14 13 16 19
		f 4 19 -63 -66 -16
		mu 0 4 64 65 5 4
		f 4 33 -64 -67 62
		mu 0 4 65 66 20 5
		f 4 -68 63 50 32
		mu 0 4 21 20 66 67
		f 4 -5 68 73 -72
		mu 0 4 68 69 22 25
		f 4 -9 74 77 -77
		mu 0 4 70 71 72 73
		f 4 43 80 -82 -79
		mu 0 4 53 56 74 51
		f 4 -13 76 83 -83
		mu 0 4 75 70 73 76
		f 4 44 84 -86 -81
		mu 0 4 56 58 77 74
		f 4 46 88 -90 -87
		mu 0 4 61 62 35 34
		f 4 -14 71 90 -89
		mu 0 4 62 68 25 35
		f 4 10 82 -93 -92
		mu 0 4 78 75 76 79
		f 4 45 86 -94 -85
		mu 0 4 58 61 34 77
		f 4 5 96 -98 -95
		mu 0 4 80 81 49 48
		f 4 42 78 -101 -100
		mu 0 4 54 53 51 50
		f 4 11 99 -102 -97
		mu 0 4 81 54 50 49
		f 4 75 105 -107 -104
		mu 0 4 47 46 28 27
		f 4 -78 102 109 -108
		mu 0 4 73 72 26 29
		f 4 79 110 -112 -106
		mu 0 4 46 51 30 28
		f 4 81 112 -114 -111
		mu 0 4 51 74 31 30
		f 4 -84 107 116 -116
		mu 0 4 76 73 29 32
		f 4 85 117 -119 -113
		mu 0 4 74 77 33 31
		f 4 -71 120 122 -122
		mu 0 4 24 23 43 42
		f 4 92 115 -126 -124
		mu 0 4 79 76 32 44
		f 4 93 127 -129 -118
		mu 0 4 77 34 45 33
		f 4 -88 121 129 -128
		mu 0 4 34 24 42 45
		f 4 6 132 -33 -132
		mu 0 4 63 60 21 67
		f 4 34 133 -65 -133
		mu 0 4 60 59 18 21
		f 4 9 134 -31 -134
		mu 0 4 59 57 19 18
		f 4 7 135 -28 -135
		mu 0 4 57 52 14 19
		f 4 35 130 -58 -136
		mu 0 4 52 55 15 14
		f 4 -37 137 47 -131
		mu 0 4 55 54 12 15
		f 4 -12 138 26 -138
		mu 0 4 54 81 10 12
		f 4 -6 136 22 -139
		mu 0 4 81 80 11 10
		f 4 4 140 -20 -140
		mu 0 4 69 68 65 64
		f 4 13 141 -34 -141
		mu 0 4 68 62 66 65
		f 4 41 131 -51 -142
		mu 0 4 62 63 67 66;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ground_mesh5";
	rename -uid "194EA14B-49E9-C19D-D2DC-C4BDFAD11104";
	setAttr ".t" -type "double3" -37.535908213909948 0 0 ;
	setAttr ".rp" -type "double3" 200 99.999999999999886 -1.1368683772161603e-013 ;
	setAttr ".sp" -type "double3" 200 99.999999999999886 -1.1368683772161603e-013 ;
createNode mesh -n "Ground_mesh5Shape" -p "Ground_mesh5";
	rename -uid "A2B538E0-43FC-E2D6-FD01-A1AF9A1D49E9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:54]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0 0 1 0 0 1 1 1 0.26666665
		 0 0.26666665 0.59937257 0.33333331 0.59937257 0.33333331 0 0.73333329 0 0.73333329
		 0.59937257 1 0.59937257 1 0 1 0.63943529 0.73333329 0.63943529 0.73333329 1 1 1 0.66666663
		 0.63943529 0.33333331 0.63943529 0.33333331 1 0.66666663 1 0.26666665 0.63943529
		 0.26666665 1 0 0 0.26666665 0 0.26666665 0.59937257 0 0.59937257 0.66666663 0 0.73333329
		 0 0.73333329 0.59937257 0.66666663 0.59937257 0.73333329 0.63943529 0.66666663 0.63943529
		 0.33333331 0.59937257 0.33333331 0.63943529 0.26666665 0.63943529 0 0.63943529 0.33333331
		 0 0.33333331 0.59937257 0.66666663 0.59937257 0.66666663 0.59937257 0.66666663 0
		 0.66666663 0 0.33333331 0 1 0 1 0.59937257 1 0.63943529 0.73333329 1 0.73333329 0.63943529
		 1 0.63943529 1 1 0.66666663 0.63943529 0.66666663 1 0.33333331 0.63943529 0.33333331
		 1 0.26666665 1 0.26666665 0.63943529 0 0.63943529 0 1 0 0 0 0.59937257 0 0.63943529
		 0 1 0 0.59937257 0 0 0.66666663 0.59937257 0.66666663 0 0.33333331 0.59937257 0.33333331
		 0 1 0 1 0.59937257;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".vt[0:65]"  100 -2.220446e-014 100 300 -2.220446e-014 100
		 100 2.220446e-014 -100 300 2.220446e-014 -100 100 0 -76.27407074 300 0 -76.27407074
		 100 200 -76.27407074 300 200 -76.27407074 270.26553345 0 -76.27407074 270.26553345 200 -76.27407074
		 129.73446655 0 -76.27407074 129.73446655 200 -76.27407074 300 149.49810791 -76.27407074
		 270.26553345 149.49810791 -76.27407074 129.73446655 149.49810791 -76.27407074 100 149.49810791 -76.27407074
		 100 0 -100 129.73446655 0 -100 129.73446655 149.49810791 -100 100 149.49810791 -100
		 270.26553345 0 -100 300 0 -100 300 149.49810791 -100 270.26553345 149.49810791 -100
		 300 200 -100 270.26553345 200 -100 129.73446655 200 -100 100 200 -100 123.78756714 200 -76.27407074
		 276.21243286 200 -76.27407074 300 154.54829407 -76.27407074 276.21243286 154.54829407 -76.27407074
		 270.26553345 154.54829407 -76.27407074 129.73446655 154.54829407 -76.27407074 123.78756714 154.54829407 -76.27407074
		 100 154.54829407 -76.27407074 300 154.54829407 -100 270.26553345 154.54829407 -100
		 129.73446655 154.54829407 -100 100 154.54829407 -100 276.21243286 0 -100 276.21243286 149.49810791 -100
		 276.21243286 154.54829407 -100 276.21243286 200 -100 123.78756714 0 -100 123.78756714 149.49810791 -100
		 123.78756714 154.54829407 -100 123.78756714 200 -100 100 0 -73.27407074 123.78756714 0 -73.27407074
		 123.78756714 149.49810791 -73.27407074 100 149.49810791 -73.27407074 270.26553345 0 -73.27407074
		 276.21243286 0 -73.27407074 276.21243286 149.49810791 -73.27407074 270.26553345 149.49810791 -73.27407074
		 276.21243286 154.54829407 -73.27407074 270.26553345 154.54829407 -73.27407074 129.73446655 149.49810791 -73.27407074
		 129.73446655 154.54829407 -73.27407074 123.78756714 154.54829407 -73.27407074 100 154.54829407 -73.27407074
		 129.73446655 0 -73.27407074 300 0 -73.27407074 300 149.49810791 -73.27407074 300 154.54829407 -73.27407074;
	setAttr -s 120 ".ed[0:119]"  0 1 0 0 2 0 1 3 0 2 3 0 4 15 0 5 12 0 6 28 0
		 9 29 0 8 13 1 11 9 0 10 14 1 12 30 0 13 14 1 15 35 0 10 17 0 16 44 0 14 18 0 17 18 0
		 18 45 1 16 19 0 8 20 0 20 40 0 21 22 0 13 23 0 22 41 1 20 23 0 22 36 0 25 43 0 23 37 1
		 23 18 0 26 25 0 18 38 1 27 47 0 19 39 0 28 11 0 29 7 0 30 7 0 31 29 1 32 9 1 33 11 1
		 34 28 1 35 6 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 36 24 0 37 25 1 38 26 1 39 27 0
		 36 42 1 37 38 1 38 46 1 40 21 0 41 23 1 42 37 1 43 24 0 40 41 1 41 42 1 42 43 1 44 17 0
		 45 19 1 46 39 1 47 26 0 44 45 1 45 46 1 46 47 1 4 48 0 48 49 0 49 50 1 15 51 1 50 51 1
		 48 51 0 8 52 0 52 53 0 53 54 1 13 55 0 54 55 1 52 55 0 31 56 1 54 56 1 32 57 1 56 57 0
		 55 57 1 14 58 0 55 58 0 33 59 1 57 59 0 58 59 1 34 60 1 50 60 1 35 61 0 60 61 0 51 61 0
		 10 62 0 49 62 0 62 58 0 58 50 1 59 60 0 5 63 0 53 63 0 12 64 1 63 64 0 64 54 1 30 65 0
		 65 56 0 64 65 0 7 24 0 6 27 0 28 47 0 11 26 0 9 25 0 29 43 0 4 16 0 15 19 0 35 39 0
		 5 21 0 30 36 0 12 22 0;
	setAttr -s 55 -ch 220 ".fc[0:54]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 65 -19 -18 -62
		mu 0 4 4 5 6 7
		f 4 58 -25 -23 -55
		mu 0 4 8 9 10 11
		f 4 51 60 57 -48
		mu 0 4 12 13 14 15
		f 4 52 49 30 -49
		mu 0 4 16 17 18 19
		f 4 53 67 64 -50
		mu 0 4 17 20 21 18
		f 4 69 70 72 -74
		mu 0 4 22 23 24 25
		f 4 75 76 78 -80
		mu 0 4 26 27 28 29
		f 4 -79 81 83 -85
		mu 0 4 29 28 30 31
		f 4 -87 84 88 -90
		mu 0 4 32 29 31 33
		f 4 -73 91 93 -95
		mu 0 4 25 24 34 35
		f 4 14 17 -17 -11
		mu 0 4 36 7 6 37
		f 4 23 -26 -21 8
		mu 0 4 38 39 40 41
		f 4 16 -30 -24 12
		mu 0 4 37 6 39 38
		f 4 -71 96 97 98
		mu 0 4 24 23 42 32
		f 4 99 -92 -99 89
		mu 0 4 33 34 24 32
		f 4 -77 101 103 104
		mu 0 4 28 27 43 44
		f 4 106 -82 -105 107
		mu 0 4 45 30 28 44
		f 4 -38 -43 36 -36
		mu 0 4 46 47 48 49
		f 4 -44 37 -8 -39
		mu 0 4 50 47 46 51
		f 4 -45 38 -10 -40
		mu 0 4 52 50 51 53
		f 4 -41 -46 39 -35
		mu 0 4 54 55 52 53
		f 4 -47 40 -7 -42
		mu 0 4 56 55 54 57
		f 4 59 -52 -27 24
		mu 0 4 9 13 12 10
		f 4 31 -53 -29 29
		mu 0 4 6 17 16 39
		f 4 66 -54 -32 18
		mu 0 4 5 20 17 6
		f 4 25 -56 -59 -22
		mu 0 4 40 39 9 8
		f 4 28 -57 -60 55
		mu 0 4 39 16 13 9
		f 4 -61 56 48 27
		mu 0 4 14 13 16 19
		f 4 19 -63 -66 -16
		mu 0 4 58 59 5 4
		f 4 33 -64 -67 62
		mu 0 4 59 60 20 5
		f 4 -68 63 50 32
		mu 0 4 21 20 60 61
		f 4 -5 68 73 -72
		mu 0 4 62 63 22 25
		f 4 -9 74 79 -78
		mu 0 4 64 65 26 29
		f 4 43 82 -84 -81
		mu 0 4 47 50 31 30
		f 4 -13 77 86 -86
		mu 0 4 66 64 29 32
		f 4 44 87 -89 -83
		mu 0 4 50 52 33 31
		f 4 46 92 -94 -91
		mu 0 4 55 56 35 34
		f 4 -14 71 94 -93
		mu 0 4 56 62 25 35
		f 4 10 85 -98 -96
		mu 0 4 67 66 32 42
		f 4 45 90 -100 -88
		mu 0 4 52 55 34 33
		f 4 5 102 -104 -101
		mu 0 4 68 69 44 43
		f 4 42 80 -107 -106
		mu 0 4 48 47 30 45
		f 4 11 105 -108 -103
		mu 0 4 69 48 45 44
		f 4 6 110 -33 -110
		mu 0 4 57 54 21 61
		f 4 34 111 -65 -111
		mu 0 4 54 53 18 21
		f 4 9 112 -31 -112
		mu 0 4 53 51 19 18
		f 4 7 113 -28 -113
		mu 0 4 51 46 14 19
		f 4 35 108 -58 -114
		mu 0 4 46 49 15 14
		f 4 4 115 -20 -115
		mu 0 4 63 62 59 58
		f 4 13 116 -34 -116
		mu 0 4 62 56 60 59
		f 4 41 109 -51 -117
		mu 0 4 56 57 61 60
		f 4 -37 118 47 -109
		mu 0 4 49 48 12 15
		f 4 -12 119 26 -119
		mu 0 4 48 69 10 12
		f 4 -6 117 22 -120
		mu 0 4 69 68 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "singlewall";
	rename -uid "A6189E97-47D8-986C-4155-55A9A64AAC9A";
	setAttr ".rp" -type "double3" -247.61190795898437 -2.2204460492503131e-014 100 ;
	setAttr ".sp" -type "double3" -247.61190795898437 -2.2204460492503131e-014 100 ;
createNode mesh -n "singlewallShape" -p "singlewall";
	rename -uid "35E48934-4574-B085-AD94-8EBE70AFCF41";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:10]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0 0.1 1 0.1 1 0.5
		 0 0.5 0 0 1 0 1 0.1 0 0.1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0 0.1 1 0.1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -247.61190796 200 -76.27406311 -47.61190796 200 -76.27406311
		 -247.61190796 20 -76.27406311 -47.61190796 20 -76.27406311 -247.61190796 0 -73.27406311
		 -47.61190796 0 -73.27406311 -47.61190796 20 -73.27406311 -247.61190796 20 -73.27406311
		 -247.61190796 200 -99.97661591 -47.61190796 200 -99.97661591 -247.61190796 -2.220446e-014 100
		 -47.61190796 -2.220446e-014 100 -247.61190796 2.220446e-014 -100 -47.61190796 2.220446e-014 -100
		 -247.61190796 20 -99.99766541 -47.61190796 20 -99.99766541;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 0 0 3 1 0 2 3 0 4 5 0 3 6 0 5 6 0
		 2 7 0 7 6 0 4 7 0 0 8 0 1 9 0 8 9 0 10 11 0 10 12 0 11 13 0 12 13 0 12 14 0 13 15 0
		 14 8 0 15 9 0 14 15 1 2 14 0 7 14 0 4 12 0 3 15 0 5 13 0 6 15 0;
	setAttr -s 11 -ch 44 ".fc[0:10]" -type "polyFaces" 
		f 4 3 2 -1 -2
		mu 0 4 0 1 2 3
		f 4 4 6 -9 -10
		mu 0 4 4 5 6 7
		f 4 -4 7 8 -6
		mu 0 4 1 0 7 6
		f 4 0 11 -13 -11
		mu 0 4 3 2 8 9
		f 4 13 15 -17 -15
		mu 0 4 10 11 12 13
		f 4 17 21 -19 -17
		mu 0 4 14 16 17 15
		f 4 -22 19 12 -21
		mu 0 4 17 16 9 8
		f 4 1 10 -20 -23
		mu 0 4 0 3 9 16
		f 4 9 23 -18 -25
		mu 0 4 4 7 16 14
		f 4 -3 25 20 -12
		mu 0 4 2 1 17 8
		f 4 -7 26 18 -28
		mu 0 4 6 5 15 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "corner";
	rename -uid "B9A79BCE-42E8-0C81-0734-79B3D4DEE189";
	setAttr ".rp" -type "double3" -247.61190795898437 -2.2204460492503131e-014 100 ;
	setAttr ".sp" -type "double3" -247.61190795898437 -2.2204460492503131e-014 100 ;
createNode mesh -n "cornerShape" -p "corner";
	rename -uid "860F5FD8-46EA-3DDF-CA98-1FBC480EB029";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:20]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0.1 1 0.1 1 0.5 0 0.5 0 0 1 0 1 0.1 0 0.1 1 1 0 1 0 0 0 0.1 1 0.1 1 0 0 0.1 1 0.1
		 1 0.5 0 0.5 0 0 1 0 1 0.1 0 0.1 1 1 0 1 0 0 0 0.1 1 0.1 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -447.61190796 -2.220446e-014 100 -247.61190796 -2.220446e-014 100
		 -247.61190796 2.220446e-014 -100 -447.61190796 2.220446e-014 -100 -447.61190796 200 -76.27406311
		 -247.61190796 200 -76.27406311 -447.61190796 20 -76.27406311 -247.61190796 20 -76.27406311
		 -447.61190796 0 -73.27406311 -247.61190796 0 -73.27406311 -247.61190796 20 -73.27406311
		 -447.61190796 20 -73.27406311 -447.61190796 200 -99.97661591 -247.61190796 200 -99.97661591
		 -447.61190796 2.220446e-014 -100 -247.61190796 2.220446e-014 -100 -447.61190796 20 -99.99766541
		 -247.61190796 20 -99.99766541 -423.88598633 200 100 -423.88598633 200 -100 -423.88598633 20 100
		 -423.88598633 20 -100 -420.88598633 -4.4408921e-014 100 -420.88598633 -4.4408921e-014 -100
		 -420.88598633 20 -100 -420.88598633 20 100 -447.58853149 200 100 -447.58853149 200 -100
		 -447.61190796 -2.220446e-014 100 -447.61190796 -2.220446e-014 -100 -447.60955811 20 100
		 -447.60955811 20 -100;
	setAttr -s 54 ".ed[0:53]"  0 1 0 0 3 0 1 2 0 3 2 0 4 5 0 6 4 0 7 5 0
		 6 7 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0 4 12 0 5 13 0 12 13 0 14 15 0 14 16 0
		 15 17 0 16 12 0 17 13 0 16 17 1 6 16 0 11 16 0 8 14 0 7 17 0 9 15 0 10 17 0 18 19 0
		 20 18 0 21 19 0 20 21 0 22 23 0 21 24 0 23 24 0 20 25 0 25 24 0 22 25 0 18 26 0 19 27 0
		 26 27 0 28 29 0 28 30 0 29 31 0 30 26 0 31 27 0 30 31 1 20 30 0 25 30 0 22 28 0 21 31 0
		 23 29 0 24 31 0;
	setAttr -s 21 -ch 84 ".fc[0:20]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 7 6 -5 -6
		mu 0 4 4 5 6 7
		f 4 8 10 -13 -14
		mu 0 4 8 9 10 11
		f 4 -8 11 12 -10
		mu 0 4 5 4 11 10
		f 4 4 15 -17 -15
		mu 0 4 7 6 12 13
		f 4 18 22 -20 -18
		mu 0 4 14 15 16 17
		f 4 -23 20 16 -22
		mu 0 4 16 15 13 12
		f 4 5 14 -21 -24
		mu 0 4 4 7 13 15
		f 4 13 24 -19 -26
		mu 0 4 8 11 15 14
		f 4 -7 26 21 -16
		mu 0 4 6 5 16 12
		f 4 -11 27 19 -29
		mu 0 4 10 9 17 16
		f 4 32 31 -30 -31
		mu 0 4 18 19 20 21
		f 4 33 35 -38 -39
		mu 0 4 22 23 24 25
		f 4 -33 36 37 -35
		mu 0 4 19 18 25 24
		f 4 29 40 -42 -40
		mu 0 4 21 20 26 27
		f 4 43 47 -45 -43
		mu 0 4 28 29 30 31
		f 4 -48 45 41 -47
		mu 0 4 30 29 27 26
		f 4 30 39 -46 -49
		mu 0 4 18 21 27 29
		f 4 38 49 -44 -51
		mu 0 4 22 25 29 28
		f 4 -32 51 46 -41
		mu 0 4 20 19 30 26
		f 4 -36 52 44 -54
		mu 0 4 24 23 31 30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wallthree";
	rename -uid "42B6230C-47DC-5A7F-D20A-FAA65CFD2F87";
	setAttr ".rp" -type "double3" -247.61190795898437 -2.2204460492503131e-014 100 ;
	setAttr ".sp" -type "double3" -247.61190795898437 -2.2204460492503131e-014 100 ;
createNode mesh -n "wallthreeShape" -p "wallthree";
	rename -uid "1F0BBC17-49E8-C948-8E21-B9BAD52E61E7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:30]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0 0.1 1 0.1 1 0.5
		 0 0.5 0 0 1 0 1 0.1 0 0.1 1 1 0 1 0 0 0 0.1 1 0.1 1 0 0 0.1 1 0.1 1 0.5 0 0.5 0 0
		 1 0 1 0.1 0 0.1 1 1 0 1 0 0 0 0.1 1 0.1 1 0 0 0.1 1 0.1 1 0.5 0 0.5 0 0 1 0 1 0.1
		 0 0.1 1 1 0 1 0 0 0 0.1 1 0.1 1 0 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 46 ".vt[0:45]"  -423.88598633 200 300 -423.88598633 200 100
		 -423.88598633 20 300 -423.88598633 20 100 -420.88598633 0 300 -420.88598633 0 100
		 -420.88598633 20 100 -420.88598633 20 300 -447.58853149 200 300 -447.58853149 200 100
		 -447.61190796 2.220446e-014 300 -447.61190796 2.220446e-014 100 -447.60955811 20 300
		 -447.60955811 20 100 -247.61190796 200 276.27404785 -447.61190796 200 276.27404785
		 -247.61190796 20 276.27404785 -447.61190796 20 276.27404785 -247.61190796 -4.4408921e-014 273.27404785
		 -447.61190796 -4.4408921e-014 273.27404785 -447.61190796 20 273.27404785 -247.61190796 20 273.27404785
		 -247.61190796 200 299.97662354 -447.61190796 200 299.97662354 -247.61190796 -2.220446e-014 300
		 -447.61190796 -2.220446e-014 300 -247.61190796 20 299.99768066 -447.61190796 20 299.99768066
		 -271.33782959 200 100 -271.33782959 200 300 -271.33782959 20 100 -271.33782959 20 300
		 -274.33782959 -4.4408921e-014 100 -274.33782959 -4.4408921e-014 300 -274.33782959 20 300
		 -274.33782959 20 100 -247.63528442 200 100 -247.63528442 200 300 -247.61190796 -2.220446e-014 100
		 -247.61190796 -2.220446e-014 300 -247.61424255 20 100 -247.61424255 20 300 -247.61190796 -2.220446e-014 300
		 -247.61190796 -2.220446e-014 100 -447.61190796 2.220446e-014 100 -447.61190796 2.220446e-014 300;
	setAttr -s 79 ".ed[0:78]"  0 1 0 2 0 0 3 1 0 2 3 0 4 5 0 3 6 0 5 6 0
		 2 7 0 7 6 0 4 7 0 0 8 0 1 9 0 8 9 0 10 11 0 10 12 0 11 13 0 12 8 0 13 9 0 12 13 1
		 2 12 0 7 12 0 4 10 0 3 13 0 5 11 0 6 13 0 14 15 0 16 14 0 17 15 0 16 17 0 18 19 0
		 17 20 0 19 20 0 16 21 0 21 20 0 18 21 0 14 22 0 15 23 0 22 23 0 24 25 0 24 26 0 25 27 0
		 26 22 0 27 23 0 26 27 1 16 26 0 21 26 0 18 24 0 17 27 0 19 25 0 20 27 0 28 29 0 30 28 0
		 31 29 0 30 31 0 32 33 0 31 34 0 33 34 0 30 35 0 35 34 0 32 35 0 28 36 0 29 37 0 36 37 0
		 38 39 0 38 40 0 39 41 0 40 36 0 41 37 0 40 41 1 30 40 0 35 40 0 32 38 0 31 41 0 33 39 0
		 34 41 0 42 43 0 42 45 0 43 44 0 45 44 0;
	setAttr -s 31 -ch 124 ".fc[0:30]" -type "polyFaces" 
		f 4 3 2 -1 -2
		mu 0 4 0 1 2 3
		f 4 4 6 -9 -10
		mu 0 4 4 5 6 7
		f 4 -4 7 8 -6
		mu 0 4 1 0 7 6
		f 4 0 11 -13 -11
		mu 0 4 3 2 8 9
		f 4 14 18 -16 -14
		mu 0 4 10 11 12 13
		f 4 -19 16 12 -18
		mu 0 4 12 11 9 8
		f 4 1 10 -17 -20
		mu 0 4 0 3 9 11
		f 4 9 20 -15 -22
		mu 0 4 4 7 11 10
		f 4 -3 22 17 -12
		mu 0 4 2 1 12 8
		f 4 -7 23 15 -25
		mu 0 4 6 5 13 12
		f 4 28 27 -26 -27
		mu 0 4 14 15 16 17
		f 4 29 31 -34 -35
		mu 0 4 18 19 20 21
		f 4 -29 32 33 -31
		mu 0 4 15 14 21 20
		f 4 25 36 -38 -36
		mu 0 4 17 16 22 23
		f 4 39 43 -41 -39
		mu 0 4 24 25 26 27
		f 4 -44 41 37 -43
		mu 0 4 26 25 23 22
		f 4 26 35 -42 -45
		mu 0 4 14 17 23 25
		f 4 34 45 -40 -47
		mu 0 4 18 21 25 24
		f 4 -28 47 42 -37
		mu 0 4 16 15 26 22
		f 4 -32 48 40 -50
		mu 0 4 20 19 27 26
		f 4 53 52 -51 -52
		mu 0 4 28 29 30 31
		f 4 54 56 -59 -60
		mu 0 4 32 33 34 35
		f 4 -54 57 58 -56
		mu 0 4 29 28 35 34
		f 4 50 61 -63 -61
		mu 0 4 31 30 36 37
		f 4 64 68 -66 -64
		mu 0 4 38 39 40 41
		f 4 -69 66 62 -68
		mu 0 4 40 39 37 36
		f 4 51 60 -67 -70
		mu 0 4 28 31 37 39
		f 4 59 70 -65 -72
		mu 0 4 32 35 39 38
		f 4 -53 72 67 -62
		mu 0 4 30 29 40 36
		f 4 -57 73 65 -75
		mu 0 4 34 33 41 40
		f 4 75 77 -79 -77
		mu 0 4 42 43 44 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E4D0EBA1-4FEC-ACE5-1F38-659A81F53205";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "572AC329-4719-F172-F499-1FB7F91629E5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "19F82AC6-4B2D-1467-D03A-7CAC7D119282";
createNode displayLayerManager -n "layerManager";
	rename -uid "6E55D969-4925-9920-F3BC-D0BA9DB8A3DD";
createNode displayLayer -n "defaultLayer";
	rename -uid "28CCB12B-4432-DEEF-330C-26BAE1FA02F3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CA217761-4B8D-A1B9-C63B-6E89764C07D2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7915319F-419C-0FF6-FE09-8BA0B23D8C8D";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2FC8F05A-4D88-235B-FF9B-E18511C301A1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 790\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 789\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 789\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 790\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1586\n                -height 717\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1586\n            -height 717\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1586\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1586\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "028B8A16-4A14-FF98-A5C1-2C8466AF5EFA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId33";
	rename -uid "14645CAA-4F40-0B46-A956-D4B7AADEC8F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "FD0F9127-4AAF-66E4-A87D-AB8FEA6ED515";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "72CE4DA6-4C7F-4783-054C-E78DBB03970E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "73548BC8-4943-D7B6-4895-D295ACB748AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	rename -uid "906AB6AC-423B-F08B-9FFE-B5BFF9504AA0";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId33.id" "Ground_mesh4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ground_mesh4Shape.iog.og[0].gco";
connectAttr "groupId34.id" "Ground_mesh5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ground_mesh5Shape.iog.og[0].gco";
connectAttr "groupId35.id" "singlewallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "singlewallShape.iog.og[0].gco";
connectAttr "groupId36.id" "cornerShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cornerShape.iog.og[0].gco";
connectAttr "groupId37.id" "wallthreeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "wallthreeShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Ground_mesh4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ground_mesh5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "singlewallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cornerShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "wallthreeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
// End of Walls_Floors.0002.ma
