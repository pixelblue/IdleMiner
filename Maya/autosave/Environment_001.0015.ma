//Maya ASCII 2026 scene
//Name: Environment_001.0015.ma
//Last modified: Fri, Aug 07, 2026 03:00:33 PM
//Codeset: 1252
file -rdi 1 -ns "Rock_001" -rfn "Rock_001RN" -op "v=0;" -typ "mayaAscii" "C:/Projects/Repositories/IdleMiner/Maya//assets/Rock_001.ma";
file -rdi 1 -ns "Rock_002" -rfn "Rock_002RN" -op "v=0;" -typ "mayaAscii" "C:/Projects/Repositories/IdleMiner/Maya//assets/Rock_002.ma";
file -rdi 1 -ns "Rock_003" -rfn "Rock_003RN" -op "v=0;" -typ "mayaAscii" "C:/Projects/Repositories/IdleMiner/Maya//assets/Rock_003.ma";
file -r -ns "Rock_001" -dr 1 -rfn "Rock_001RN" -op "v=0;" -typ "mayaAscii" "C:/Projects/Repositories/IdleMiner/Maya//assets/Rock_001.ma";
file -r -ns "Rock_002" -dr 1 -rfn "Rock_002RN" -op "v=0;" -typ "mayaAscii" "C:/Projects/Repositories/IdleMiner/Maya//assets/Rock_002.ma";
file -r -ns "Rock_003" -dr 1 -rfn "Rock_003RN" -op "v=0;" -typ "mayaAscii" "C:/Projects/Repositories/IdleMiner/Maya//assets/Rock_003.ma";
requires maya "2026";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiUtility"
		 -nodeType "aiCurvature" -nodeType "aiImagerDenoiserOidn" "mtoa" "5.5.4.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202510291147-60ec9eda33";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26200)";
fileInfo "UUID" "8BA0E0BF-47BA-1D96-EE92-CB9E3212E8EA";
fileInfo "exportedFrom" "C:/Projects/Repositories/IdleMiner/Maya/scenes/Environment_001.ma";
createNode transform -s -n "persp";
	rename -uid "8A1C0BF6-439D-DB89-079C-3A972C2B0F05";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.82856253428685889 1.0991678744252846 -2.1636139093364299 ;
	setAttr ".r" -type "double3" -19.53835275493061 -4162.9999999653437 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "138A3AFC-4C28-597D-27E9-629031435DDA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2.1338220141945143;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.33535077462857155 -0.12429043650627136 -0.76438414747427963 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "75A9882D-41C4-4383-213C-6D99BEF3D2E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B86EF6F2-41FB-BAFC-E6ED-AD83826D1957";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B32C7183-4418-DBE8-9612-36A74F825178";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1DDBAB1E-496C-20B3-AF3C-449358BA172C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "259F4A5D-4AE6-A59A-B525-DFB7BF3DE4A4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2B83859A-4AAE-E577-DA98-13B668486591";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Ground";
	rename -uid "95F887DA-45F4-402A-6236-A3AE66BB5A89";
	setAttr ".v" no;
createNode transform -n "outer" -p "Ground";
	rename -uid "9F5C65B3-4699-793C-372A-9E9D1575CCC6";
createNode mesh -n "outerShape" -p "outer";
	rename -uid "5A3B5924-4448-9FF0-34A9-668625ECDC17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 32 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.375 0.4375 0.4375
		 0.4375 0.4375 0.5 0.375 0.5 0.375 0.34375 0.4375 0.34375 0.4375 0.375 0.375 0.375
		 0.5 0.5 0.5 0.4375 0.53125 0.4375 0.53125 0.5 0.375 0.25 0.4375 0.25 0.4375 0.3125
		 0.375 0.3125 0.53125 0.25 0.53125 0.3125 0.5 0.3125 0.5 0.25 0.375 0.40625 0.4375
		 0.40625 0.5 0.40625 0.53125 0.40625 0.46875 0.25 0.46875 0.3125 0.46875 0.34375 0.46875
		 0.375 0.46875 0.40625 0.46875 0.4375 0.46875 0.5 0.625 0.3125 0.5625 0.3125 0.5625
		 0.25 0.625 0.25 0.5625 0.375 0.5625 0.34375 0.625 0.34375 0.625 0.375 0.625 0.4375
		 0.5625 0.4375 0.5625 0.40625 0.625 0.40625 0.5625 0.5 0.625 0.5 0.53125 0.34375 0.5
		 0.34375 0.53125 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  -37.5 0 37.5 37.5 0 37.5 -37.5 0 -37.5 37.5 0 -37.5
		 -37.5 0 0 37.5 0 0 0 0 37.5 0 0 -37.5 -37.5 0 18.75 0 0 18.75 37.5 0 18.75 -37.5 0 -18.75
		 0 0 -18.75 37.5 0 -18.75 -18.75 0 37.5 -18.75 0 18.75 -18.75 0 0 -18.75 0 -18.75
		 -18.75 0 -37.5 18.75 0 37.5 18.75 0 18.75 18.75 0 0 18.75 0 -18.75 18.75 0 -37.5
		 -37.5 0 9.375 -18.75 0 9.375 0 0 9.375 18.75 0 9.375 37.5 0 9.375 -9.375 0 37.5 -9.375 0 18.75
		 -9.375 0 9.375 -9.375 0 0 -9.375 0 -18.75 -9.375 0 -37.5 9.375 0 37.5 9.375 0 18.75
		 9.375 0 9.375 9.375 0 0 9.375 0 -18.75 9.375 0 -37.5 -37.5 0 -9.375 -18.75 0 -9.375
		 -9.375 0 -9.375 0 0 -9.375 9.375 0 -9.375 18.75 0 -9.375 37.5 0 -9.375;
	setAttr -s 80 ".ed[0:79]"  0 14 0 2 18 0 0 8 0 1 10 0 4 41 0 5 47 0
		 4 16 1 6 35 0 7 40 0 6 9 1 8 24 0 9 26 1 10 28 0 8 15 1 9 36 1 11 2 0 12 7 1 13 3 0
		 11 17 1 12 39 1 14 29 0 15 30 1 16 32 1 17 33 1 18 34 0 14 15 1 15 25 1 16 42 1 17 18 1
		 19 1 0 20 10 1 21 5 1 22 13 1 23 3 0 19 20 1 20 27 1 21 46 1 22 23 1 24 4 0 25 16 1
		 27 21 1 28 5 0 24 25 1 25 31 1 26 37 0 27 28 1 29 6 0 30 9 1 31 26 0 33 12 1 34 7 0
		 29 30 1 30 31 1 31 32 0 32 43 0 33 34 1 35 19 0 36 20 1 37 27 1 38 21 1 39 22 1 40 23 0
		 35 36 1 36 37 1 37 38 0 38 45 0 39 40 1 41 11 0 42 17 1 43 33 1 44 12 1 45 39 1 46 22 1
		 47 13 0 41 42 1 42 43 1 43 44 0 44 45 0 45 46 1 46 47 1;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 18 28 -2 -16
		mu 0 4 0 1 2 3
		f 4 42 39 -7 -39
		mu 0 4 4 5 6 7
		f 4 -17 19 66 -9
		mu 0 4 8 9 10 11
		f 4 0 25 -14 -3
		mu 0 4 12 13 14 15
		f 4 62 -15 -10 7
		mu 0 4 16 17 18 19
		f 4 74 68 -19 -68
		mu 0 4 20 21 1 0
		f 4 77 71 -20 -71
		mu 0 4 22 23 10 9
		f 4 -26 20 51 -22
		mu 0 4 14 13 24 25
		f 4 -40 43 53 -23
		mu 0 4 6 5 26 27
		f 4 -69 75 69 -24
		mu 0 4 1 21 28 29
		f 4 -29 23 55 -25
		mu 0 4 2 1 29 30
		f 4 -31 -35 29 3
		mu 0 4 31 32 33 34
		f 4 -41 45 41 -32
		mu 0 4 35 36 37 38
		f 4 -33 -73 79 73
		mu 0 4 39 40 41 42
		f 4 -38 32 17 -34
		mu 0 4 43 40 39 44
		f 4 13 26 -43 -11
		mu 0 4 15 14 5 4
		f 4 52 -44 -27 21
		mu 0 4 25 26 5 14
		f 4 63 -45 -12 14
		mu 0 4 17 45 46 18
		f 4 -46 -36 30 12
		mu 0 4 37 36 32 31
		f 4 -52 46 9 -48
		mu 0 4 25 24 19 18
		f 4 -49 -53 47 11
		mu 0 4 46 26 25 18
		f 4 -70 76 70 -50
		mu 0 4 29 28 22 9
		f 4 -56 49 16 -51
		mu 0 4 30 29 9 8
		f 4 34 -58 -63 56
		mu 0 4 33 32 17 16
		f 4 -59 -64 57 35
		mu 0 4 36 45 17 32
		f 4 -65 58 40 -60
		mu 0 4 47 45 36 35
		f 4 78 72 -61 -72
		mu 0 4 23 41 40 10
		f 4 -67 60 37 -62
		mu 0 4 11 10 40 43
		f 4 6 27 -75 -5
		mu 0 4 7 6 21 20
		f 4 -76 -28 22 54
		mu 0 4 28 21 6 27
		f 4 36 -79 -66 59
		mu 0 4 35 41 23 47
		f 4 -80 -37 31 5
		mu 0 4 42 41 35 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "Inner_001" -p "Ground";
	rename -uid "C9464633-48D3-9039-FC91-C9A2A5F2B37D";
createNode transform -n "inner_001" -p "Inner_001";
	rename -uid "223038A6-4913-1C68-CE62-61AD01E67FD1";
createNode mesh -n "inner_001Shape" -p "inner_001";
	rename -uid "B28A4656-4A9F-C6F4-B100-2D8CF95A66C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[0:49]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.49483645 0.38016355
		 0.48507363 0.37577787 0.50516355 0.38016355 0.51507521 0.37605873 0.5 0.36983645
		 0.46875 0.34375 0.5 0.359375 0.53125 0.34375 0.53125 0.40625 0.50363415 0.38737619
		 0.5 0.40625 0.46875 0.40625 0.48749548 0.37835124 0.512034 0.37123021 0.5 0.34375
		 0.53125 0.375 0.46875 0.375 0.48799509 0.37118179 0.5114038 0.37932774 0.49596062
		 0.38672888 0.5 0.38016355 0.4997974 0.38705254 0.4979803 0.38867694 0.48653436 0.37347984
		 0.48628455 0.37706456 0.4997974 0.38705254 0.49596062 0.38672888 0.48749548 0.37835124
		 0.48799509 0.37118179 0.512034 0.37123021 0.5114038 0.37932774 0.50516355 0.38016355
		 0.5 0.359375 0.50363415 0.38737619 0.4877508 0.37468734 0.48782641 0.37360227 0.51276445
		 0.37018561 0.51553375 0.37602872 0.51541597 0.37669474 0.50355053 0.38781059 0.50355065
		 0.38780999 0.49540779 0.38712549 0.51534218 0.37677985 0.49828959 0.38750908 0.5
		 0.35874879 0.51236451 0.37075749 0.5 0.3592082 0.49121261 0.36849213 0.50355107 0.38765493
		 0.49562782 0.38696766 0.49888057 0.3880499 0.4931336 0.36658245;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 51 ".vt[0:50]"  0 0 9.375 9.375 0 9.375 9.375 0 0 -9.375 0 0
		 -9.375 0 9.375 0 0 -9.375 -9.375 0 -9.375 9.375 0 -9.375 -0.089917958 0.094651304 0.24035148
		 0.19090119 0.12549767 -0.20277613 -0.17520909 0.059759118 -0.16102579 -0.22789706 0.059759118 -0.096815102
		 -0.59648395 0 0.014554977 -0.2848506 0.094651304 0.12822093 0.13735075 0.12668377 0.17559171
		 0.53241354 0.087890416 -0.076372407 0.25887361 0.12549767 -0.038105875 0.16389081 -0.084102526 -0.18224727
		 -0.09302935 0.03570082 -0.21221808 -0.46234459 0.15094057 0.067932658 -0.46634555 0.15094057 -0.053338774
		 -0.00071146415 -0.3141211 -0.081054546 -0.045891687 -0.31412107 -0.18876791 -0.12502111 -0.23912595 -0.15148599
		 -0.080943167 -0.23912597 -0.081054538 -0.15987885 -0.23912595 -0.10900492 -0.15789543 -0.23912592 0.10972075
		 -0.00071146275 -0.23912597 0.079408884 0.15567413 -0.23912595 0.081640109 0.15555981 -0.23912594 -0.067809403
		 0.07952024 -0.23912594 -0.081054546 -0.028930359 -0.23912594 0.18390498 0.11059012 -0.23912592 -0.17675328
		 -0.23905179 -0.10012978 0.0054356307 -0.15856504 -0.23912594 0.035876341 0.58376539 0 0.47627762
		 0.78308344 0 -0.074207403 0.71869498 0 -0.27226099 0.1834358 0 -0.66976231 0.43720543 0 -0.46127114
		 -0.47727743 0 -0.52985674 0.715249 0 -0.28286299 -0.17534497 -7.4505806e-09 -0.66076845
		 -0.040943835 0 0.64375949 0.39358079 0.078088939 0.2837677 -0.042197891 0.078088939 0.37633288
		 -0.33238301 -0.050609 0.26967701 0.16389576 0.069629721 -0.40139875 -0.30027092 0.09040232 -0.33961734
		 -0.083401002 0.04106503 -0.39154899 -0.45445305 0 0.46004277;
	setAttr -s 100 ".ed[0:99]"  0 43 0 0 1 0 1 2 0 4 3 0 4 0 0 6 5 0 3 6 0
		 2 7 0 5 7 0 15 37 0 9 18 0 17 9 0 11 33 0 12 20 0 13 19 0 14 16 0 16 17 0 15 14 0
		 1 35 0 8 14 0 8 13 0 2 36 0 5 38 0 9 16 0 11 10 0 18 10 0 19 12 0 20 11 0 19 20 0
		 16 15 0 18 22 0 21 22 0 10 23 0 22 23 0 23 24 0 24 21 0 11 25 0 13 26 0 25 34 0 26 27 0
		 27 24 0 24 25 0 14 28 0 16 29 0 28 29 0 17 30 0 29 30 0 30 27 0 27 28 0 8 31 0 27 31 0
		 31 28 0 31 26 0 25 23 0 21 30 0 9 32 0 32 22 0 30 32 0 33 13 0 34 26 0 20 33 0 33 34 0
		 34 27 0 4 12 0 3 12 0 6 40 0 35 44 0 36 15 0 37 7 0 38 39 0 39 47 0 40 48 0 35 36 0
		 36 37 0 37 41 0 41 39 0 38 42 0 42 40 0 40 12 0 43 45 0 35 43 0 43 50 0 44 14 0 45 8 0
		 15 44 0 44 45 0 45 46 0 46 12 0 47 9 0 48 10 0 15 47 0 47 49 0 49 48 0 48 20 0 50 12 0
		 13 46 0 46 50 0 18 49 0 49 42 0 38 47 0;
	setAttr -s 192 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[166:191]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr -s 50 -ch 192 ".fc[0:49]" -type "polyFaces" 
		f 4 31 33 34 35
		mu 0 4 20 25 26 0
		f 4 38 62 40 41
		mu 0 4 27 35 4 0
		f 4 97 92 89 -26
		mu 0 4 22 50 49 19
		f 4 44 46 47 48
		mu 0 4 29 30 31 4
		f 3 -49 50 51
		mu 0 3 29 4 32
		f 4 84 -67 72 67
		mu 0 4 3 45 36 37
		f 4 80 -1 1 18
		mu 0 4 36 44 14 7
		f 3 73 -10 -68
		mu 0 3 37 38 3
		f 3 -53 -51 -40
		mu 0 3 28 32 4
		f 3 -12 -17 -24
		mu 0 3 9 2 18
		f 3 -42 -35 -54
		mu 0 3 27 0 26
		f 3 28 -14 -27
		mu 0 3 23 24 1
		f 3 -16 -18 -30
		mu 0 3 18 13 3
		f 4 -48 -55 -36 -41
		mu 0 4 4 31 20 0
		f 4 56 -32 54 57
		mu 0 4 33 25 20 31
		f 3 -28 60 -13
		mu 0 3 12 24 34
		f 4 29 90 88 23
		mu 0 4 18 3 48 9
		f 4 25 32 -34 -31
		mu 0 4 21 19 26 25
		f 4 12 61 -39 -37
		mu 0 4 12 34 35 27
		f 4 15 43 -45 -43
		mu 0 4 13 18 30 29
		f 4 16 45 -47 -44
		mu 0 4 18 2 31 30
		f 4 19 42 -52 -50
		mu 0 4 6 13 29 32
		f 4 -21 49 52 -38
		mu 0 4 17 6 32 28
		f 4 -25 36 53 -33
		mu 0 4 19 12 27 26
		f 4 10 30 -57 -56
		mu 0 4 9 21 25 33
		f 4 11 55 -58 -46
		mu 0 4 2 9 33 31
		f 4 -61 -29 -15 -59
		mu 0 4 34 24 23 17
		f 4 -62 58 37 -60
		mu 0 4 35 34 17 28
		f 3 -63 59 39
		mu 0 3 4 35 28
		f 5 -64 4 0 81 94
		mu 0 5 1 5 14 44 51
		f 3 -65 -4 63
		mu 0 3 1 16 5
		f 4 93 27 24 -90
		mu 0 4 49 24 12 19
		f 4 -73 -19 2 21
		mu 0 4 37 36 7 15
		f 4 7 -69 -74 -22
		mu 0 4 15 8 38 37
		f 6 -76 -75 68 -9 22 69
		mu 0 6 40 42 38 8 10 39
		f 5 65 -78 -77 -23 -6
		mu 0 5 11 41 43 39 10
		f 4 -79 -66 -7 64
		mu 0 4 1 41 11 16
		f 4 85 -80 -81 66
		mu 0 4 45 46 44 36
		f 4 96 -82 79 86
		mu 0 4 47 51 44 46
		f 3 -83 -85 17
		mu 0 3 13 45 3
		f 4 -20 -84 -86 82
		mu 0 4 13 6 46 45
		f 4 95 -87 83 20
		mu 0 4 17 47 46 6
		f 5 -91 9 74 75 70
		mu 0 5 48 3 38 42 40
		f 4 98 77 71 -93
		mu 0 4 50 43 41 49
		f 4 13 -94 -72 78
		mu 0 4 1 24 49 41
		f 4 -88 -96 14 26
		mu 0 4 1 47 17 23
		f 3 -95 -97 87
		mu 0 3 1 51 47
		f 4 91 -98 -11 -89
		mu 0 4 48 50 22 9
		f 3 99 -71 -70
		mu 0 3 39 48 40
		f 4 76 -99 -92 -100
		mu 0 4 39 43 50 48;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "Rock_004" -p "Inner_001";
	rename -uid "692970F1-410B-8D2C-4F77-A3BB9F67C673";
	setAttr ".t" -type "double3" 1.1959593373523798 0.15130447991662635 -1.50454969430514 ;
	setAttr ".r" -type "double3" 0 -105.74714618049505 0 ;
	setAttr ".s" -type "double3" 2.8348840247610756 2.8348840247610756 2.8348840247610756 ;
	setAttr ".rp" -type "double3" 0 -0.15130447991662666 0 ;
	setAttr ".sp" -type "double3" 0 -0.15130447991662666 0 ;
createNode mesh -n "Rock_Shape4" -p "Rock_004";
	rename -uid "FA7D58F6-4C92-7921-D490-30873B6B50B4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[3]" "f[8]" "f[14:15]" "f[20:21]" "f[24:28]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[10]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[5]" "f[9]" "f[16]" "f[23]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[7]" "f[19]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[6]" "f[11:12]" "f[17:18]" "f[22]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25 0.25 0.375 0.375 0.625 0.375 0.75 0.25 0.625 0.875
		 0.75 0 0.25 0 0.375 0.875 0.5 0 0.5 1 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.75 0.5 0.875
		 0.1875 0 0.375 0.8125 0.1875 0.25 0.375 0.4375 0.5 0.4375 0.625 0.4375 0.8125 0.25
		 0.625 0.8125 0.8125 0 0.5 0.8125 0.45137638 0.8125 0.57881033 0.91101563;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.30566287 0.34869552 -0.47624451 
		-0.26144683 0.34869552 -0.52317411 0.1060902 -0.12540205 -0.22526293 -0.047059383 
		-0.12540162 -0.27245587 0.33218247 0.15752926 0.35757247 -0.073319964 0.15752926 
		0.20561515 0.29931712 0.34869552 0.58147967 -0.21814114 0.34869552 0.37951577 0.22407418 
		-0.12540205 -0.030407634 -0.16447353 -0.12540162 -0.088881016 -0.3092947 0.34869552 
		-0.088881038 0.44846284 0.34869552 -0.22053921 0.046913963 0.34869552 -0.5465458 
		0.029515386 -0.12540211 -0.24885942 0.024774663 -0.12540211 0.10410576 0.036227793 
		0.15752926 0.32784176 0.036227766 0.34869552 0.50174236 0.069584057 0.50257611 -0.1547101 
		0.65332043 0.34869552 0.22739999 0.4191137 0.0069380729 0.22767018 0.03301407 0.0037932133 
		0.13409871 -0.11889672 0.028334189 0.05836704 -0.18215254 0.34869552 0.11301236 0.05290594 
		0.50257611 0.17351606 0.28646052 0.36174023 0.19447632 -0.13943563 0.40555686 -0.31875679;
	setAttr -s 26 ".vt[0:25]"  -0.34239772 -0.5 0.53347999 0.29286772 -0.5 0.58604962
		 -0.11884017 0.031075029 0.25233516 0.052715033 0.031074546 0.30519986 -0.37210447 -0.28585923 -0.40054581
		 0.082131624 -0.28585923 -0.23032618 -0.3352893 -0.5 -0.65136236 0.24435753 -0.5 -0.42512628
		 -0.25100359 0.031075029 0.034062043 0.1842401 0.031074546 0.099562809 0.34646598 -0.5 0.099562839
		 -0.50235951 -0.5 0.24704383 -0.052552138 -0.5 0.61223018 -0.03306257 0.031075096 0.27876753
		 -0.027752146 0.031075096 -0.11661726 -0.040581673 -0.28585923 -0.36724204 -0.040581644 -0.5 -0.56204218
		 -0.077946767 -0.67237407 0.17330334 -0.73183703 -0.5 -0.25472915 -0.46948317 -0.11716984 -0.25503176
		 -0.036981709 -0.11364703 -0.15021481 0.13318586 -0.14113736 -0.065381683 0.20404378 -0.5 -0.12659431
		 -0.059264205 -0.67237407 -0.19436942 -0.32088763 -0.51461244 -0.21784869 0.15619312 -0.56369501 0.35706523;
	setAttr -s 53 ".ed[0:52]"  0 12 0 2 13 0 4 15 0 6 16 0 0 2 0 1 3 0 2 8 0
		 3 9 0 4 6 0 5 7 0 6 18 0 7 22 0 8 19 0 9 21 0 10 1 0 11 0 0 8 14 0 9 10 0 10 17 0
		 11 8 0 12 1 0 13 3 0 14 9 0 15 5 0 16 7 0 17 11 0 12 13 0 13 14 0 14 20 0 15 16 0
		 16 23 0 17 12 0 18 11 0 19 4 0 20 15 0 21 5 0 22 10 0 23 17 0 18 19 0 19 20 0 20 21 0
		 21 22 0 22 23 0 23 24 0 8 20 0 11 19 0 24 18 0 16 24 0 24 11 0 10 25 0 25 12 0 17 25 0
		 25 1 0;
	setAttr -s 106 ".n[0:105]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 29 -ch 106 ".fc[0:28]" -type "polyFaces" 
		f 4 0 26 -2 -5
		mu 0 4 0 22 24 2
		f 4 39 34 -3 -34
		mu 0 4 32 33 26 4
		f 4 2 29 -4 -9
		mu 0 4 4 26 27 6
		f 4 3 47 46 -11
		mu 0 4 6 27 39 30
		f 4 41 -12 -10 -36
		mu 0 4 35 37 10 11
		f 4 10 38 33 8
		mu 0 4 12 29 31 13
		f 4 1 27 -17 -7
		mu 0 4 2 24 25 15
		f 4 -15 -18 -8 -6
		mu 0 4 1 19 17 3
		f 4 -26 31 -1 -16
		mu 0 4 21 28 23 8
		f 4 -20 15 4 6
		mu 0 4 14 20 0 2
		f 4 -27 20 5 -22
		mu 0 4 24 22 1 3
		f 4 -28 21 7 -23
		mu 0 4 25 24 3 16
		f 4 -35 40 35 -24
		mu 0 4 26 33 34 5
		f 4 -30 23 9 -25
		mu 0 4 27 26 5 7
		f 4 42 -31 24 11
		mu 0 4 36 38 27 7
		f 3 -32 51 50
		mu 0 3 23 28 40
		f 3 -39 32 45
		mu 0 3 31 29 20
		f 3 44 -40 -13
		mu 0 3 15 33 32
		f 4 -41 -29 22 13
		mu 0 4 34 33 25 16
		f 4 17 -37 -42 -14
		mu 0 4 17 19 37 35
		f 4 -38 -43 36 18
		mu 0 4 28 38 36 18
		f 3 -47 48 -33
		mu 0 3 30 39 21
		f 3 16 28 -45
		mu 0 3 15 25 33
		f 3 -46 19 12
		mu 0 3 31 20 14
		f 3 -48 30 43
		mu 0 3 39 27 38
		f 4 -49 -44 37 25
		mu 0 4 21 39 38 28
		f 3 -51 52 -21
		mu 0 3 23 40 9
		f 3 -52 -19 49
		mu 0 3 40 28 18
		f 3 -53 -50 14
		mu 0 3 9 40 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode mesh -n "polySurfaceShape2" -p "Rock_004";
	rename -uid "BF87A87E-43BA-1062-DEC7-20832D27D060";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0.17354107 0 0.068124101 ;
	setAttr ".pt[2]" -type "float3" 0.33576697 -0.49641553 -0.12667605 ;
	setAttr ".pt[3]" -type "float3" -0.16222586 -0.49641553 -0.19480015 ;
	setAttr ".pt[4]" -type "float3" 0.16222586 -0.78585923 0.19480015 ;
	setAttr ".pt[5]" -type "float3" -0.34205854 -0.78585923 0.43537241 ;
	setAttr ".pt[7]" -type "float3" -0.17983264 7.7715612e-16 0.24057232 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "Rock_005" -p "Inner_001";
	rename -uid "31E4405F-4ED2-196F-A6C8-FF9940633F16";
	setAttr ".t" -type "double3" 0.75883615284067185 0.15130447991662635 1.3324996565123546 ;
	setAttr ".r" -type "double3" 0 -299.56790353455597 0 ;
	setAttr ".s" -type "double3" 2.4369904841600323 2.4369904841600323 2.4369904841600323 ;
	setAttr ".rp" -type "double3" 0 -0.15130447991662666 0 ;
	setAttr ".sp" -type "double3" 0 -0.15130447991662666 0 ;
createNode mesh -n "Rock_Shape5" -p "Rock_005";
	rename -uid "58653022-45A2-2E57-4CEF-79A6D988AEB9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[3]" "f[8]" "f[14:15]" "f[20:21]" "f[24:28]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[10]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[5]" "f[9]" "f[16]" "f[23]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[7]" "f[19]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[6]" "f[11:12]" "f[17:18]" "f[22]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25 0.25 0.375 0.375 0.625 0.375 0.75 0.25 0.625 0.875
		 0.75 0 0.25 0 0.375 0.875 0.5 0 0.5 1 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.75 0.5 0.875
		 0.1875 0 0.375 0.8125 0.1875 0.25 0.375 0.4375 0.5 0.4375 0.625 0.4375 0.8125 0.25
		 0.625 0.8125 0.8125 0 0.5 0.8125 0.45137638 0.8125 0.57881033 0.91101563;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.30566287 0.34869552 -0.47624451 
		-0.26144683 0.34869552 -0.52317411 0.1060902 -0.12540205 -0.22526293 -0.047059383 
		-0.12540162 -0.27245587 0.33218247 0.15752926 0.35757247 -0.073319964 0.15752926 
		0.20561515 0.29931712 0.34869552 0.58147967 -0.21814114 0.34869552 0.37951577 0.22407418 
		-0.12540205 -0.030407634 -0.16447353 -0.12540162 -0.088881016 -0.3092947 0.34869552 
		-0.088881038 0.44846284 0.34869552 -0.22053921 0.046913963 0.34869552 -0.5465458 
		0.029515386 -0.12540211 -0.24885942 0.024774663 -0.12540211 0.10410576 0.036227793 
		0.15752926 0.32784176 0.036227766 0.34869552 0.50174236 0.069584057 0.50257611 -0.1547101 
		0.65332043 0.34869552 0.22739999 0.4191137 0.0069380729 0.22767018 0.03301407 0.0037932133 
		0.13409871 -0.11889672 0.028334189 0.05836704 -0.18215254 0.34869552 0.11301236 0.05290594 
		0.50257611 0.17351606 0.28646052 0.36174023 0.19447632 -0.13943563 0.40555686 -0.31875679;
	setAttr -s 26 ".vt[0:25]"  -0.34239772 -0.5 0.53347999 0.29286772 -0.5 0.58604962
		 -0.11884017 0.031075029 0.25233516 0.052715033 0.031074546 0.30519986 -0.37210447 -0.28585923 -0.40054581
		 0.082131624 -0.28585923 -0.23032618 -0.3352893 -0.5 -0.65136236 0.24435753 -0.5 -0.42512628
		 -0.25100359 0.031075029 0.034062043 0.1842401 0.031074546 0.099562809 0.34646598 -0.5 0.099562839
		 -0.50235951 -0.5 0.24704383 -0.052552138 -0.5 0.61223018 -0.03306257 0.031075096 0.27876753
		 -0.027752146 0.031075096 -0.11661726 -0.040581673 -0.28585923 -0.36724204 -0.040581644 -0.5 -0.56204218
		 -0.077946767 -0.67237407 0.17330334 -0.73183703 -0.5 -0.25472915 -0.46948317 -0.11716984 -0.25503176
		 -0.036981709 -0.11364703 -0.15021481 0.13318586 -0.14113736 -0.065381683 0.20404378 -0.5 -0.12659431
		 -0.059264205 -0.67237407 -0.19436942 -0.32088763 -0.51461244 -0.21784869 0.15619312 -0.56369501 0.35706523;
	setAttr -s 53 ".ed[0:52]"  0 12 0 2 13 0 4 15 0 6 16 0 0 2 0 1 3 0 2 8 0
		 3 9 0 4 6 0 5 7 0 6 18 0 7 22 0 8 19 0 9 21 0 10 1 0 11 0 0 8 14 0 9 10 0 10 17 0
		 11 8 0 12 1 0 13 3 0 14 9 0 15 5 0 16 7 0 17 11 0 12 13 0 13 14 0 14 20 0 15 16 0
		 16 23 0 17 12 0 18 11 0 19 4 0 20 15 0 21 5 0 22 10 0 23 17 0 18 19 0 19 20 0 20 21 0
		 21 22 0 22 23 0 23 24 0 8 20 0 11 19 0 24 18 0 16 24 0 24 11 0 10 25 0 25 12 0 17 25 0
		 25 1 0;
	setAttr -s 106 ".n[0:105]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 29 -ch 106 ".fc[0:28]" -type "polyFaces" 
		f 4 0 26 -2 -5
		mu 0 4 0 22 24 2
		f 4 39 34 -3 -34
		mu 0 4 32 33 26 4
		f 4 2 29 -4 -9
		mu 0 4 4 26 27 6
		f 4 3 47 46 -11
		mu 0 4 6 27 39 30
		f 4 41 -12 -10 -36
		mu 0 4 35 37 10 11
		f 4 10 38 33 8
		mu 0 4 12 29 31 13
		f 4 1 27 -17 -7
		mu 0 4 2 24 25 15
		f 4 -15 -18 -8 -6
		mu 0 4 1 19 17 3
		f 4 -26 31 -1 -16
		mu 0 4 21 28 23 8
		f 4 -20 15 4 6
		mu 0 4 14 20 0 2
		f 4 -27 20 5 -22
		mu 0 4 24 22 1 3
		f 4 -28 21 7 -23
		mu 0 4 25 24 3 16
		f 4 -35 40 35 -24
		mu 0 4 26 33 34 5
		f 4 -30 23 9 -25
		mu 0 4 27 26 5 7
		f 4 42 -31 24 11
		mu 0 4 36 38 27 7
		f 3 -32 51 50
		mu 0 3 23 28 40
		f 3 -39 32 45
		mu 0 3 31 29 20
		f 3 44 -40 -13
		mu 0 3 15 33 32
		f 4 -41 -29 22 13
		mu 0 4 34 33 25 16
		f 4 17 -37 -42 -14
		mu 0 4 17 19 37 35
		f 4 -38 -43 36 18
		mu 0 4 28 38 36 18
		f 3 -47 48 -33
		mu 0 3 30 39 21
		f 3 16 28 -45
		mu 0 3 15 25 33
		f 3 -46 19 12
		mu 0 3 31 20 14
		f 3 -48 30 43
		mu 0 3 39 27 38
		f 4 -49 -44 37 25
		mu 0 4 21 39 38 28
		f 3 -51 52 -21
		mu 0 3 23 40 9
		f 3 -52 -19 49
		mu 0 3 40 28 18
		f 3 -53 -50 14
		mu 0 3 9 40 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode mesh -n "polySurfaceShape2" -p "Rock_005";
	rename -uid "B7F6E8A2-478D-C53C-9191-0399E2D530B4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0.17354107 0 0.068124101 ;
	setAttr ".pt[2]" -type "float3" 0.33576697 -0.49641553 -0.12667605 ;
	setAttr ".pt[3]" -type "float3" -0.16222586 -0.49641553 -0.19480015 ;
	setAttr ".pt[4]" -type "float3" 0.16222586 -0.78585923 0.19480015 ;
	setAttr ".pt[5]" -type "float3" -0.34205854 -0.78585923 0.43537241 ;
	setAttr ".pt[7]" -type "float3" -0.17983264 7.7715612e-16 0.24057232 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "Rock_006" -p "Inner_001";
	rename -uid "027E7805-48AF-9F15-D6C6-268D33C6135E";
	setAttr ".t" -type "double3" 1.0029787164351105 0.15130447991662666 1.419468464180017 ;
	setAttr ".s" -type "double3" 1.3478311006168102 1.3478311006168102 1.3478311006168102 ;
	setAttr ".rp" -type "double3" 0 -0.15130447991662666 0 ;
	setAttr ".sp" -type "double3" 0 -0.15130447991662666 0 ;
createNode mesh -n "Rock_Shape6" -p "Rock_006";
	rename -uid "D234CF84-4A70-5808-7072-8088B512E664";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[8]" "f[14:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[10]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[6]" "f[11:12]";
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25 0.25 0.375 0.375 0.625 0.375 0.75 0.25 0.625 0.875
		 0.75 0 0.25 0 0.375 0.875 0.5 0 0.5 1 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.75 0.5 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0.25091136 0.34869552 -0.39916357 
		-0.19188048 0.34869552 -0.44635651 0.10609017 -0.095718071 -0.22526282 -0.04705942 
		-0.10086088 -0.2724559 0.3015354 0.15752926 0.27245584 -0.24779913 0.15752926 0.40457326 
		0.46329352 0.34869552 0.46900073 -0.39262035 0.34869552 0.57847381 0.22407417 -0.095718086 
		-0.030407654 -0.16447352 -0.10086089 -0.088880971 -0.30929464 0.34869552 -0.08888106 
		0.44846281 0.34869552 -0.22053923 0.02951538 0.34869552 -0.42275998 0.029515399 -0.094962172 
		-0.24885938 0.029800305 -0.09496218 -0.059644341 0.036227755 0.15752926 0.32784173 
		0.036227785 0.34869552 0.5017423 0.069584079 0.32535183 -0.15471011;
	setAttr -s 18 ".vt[0:17]"  -0.28106609 -0.5 0.44713533 0.21494088 -0.5 0.5
		 -0.11884017 0.0035844743 0.25233516 0.052715033 0.0035844743 0.30519986 -0.33777416 -0.28585923 -0.30519986
		 0.25661081 -0.28585923 -0.42928424 -0.5 -0.5 -0.5 0.41883671 -0.5 -0.62408435 -0.25100359 0.0035844892 0.034062043
		 0.1842401 0.0035844892 0.099562809 0.34646598 -0.5 0.099562839 -0.50235951 -0.5 0.24704383
		 -0.033062607 -0.5 0.47356766 -0.03306257 0.0035844743 0.27876753 -0.033381745 0.0035844892 0.066812426
		 -0.040581673 -0.28585923 -0.36724204 -0.040581644 -0.5 -0.56204218 -0.077946767 -0.5 0.17330334;
	setAttr -s 32 ".ed[0:31]"  0 12 0 2 13 0 4 15 0 6 16 0 0 2 0 1 3 0 2 8 0
		 3 9 0 4 6 0 5 7 0 6 11 0 7 10 0 8 4 0 9 5 0 10 1 0 11 0 0 8 14 0 9 10 0 10 17 0 11 8 0
		 12 1 0 13 3 0 14 9 0 15 5 0 16 7 0 17 11 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0
		 17 12 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 26 -2 -5
		mu 0 4 0 22 24 2
		f 4 16 28 -3 -13
		mu 0 4 15 25 26 4
		f 4 2 29 -4 -9
		mu 0 4 4 26 27 6
		f 4 3 30 25 -11
		mu 0 4 6 27 28 21
		f 4 17 -12 -10 -14
		mu 0 4 17 19 10 11
		f 4 10 19 12 8
		mu 0 4 12 20 14 13
		f 4 1 27 -17 -7
		mu 0 4 2 24 25 15
		f 4 -15 -18 -8 -6
		mu 0 4 1 19 17 3
		f 4 -26 31 -1 -16
		mu 0 4 21 28 23 8
		f 4 -20 15 4 6
		mu 0 4 14 20 0 2
		f 4 -27 20 5 -22
		mu 0 4 24 22 1 3
		f 4 -28 21 7 -23
		mu 0 4 25 24 3 16
		f 4 -29 22 13 -24
		mu 0 4 26 25 16 5
		f 4 -30 23 9 -25
		mu 0 4 27 26 5 7
		f 4 -31 24 11 18
		mu 0 4 28 27 7 18
		f 4 -32 -19 14 -21
		mu 0 4 23 28 18 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "Rock_007" -p "Inner_001";
	rename -uid "0190AD4C-422D-8267-3604-058E18F1251A";
	setAttr ".t" -type "double3" -0.73174852809622948 0.15130447991662666 -0.6823391496986515 ;
	setAttr ".r" -type "double3" 0 -34.222279896726882 0 ;
	setAttr ".s" -type "double3" 1.0925347450057981 1.0925347450057981 1.0925347450057981 ;
	setAttr ".rp" -type "double3" 0 -0.15130447991662666 0 ;
	setAttr ".sp" -type "double3" 0 -0.15130447991662666 0 ;
createNode mesh -n "Rock_Shape7" -p "Rock_007";
	rename -uid "AC93A29A-440E-B0C0-9A8A-B89A5FE4539B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[8]" "f[14:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[10]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[7]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[6]" "f[11:12]";
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25 0.25 0.375 0.375 0.625 0.375 0.75 0.25 0.625 0.875
		 0.75 0 0.25 0 0.375 0.875 0.5 0 0.5 1 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.75 0.5 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0.25091136 0.34869552 -0.39916357 
		-0.19188048 0.34869552 -0.44635651 0.10609017 -0.095718071 -0.22526282 -0.04705942 
		-0.10086088 -0.2724559 0.3015354 0.15752926 0.27245584 -0.24779913 0.15752926 0.40457326 
		0.46329352 0.34869552 0.46900073 -0.39262035 0.34869552 0.57847381 0.22407417 -0.095718086 
		-0.030407654 -0.16447352 -0.10086089 -0.088880971 -0.30929464 0.34869552 -0.08888106 
		0.44846281 0.34869552 -0.22053923 0.02951538 0.34869552 -0.42275998 0.029515399 -0.094962172 
		-0.24885938 0.029800305 -0.09496218 -0.059644341 0.036227755 0.15752926 0.32784173 
		0.036227785 0.34869552 0.5017423 0.069584079 0.32535183 -0.15471011;
	setAttr -s 18 ".vt[0:17]"  -0.28106609 -0.5 0.44713533 0.21494088 -0.5 0.5
		 -0.11884017 0.0035844743 0.25233516 0.052715033 0.0035844743 0.30519986 -0.33777416 -0.28585923 -0.30519986
		 0.25661081 -0.28585923 -0.42928424 -0.5 -0.5 -0.5 0.41883671 -0.5 -0.62408435 -0.25100359 0.0035844892 0.034062043
		 0.1842401 0.0035844892 0.099562809 0.34646598 -0.5 0.099562839 -0.50235951 -0.5 0.24704383
		 -0.033062607 -0.5 0.47356766 -0.03306257 0.0035844743 0.27876753 -0.033381745 0.0035844892 0.066812426
		 -0.040581673 -0.28585923 -0.36724204 -0.040581644 -0.5 -0.56204218 -0.077946767 -0.5 0.17330334;
	setAttr -s 32 ".ed[0:31]"  0 12 0 2 13 0 4 15 0 6 16 0 0 2 0 1 3 0 2 8 0
		 3 9 0 4 6 0 5 7 0 6 11 0 7 10 0 8 4 0 9 5 0 10 1 0 11 0 0 8 14 0 9 10 0 10 17 0 11 8 0
		 12 1 0 13 3 0 14 9 0 15 5 0 16 7 0 17 11 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0
		 17 12 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 26 -2 -5
		mu 0 4 0 22 24 2
		f 4 16 28 -3 -13
		mu 0 4 15 25 26 4
		f 4 2 29 -4 -9
		mu 0 4 4 26 27 6
		f 4 3 30 25 -11
		mu 0 4 6 27 28 21
		f 4 17 -12 -10 -14
		mu 0 4 17 19 10 11
		f 4 10 19 12 8
		mu 0 4 12 20 14 13
		f 4 1 27 -17 -7
		mu 0 4 2 24 25 15
		f 4 -15 -18 -8 -6
		mu 0 4 1 19 17 3
		f 4 -26 31 -1 -16
		mu 0 4 21 28 23 8
		f 4 -20 15 4 6
		mu 0 4 14 20 0 2
		f 4 -27 20 5 -22
		mu 0 4 24 22 1 3
		f 4 -28 21 7 -23
		mu 0 4 25 24 3 16
		f 4 -29 22 13 -24
		mu 0 4 26 25 16 5
		f 4 -30 23 9 -25
		mu 0 4 27 26 5 7
		f 4 -31 24 11 18
		mu 0 4 28 27 7 18
		f 4 -32 -19 14 -21
		mu 0 4 23 28 18 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "inner_002" -p "Ground";
	rename -uid "B8F98C36-41E4-AFE6-AA10-BB992D740517";
	setAttr ".v" no;
createNode mesh -n "inner_002Shape" -p "inner_002";
	rename -uid "18FE24A6-44C9-0113-E790-C484F68B4CA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[0:85]";
	setAttr ".pv" -type "double2" 0.53125 0.34375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 109 ".uvst[0].uvsp[0:108]" -type "float2" 0.5 0.390625 0.4957734
		 0.38870719 0.49606931 0.39246002 0.49342486 0.39521655 0.49689928 0.39796248 0.49570143
		 0.40034914 0.49483645 0.38016355 0.48507363 0.37577787 0.4912852 0.37091228 0.4920477
		 0.36206514 0.48885262 0.360468 0.47977635 0.36774045 0.47994033 0.36666113 0.50516355
		 0.38016355 0.51455432 0.37018257 0.50210768 0.35594845 0.50491434 0.35430989 0.52229965
		 0.36317113 0.51456678 0.37674949 0.51939142 0.38143542 0.52169812 0.38492298 0.48361155
		 0.38410336 0.48813733 0.38709369 0.4905093 0.38460627 0.48940969 0.3810558 0.5 0.36983645
		 0.48422056 0.37130997 0.48528114 0.36875552 0.48985836 0.35843816 0.46875 0.34375
		 0.5 0.359375 0.5172255 0.37243891 0.50299877 0.35628903 0.50531465 0.35493696 0.53125
		 0.34375 0.51058149 0.38067377 0.51891345 0.38204435 0.52537978 0.39443949 0.52747166
		 0.39375401 0.53125 0.40625 0.50363415 0.38737619 0.5 0.40625 0.46875 0.40625 0.47404727
		 0.37942225 0.48848805 0.38805768 0.49128771 0.38608778 0.48749548 0.37835124 0.49341562
		 0.38628122 0.49573436 0.39240429 0.49238902 0.39298344 0.49604917 0.39787468 0.512034
		 0.37123021 0.5 0.34375 0.52423078 0.35996649 0.53125 0.375 0.51265299 0.39859581
		 0.51558363 0.37536797 0.48732308 0.37840554 0.46875 0.375 0.47826701 0.36422727 0.48799509
		 0.37118179 0.5114038 0.37932774 0.49596062 0.38672888 0.48211625 0.38350061 0.5 0.38016355
		 0.4997974 0.38705254 0.4979803 0.38867694 0.49459451 0.38749421 0.49590182 0.39243215
		 0.49290693 0.39410001 0.49647421 0.39791858 0.47985834 0.36720079 0.4893555 0.35945308
		 0.48866442 0.36541033 0.48775288 0.37111112 0.48653436 0.37347984 0.48628455 0.37706456
		 0.48836637 0.37973067 0.49089849 0.38534701 0.48831269 0.38757569 0.5051145 0.35462344
		 0.50255322 0.35611874 0.51588988 0.37131074 0.51380885 0.37329909 0.51349372 0.37734786
		 0.51257414 0.37871164 0.5191524 0.38173988 0.4997974 0.38705254 0.49596062 0.38672888
		 0.48749548 0.37835124 0.48799509 0.37118179 0.512034 0.37123021 0.5114038 0.37932774
		 0.50516355 0.38016355 0.5 0.359375 0.50363415 0.38737619 0.4877508 0.37468734 0.48782641
		 0.37360227 0.51575506 0.37018955 0.51604927 0.36967322 0.51547724 0.36882812 0.51618832
		 0.37126154 0.51546097 0.37082213 0.5154165 0.36901328 0.51523614 0.36961445 0.51568389
		 0.36929214 0.51550514 0.36991256 0.51671159 0.3718555 0.51562572 0.3710098;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 0.0026922226 0.0026922226 
		0 0.0026922226 0.0026922226 0 0 -0.0026922226 0 0 -0.0026922226 0.11335624 0.0026922226 
		0 0 -0.0026922226 -0.0026922226 0 -0.0026922226 0.0026922226 0 -0.0026922226 0 0 
		0;
	setAttr -s 107 ".vt[0:106]"  0 0 9.37230778 9.37230778 0 9.37230778 9.37230778 0 0
		 -9.37230778 0 0 -9.37230778 -0.11335624 9.37230778 0 0 -9.37230778 -9.37230778 0 -9.37230778
		 9.37230778 0 -9.37230778 -0.042653292 0 0.27921888 5.32684469 0 4.50875521 3.79480982 0 -4.96087599
		 5.9890542 0 -5.83017492 7.19470882 0 -5.62458467 -7.78358936 0 -0.69445056 0.16823399 0 -0.26592147
		 -0.18789589 0 -0.22772956 -0.67267334 0 -0.66724741 -0.48239759 0 -0.83210319 -1.14111888 0 -1.73688471
		 -0.99456793 0 -1.8325398 -2.2179749 0 -2.99704981 -2.029555321 0 -3.0094749928 -1.13558173 0 -4.63995838
		 -0.9786613 0 -4.60623598 -1.28917289 0 -6.07087326 -0.24058387 0 -0.16351886 -0.59648395 0 0.014554977
		 -0.23758593 0 0.16708833 -1.073089361 0 0.73620725 -1.23992693 0 0.65015411 -1.2970829 0 1.53832328
		 -1.40724039 0 1.49185646 -2.23077178 0 2.52604532 -2.31682277 0 2.30091834 -3.14546895 0 2.3287735
		 -4.54514885 0 3.96749139 -3.10443664 0 2.42591143 0.23637915 0 0.12464402 0.5107488 0 -0.026544238
		 0.23620643 0 -0.10125121 1.25992477 0 0.77599889 1.04986167 0 0.83213925 0.83157843 0 2.29355097
		 0.69993168 0 2.32542229 1.56020033 0 3.12095404 1.5076189 0 3.22162485 4.37836742 0 3.51394105
		 0.35316113 0 -0.27238494 0.55407828 0 -0.12620057 2.44651151 0 -2.078765154 2.55800104 0 -1.93468237
		 3.93696952 0 -2.97604513 -4.75026083 0 -0.86457676 -5.26688147 0 -0.83560169 -3.43674922 0 -1.29831719
		 -3.43892622 0 -1.22155917 -1.64129281 0 -0.66478348 -1.68265271 0 -0.5614143 -0.8157047 0 -0.31656244
		 -0.87433922 0 -0.19577134 0.16389081 -0.084102526 -0.18224727 -0.068290561 -0.11335624 -0.28408182
		 -0.57753545 -0.11335624 -0.74967527 -1.067843318 -0.11335624 -1.78471231 -2.12376523 -0.11335624 -3.0032625198
		 -1.057121515 -0.11335624 -4.62309265 -3.12495279 -0.11335624 2.37734246 -2.27379727 -0.11335624 2.41348171
		 -1.35216165 -0.11335624 1.51508987 -1.15650809 -0.11335624 0.69318068 -0.46234459 -0.11335624 0.067932658
		 -0.46634555 -0.11335624 -0.053338774 -0.84502196 -0.11335624 -0.25616691 -1.66197276 -0.11335624 -0.61309886
		 -3.4378376 -0.11335624 -1.25993824 1.53390956 -0.11335624 3.17128944 0.76575506 -0.11335624 2.30948663
		 1.15489328 -0.11335624 0.80406904 0.41338199 -0.11335624 0.047363594 0.39910373 -0.11335624 -0.073907837
		 0.45361972 -0.11335624 -0.19929275 2.50225616 -0.11335624 -2.0067236423 -0.00071146415 -0.3141211 -0.081054546
		 -0.045891687 -0.31412107 -0.18876791 -0.12502111 -0.23912595 -0.15148599 -0.080943167 -0.23912597 -0.081054538
		 -0.15987885 -0.23912595 -0.10900492 -0.15789543 -0.23912592 0.10972075 -0.00071146275 -0.23912597 0.079408884
		 0.15567413 -0.23912595 0.081640109 0.15555981 -0.23912594 -0.067809403 0.07952024 -0.23912594 -0.081054546
		 -0.028930359 -0.23912594 0.18390498 0.11059012 -0.23912592 -0.17675328 -0.23905179 -0.10012978 0.0054356307
		 -0.15856504 -0.23912594 0.035876341 1.54958701 0 0.96411699 2.047935963 0 0.978558
		 2.32821321 0 1.10143173 1.22869742 0 0.88663149 1.14237821 -0.11335624 0.85248476
		 1.99530303 0 1.04290998 1.52594697 0 1.018715978 2.017542839 -0.11205627 1.015718579
		 1.53820109 -0.11205627 0.99041378 1.24445105 -0.11205627 0.83081925 1.14718485 -0.11335625 0.83388978;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  0 8 0 0 1 0 1 2 0 4 3 0 4 0 0 6 5 0 3 6 0 2 7 0 5 7 0
		 9 1 0 10 11 0 11 12 0 12 7 0 3 13 0 13 53 0 5 24 0 36 35 0 35 34 0 10 51 0 53 52 0
		 14 61 0 60 14 0 14 17 0 17 62 0 16 15 0 17 19 0 19 63 0 18 16 0 19 21 0 21 64 0 20 18 0
		 21 23 0 23 65 0 22 20 0 23 24 0 24 22 0 25 94 0 26 71 0 25 58 0 58 72 0 59 26 0 27 70 0
		 26 29 0 29 69 0 28 27 0 29 31 0 31 68 0 30 28 0 31 33 0 33 67 0 32 30 0 33 34 0 34 66 0
		 36 32 0 37 39 0 39 60 0 38 78 0 37 41 0 41 77 0 40 38 0 39 79 0 38 48 0 48 80 0 47 39 0
		 41 43 0 43 76 0 42 99 0 43 45 0 45 75 0 44 42 0 45 46 0 46 44 0 9 46 0 48 50 0 50 81 0
		 49 47 0 50 51 0 51 49 0 52 55 0 55 74 0 54 52 0 55 57 0 57 73 0 56 54 0 57 59 0 58 56 0
		 8 37 0 8 27 0 2 38 0 5 14 0 14 39 0 25 15 0 35 4 0 61 15 0 62 16 0 63 18 0 64 20 0
		 65 22 0 61 62 0 62 63 0 63 64 0 64 65 0 66 36 0 67 32 0 68 30 0 69 28 0 70 26 0 71 25 0
		 72 59 0 73 56 0 74 54 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0
		 75 44 0 76 42 0 77 40 0 78 37 0 79 38 0 80 47 0 81 49 0 75 76 0 76 100 0 77 78 0
		 78 79 0 79 80 0 80 81 0 24 65 0 51 81 0 46 75 0 35 66 0 52 74 0 61 83 0 82 83 0 15 84 0
		 83 84 0 84 85 0 85 82 0 25 86 0 27 87 0 86 95 0 87 88 0 88 85 0 85 86 0 37 89 0 39 90 0
		 89 90 0 60 91 0 90 91 0 91 88 0 88 89 0 8 92 0 88 92 0 92 89 0 92 87 0 86 84 0 82 91 0
		 14 93 0 93 83 0 91 93 0 94 27 0;
	setAttr ".ed[166:191]" 95 87 0 71 94 0 94 95 0 95 88 0 40 96 0 96 97 0 97 98 0
		 98 46 0 99 105 0 100 106 0 98 101 0 101 102 0 102 99 0 99 100 0 100 41 0 97 103 0
		 96 104 0 103 101 0 104 102 0 105 40 0 106 77 0 103 104 0 104 105 0 105 106 0 98 103 0
		 2 46 0;
	setAttr -s 86 -ch 376 ".fc[0:85]" -type "polyFaces" 
		f 4 138 140 141 142
		mu 0 4 64 87 88 6
		f 4 -94 98 94 24
		mu 0 4 62 66 67 47
		f 4 -95 99 95 27
		mu 0 4 47 67 68 48
		f 4 -96 100 96 30
		mu 0 4 48 68 69 49
		f 4 -97 101 97 33
		mu 0 4 49 69 70 50
		f 3 132 -33 34
		mu 0 3 5 70 4
		f 4 145 169 147 148
		mu 0 4 89 97 25 6
		f 4 37 116 108 40
		mu 0 4 7 76 77 57
		f 4 114 106 42 43
		mu 0 4 74 75 7 8
		f 4 113 -44 45 46
		mu 0 4 73 74 8 9
		f 4 112 -47 48 49
		mu 0 4 72 73 9 10
		f 4 111 -50 51 52
		mu 0 4 71 72 10 11
		f 4 151 153 154 155
		mu 0 4 91 92 93 25
		f 4 128 122 57 58
		mu 0 4 82 83 51 14
		f 4 60 130 124 63
		mu 0 4 61 84 85 35
		f 4 127 180 64 65
		mu 0 4 81 102 14 15
		f 4 126 -66 67 68
		mu 0 4 80 81 15 16
		f 3 134 -69 70
		mu 0 3 17 80 16
		f 4 -125 131 125 75
		mu 0 4 35 85 86 36
		f 3 133 -75 76
		mu 0 3 20 86 19
		f 3 136 110 80
		mu 0 3 21 79 44
		f 4 118 -80 81 82
		mu 0 4 78 79 22 23
		f 4 117 -83 84 -109
		mu 0 4 77 78 23 57
		f 3 -156 157 158
		mu 0 3 91 25 94
		f 9 -45 -48 -51 -54 16 92 4 0 87
		mu 0 9 60 26 27 28 12 59 29 52 30
		f 4 191 -73 9 2
		mu 0 4 54 17 53 34
		f 10 -64 -76 -78 -19 10 11 12 -9 89 90
		mu 0 10 61 35 36 20 55 37 38 39 41 40
		f 16 -6 -7 13 14 19 -81 -84 -86 -39 91 -25 -28 -31 -34 -36 -16
		mu 0 16 41 42 58 43 63 21 44 45 24 46 62 47 48 49 50 5
		f 7 15 -35 -32 -29 -26 -23 -90
		mu 0 7 41 5 4 3 2 1 40
		f 9 -87 -1 1 -10 72 -71 -68 -65 -58
		mu 0 9 51 30 52 34 53 17 16 15 14
		f 9 7 -13 -12 -11 18 -77 -74 -62 -89
		mu 0 9 54 39 38 37 55 20 19 18 56
		f 14 -41 -85 -82 -79 -20 -15 -14 -4 -93 17 -52 -49 -46 -43
		mu 0 14 7 57 23 22 21 63 43 58 29 59 11 10 9 8
		f 3 -160 -158 -147
		mu 0 3 90 94 25
		f 3 -22 -56 -91
		mu 0 3 40 13 61
		f 3 -149 -142 -161
		mu 0 3 89 6 88
		f 3 115 -38 -107
		mu 0 3 75 76 7
		f 3 -18 135 -53
		mu 0 3 11 59 71
		f 4 -123 129 -61 -55
		mu 0 4 51 83 84 61
		f 4 -155 -162 -143 -148
		mu 0 4 25 93 64 6
		f 4 163 -139 161 164
		mu 0 4 95 87 64 93
		f 4 -99 -21 22 23
		mu 0 4 67 66 0 1
		f 4 -100 -24 25 26
		mu 0 4 68 67 1 2
		f 4 -101 -27 28 29
		mu 0 4 69 68 2 3
		f 4 -102 -30 31 32
		mu 0 4 70 69 3 4
		f 4 -104 -112 102 53
		mu 0 4 28 72 71 12
		f 4 -105 -113 103 50
		mu 0 4 27 73 72 28
		f 4 -106 -114 104 47
		mu 0 4 26 74 73 27
		f 4 41 -115 105 44
		mu 0 4 60 75 74 26
		f 3 -108 167 -37
		mu 0 3 46 76 96
		f 4 -117 107 38 39
		mu 0 4 77 76 46 24
		f 4 -110 -118 -40 85
		mu 0 4 45 78 77 24
		f 4 -111 -119 109 83
		mu 0 4 44 79 78 45
		f 4 -121 -127 119 69
		mu 0 4 32 81 80 33
		f 4 179 -128 120 66
		mu 0 4 101 102 81 32
		f 4 56 -129 121 59
		mu 0 4 56 83 82 31
		f 3 -130 -57 -124
		mu 0 3 84 83 56
		f 4 -131 123 61 62
		mu 0 4 85 84 56 18
		f 4 -132 -63 73 74
		mu 0 4 86 85 18 19
		f 3 -98 -133 35
		mu 0 3 50 70 5
		f 3 -126 -134 77
		mu 0 3 36 86 20
		f 3 -120 -135 71
		mu 0 3 33 80 17
		f 3 -136 -17 -103
		mu 0 3 71 59 12
		f 3 78 79 -137
		mu 0 3 21 22 79
		f 4 93 139 -141 -138
		mu 0 4 65 62 88 87
		f 4 36 168 -146 -144
		mu 0 4 46 96 97 89
		f 4 54 150 -152 -150
		mu 0 4 51 61 92 91
		f 4 55 152 -154 -151
		mu 0 4 61 13 93 92
		f 4 86 149 -159 -157
		mu 0 4 30 51 91 94
		f 4 -88 156 159 -145
		mu 0 4 60 30 94 90
		f 4 -92 143 160 -140
		mu 0 4 62 46 89 88
		f 4 20 137 -164 -163
		mu 0 4 40 65 87 95
		f 4 21 162 -165 -153
		mu 0 4 13 40 95 93
		f 4 -168 -116 -42 -166
		mu 0 4 96 76 75 60
		f 4 -169 165 144 -167
		mu 0 4 97 96 60 90
		f 3 -170 166 146
		mu 0 3 25 97 90
		f 7 -174 176 177 178 -67 -70 -72
		mu 0 7 17 100 103 104 101 32 33
		f 3 190 183 -177
		mu 0 3 100 105 103
		f 4 189 -176 -180 174
		mu 0 4 107 108 102 101
		f 4 -181 175 186 -59
		mu 0 4 14 102 108 82
		f 4 187 184 -178 -184
		mu 0 4 105 106 104 103
		f 4 -179 -185 188 -175
		mu 0 4 101 104 106 107
		f 4 182 -188 -182 -172
		mu 0 4 98 106 105 99
		f 4 -189 -183 -171 -186
		mu 0 4 107 106 98 31
		f 4 -122 -187 -190 185
		mu 0 4 31 82 108 107
		f 3 181 -191 -173
		mu 0 3 99 105 100
		f 7 -60 170 171 172 173 -192 88
		mu 0 7 56 31 98 99 100 17 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode mesh -n "polySurfaceShape1" -p "inner_002";
	rename -uid "CA691626-44A2-175B-EF91-BBA2C6F2181E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[0:38]";
	setAttr ".pv" -type "double2" 0.52169811725616455 0.38492298126220703 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0.5 0.390625 0.4957734
		 0.38870719 0.49606931 0.39246002 0.49342486 0.39521655 0.49689928 0.39796248 0.49570143
		 0.40034914 0.49483645 0.38016355 0.48507363 0.37577787 0.4912852 0.37091228 0.4920477
		 0.36206514 0.48885262 0.360468 0.47977635 0.36774045 0.47994033 0.36666113 0.50516355
		 0.38016355 0.51455432 0.37018257 0.50210768 0.35594845 0.50491434 0.35430989 0.52229965
		 0.36317113 0.51456678 0.37674949 0.51939142 0.38143542 0.52169812 0.38492298 0.48361155
		 0.38410336 0.48813733 0.38709369 0.4905093 0.38460627 0.48940969 0.3810558 0.5 0.36983645
		 0.48422056 0.37130997 0.48528114 0.36875552 0.48985836 0.35843816 0.46875 0.34375
		 0.5 0.359375 0.5172255 0.37243891 0.50299877 0.35628903 0.50531465 0.35493696 0.53125
		 0.34375 0.51058149 0.38067377 0.51891345 0.38204435 0.52537978 0.39443949 0.52747166
		 0.39375401 0.53125 0.40625 0.50363415 0.38737619 0.5 0.40625 0.46875 0.40625 0.47404727
		 0.37942225 0.48848805 0.38805768 0.49128771 0.38608778 0.48749548 0.37835124 0.49341562
		 0.38628122 0.49573436 0.39240429 0.49238902 0.39298344 0.49604917 0.39787468 0.512034
		 0.37123021 0.5 0.34375 0.52423078 0.35996649 0.53125 0.375 0.51265299 0.39859581
		 0.52117455 0.38588464 0.51558363 0.37536797 0.48732308 0.37840554 0.46875 0.375 0.47826701
		 0.36422727 0.48799509 0.37118179 0.5114038 0.37932774 0.49596062 0.38672888 0.48211625
		 0.38350061;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 64 ".pt[0:63]" -type "float3"  0 -0.5 9.25 9.25 -0.5 9.25 
		9.25 -0.5 0 -9.25 -0.5 0 -9.25 -0.5 9.25 0 -0.5 -9.25 -9.25 -0.5 -9.25 9.25 -0.5 
		-9.25 0 -0.5 0.36218056 5.2573299 -0.5 4.4499164 3.7452879 -0.5 -4.8961368 5.9108977 
		-0.5 -5.7540917 7.1008186 -0.5 -5.5511842 -7.6820145 -0.5 -0.68538803 0.11968885 
		-0.5 -0.42643261 -0.11968885 -0.5 -0.29792845 -0.66389501 -0.5 -0.65853983 -0.47610232 
		-0.5 -0.8212443 -1.1550667 -0.5 -1.6953948 -0.95274943 -0.5 -1.8274491 -2.245863 
		-0.5 -2.9541907 -1.9462373 -0.5 -2.9739492 -1.1688635 -0.5 -4.5897522 -0.91778874 
		-0.5 -4.53578 -1.2723492 -0.5 -5.9916487 -0.33181971 -0.5 -0.11965045 -0.58869982 
		-0.5 0.014365036 -0.32392216 -0.5 0.11972725 -1.2146906 -0.5 0.75370246 -1.4540457 
		-0.5 0.63024557 -1.2148365 -0.5 1.5458016 -1.4541956 -0.5 1.4448346 -2.1975787 -0.5 
		2.5037589 -2.2906699 -0.5 2.2602131 -3.1357002 -0.5 2.2243338 -4.4858351 -0.5 3.9157159 
		-3.0326443 -0.5 2.4683027 0.31189126 -0.5 0.11968885 0.50408357 -0.5 -0.026197836 
		0.28370735 -0.5 -0.11968885 1.2726189 -0.5 0.75808543 1.007025 -0.5 0.82906663 0.88763762 
		-0.5 2.2474215 0.62388641 -0.5 2.3112745 1.5731317 -0.5 3.0164864 1.4546527 -0.5 
		3.2433221 4.3212299 -0.5 3.4680843 0.34855241 -0.5 -0.26883033 0.54684758 -0.5 -0.12455367 
		2.3962038 -0.5 -2.075392 2.5430002 -0.5 -1.8856803 3.8855922 -0.5 -2.9372079 3.8757241 
		-0.5 -3.074986 -4.6882701 -0.5 -0.85329407 -5.1981492 -0.5 -0.82469714 -3.3893983 
		-0.5 -1.369575 -3.3965499 -0.5 -1.1174172 -1.5957998 -0.5 -0.71627623 -1.6847684 
		-0.5 -0.49391973 -0.78168571 -0.5 -0.36058366 -0.88630325 -0.5 -0.14506422 0 -0.5 
		0.11968885 0.11968885 -0.5 -0.11968885 -0.11968885 -0.5 -0.11968885;
	setAttr -s 64 ".vt[0:63]"  0 0.5 0.125 0.125 0.5 0.125 0.125 0.5 0 -0.125 0.5 0
		 -0.125 0.5 0.125 0 0.5 -0.125 -0.125 0.5 -0.125 0.125 0.5 -0.125 0 0.5 0.004894332
		 0.071044996 0.5 0.060134005 0.050611999 0.5 -0.066164009 0.079876997 0.5 -0.077757999
		 0.095957011 0.5 -0.075015999 -0.103811 0.5 -0.0092620002 0.0016174169 0.5 -0.0057626027
		 -0.0016174169 0.5 -0.00402606 -0.0089715542 0.5 -0.0088991867 -0.0064338152 0.5 -0.011097896
		 -0.015609009 0.5 -0.02291074 -0.012874993 0.5 -0.024695259 -0.0303495 0.5 -0.039921496
		 -0.026300505 0.5 -0.040188503 -0.015795453 0.5 -0.062023681 -0.01240255 0.5 -0.061294321
		 -0.017193908 0.5 -0.080968224 -0.00448405 0.5 -0.001616898 -0.0079554031 0.5 0.00019412211
		 -0.0043773265 0.5 0.0016179357 -0.016414737 0.5 0.010185168 -0.019649265 0.5 0.0085168323
		 -0.01641671 0.5 0.020889211 -0.019651292 0.5 0.019524792 -0.029697008 0.5 0.03383458
		 -0.030954998 0.5 0.03054342 -0.042374328 0.5 0.030058563 -0.060619395 0.5 0.052915081
		 -0.04098168 0.5 0.033355441 0.0042147469 0.5 0.0016174169 0.0068119401 0.5 -0.00035402481
		 0.0038338832 0.5 -0.0016174169 0.017197553 0.5 0.010244397 0.013608446 0.5 0.011203603
		 0.011995103 0.5 0.03037056 0.0084308973 0.5 0.031233439 0.021258537 0.5 0.04076333
		 0.019657468 0.5 0.043828677 0.058394998 0.5 0.046866003 0.0047101676 0.5 -0.0036328423
		 0.0073898318 0.5 -0.0016831578 0.032381132 0.5 -0.028045837 0.034364868 0.5 -0.025482167
		 0.052508004 0.5 -0.039692 0.05237465 0.5 -0.041553866 -0.063354999 0.5 -0.011531001
		 -0.070245259 0.5 -0.011144556 -0.045802679 0.5 -0.018507771 -0.045899324 0.5 -0.015100233
		 -0.021564862 0.5 -0.0096794087 -0.022767141 0.5 -0.006674591 -0.01056332 0.5 -0.0048727524
		 -0.011977071 0.5 -0.0019603274 0 0.5 0.0016174169 0.0016174169 0.5 -0.0016174169
		 -0.0016174169 0.5 -0.0016174169;
	setAttr -s 102 ".ed[0:101]"  0 8 1 0 1 0 1 2 0 4 3 0 4 0 0 6 5 0 3 6 0
		 2 7 0 5 7 0 9 1 1 10 11 1 11 12 1 12 7 1 3 13 1 13 54 1 52 10 1 5 24 1 36 35 1 35 34 1
		 52 51 1 54 53 1 14 15 1 15 63 1 63 62 1 62 14 1 14 17 1 17 16 1 16 15 1 17 19 1 19 18 1
		 18 16 1 19 21 1 21 20 1 20 18 1 21 23 1 23 22 1 22 20 1 23 24 1 24 22 1 25 27 1 27 61 1
		 61 63 1 63 25 1 26 25 1 25 59 1 59 60 1 60 26 1 27 26 1 26 29 1 29 28 1 28 27 1 29 31 1
		 31 30 1 30 28 1 31 33 1 33 32 1 32 30 1 33 34 1 34 36 1 36 32 1 37 39 1 39 62 1 62 61 1
		 61 37 1 38 37 1 37 41 1 41 40 1 40 38 1 39 38 1 38 48 1 48 47 1 47 39 1 41 43 1 43 42 1
		 42 40 1 43 45 1 45 44 1 44 42 1 45 46 1 46 44 1 9 46 1 48 50 1 50 49 1 49 47 1 50 51 1
		 51 49 1 53 56 1 56 55 1 55 53 1 56 58 1 58 57 1 57 55 1 58 60 1 59 57 1 61 8 1 8 37 1
		 8 27 1 2 38 1 5 14 1 14 39 1 25 15 1 35 4 1;
	setAttr -s 39 -ch 196 ".fc[0:38]" -type "polyFaces" 
		f 4 21 22 23 24
		mu 0 4 40 63 6 13
		f 4 -22 25 26 27
		mu 0 4 63 0 1 47
		f 4 -27 28 29 30
		mu 0 4 47 1 2 48
		f 4 -30 31 32 33
		mu 0 4 48 2 3 49
		f 4 -33 34 35 36
		mu 0 4 49 3 4 50
		f 3 -36 37 38
		mu 0 3 50 4 5
		f 4 39 40 41 42
		mu 0 4 46 61 25 6
		f 4 43 44 45 46
		mu 0 4 7 46 24 58
		f 4 47 48 49 50
		mu 0 4 61 7 8 26
		f 4 -50 51 52 53
		mu 0 4 26 8 9 27
		f 4 -53 54 55 56
		mu 0 4 27 9 10 28
		f 4 -56 57 58 59
		mu 0 4 28 10 11 12
		f 4 60 61 62 63
		mu 0 4 51 62 13 25
		f 4 64 65 66 67
		mu 0 4 57 51 14 31
		f 4 68 69 70 71
		mu 0 4 62 57 18 35
		f 4 -67 72 73 74
		mu 0 4 31 14 15 32
		f 4 -74 75 76 77
		mu 0 4 32 15 16 33
		f 3 -77 78 79
		mu 0 3 33 16 17
		f 4 -71 81 82 83
		mu 0 4 35 18 19 36
		f 3 -83 84 85
		mu 0 3 36 19 20
		f 3 86 87 88
		mu 0 3 21 22 44
		f 4 -88 89 90 91
		mu 0 4 44 22 23 45
		f 4 -91 92 -46 93
		mu 0 4 45 23 58 24
		f 3 -64 94 95
		mu 0 3 51 25 30
		f 9 -51 -54 -57 -60 17 101 4 0 96
		mu 0 9 61 26 27 28 12 60 29 52 30
		f 8 -68 -75 -78 -80 -81 9 2 97
		mu 0 8 57 31 32 33 17 53 34 54
		f 11 -72 -84 -86 -20 15 10 11 12 -9 98 99
		mu 0 11 62 35 36 20 56 55 37 38 39 41 40
		f 16 -6 -7 13 14 20 -89 -92 -94 -45 100 -28 -31 -34 -37 -39 -17
		mu 0 16 41 42 59 43 64 21 44 45 24 46 63 47 48 49 50 5
		f 7 16 -38 -35 -32 -29 -26 -99
		mu 0 7 41 5 4 3 2 1 40
		f 9 -96 -1 1 -10 80 -79 -76 -73 -66
		mu 0 9 51 30 52 34 53 17 16 15 14
		f 10 7 -13 -12 -11 -16 19 -85 -82 -70 -98
		mu 0 10 54 39 38 37 55 56 20 19 18 57
		f 14 -47 -93 -90 -87 -21 -15 -14 -4 -102 18 -58 -55 -52 -49
		mu 0 14 7 58 23 22 21 64 43 59 29 60 11 10 9 8
		f 3 -97 -95 -41
		mu 0 3 61 30 25
		f 3 -25 -62 -100
		mu 0 3 40 13 62
		f 3 -43 -23 -101
		mu 0 3 46 6 63
		f 3 -44 -48 -40
		mu 0 3 46 7 61
		f 3 -19 -18 -59
		mu 0 3 11 60 12
		f 3 -65 -69 -61
		mu 0 3 51 57 62
		f 3 -63 -24 -42
		mu 0 3 25 13 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "inner_003" -p "Ground";
	rename -uid "282EBF35-4A20-75E3-5D68-91A5358088E1";
	setAttr ".v" no;
createNode mesh -n "inner_003Shape" -p "inner_003";
	rename -uid "1D16FE36-42CE-A255-6751-2DB049F2E729";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[0:125]";
	setAttr ".pv" -type "double2" 0.51549559831619263 0.36990199983119965 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 143 ".uvst[0].uvsp[0:142]" -type "float2" 0.5 0.390625 0.4957734
		 0.38870719 0.49606931 0.39246002 0.49342486 0.39521655 0.49689928 0.39796248 0.49570143
		 0.40034914 0.49483645 0.38016355 0.48507363 0.37577787 0.4912852 0.37091228 0.4920477
		 0.36206514 0.48885262 0.360468 0.47977635 0.36774045 0.47994033 0.36666113 0.50516355
		 0.38016355 0.51455432 0.37018257 0.50210768 0.35594845 0.50491434 0.35430989 0.52229965
		 0.36317113 0.51456678 0.37674949 0.51939142 0.38143542 0.52169812 0.38492298 0.48361155
		 0.38410336 0.48813733 0.38709369 0.4905093 0.38460627 0.48940969 0.3810558 0.5 0.36983645
		 0.48422056 0.37130997 0.48528114 0.36875552 0.48985836 0.35843816 0.46875 0.34375
		 0.5 0.359375 0.5172255 0.37243891 0.50299877 0.35628903 0.50531465 0.35493696 0.53125
		 0.34375 0.51058149 0.38067377 0.51891345 0.38204435 0.52537978 0.39443949 0.52747166
		 0.39375401 0.53125 0.40625 0.50363415 0.38737619 0.5 0.40625 0.46875 0.40625 0.47404727
		 0.37942225 0.48848805 0.38805768 0.49128771 0.38608778 0.48749548 0.37835124 0.49341562
		 0.38628122 0.49573436 0.39240429 0.49238902 0.39298344 0.49604917 0.39787468 0.512034
		 0.37123021 0.5 0.34375 0.52423078 0.35996649 0.53125 0.375 0.51265299 0.39859581
		 0.51558363 0.37536797 0.48732308 0.37840554 0.46875 0.375 0.47826701 0.36422727 0.48799509
		 0.37118179 0.5114038 0.37932774 0.49596062 0.38672888 0.48211625 0.38350061 0.5 0.38016355
		 0.4997974 0.38705254 0.4979803 0.38867694 0.49459451 0.38749421 0.49590182 0.39243215
		 0.49290693 0.39410001 0.49647421 0.39791858 0.47985834 0.36720079 0.4893555 0.35945308
		 0.48866442 0.36541033 0.48775288 0.37111112 0.48653436 0.37347984 0.48628455 0.37706456
		 0.48836637 0.37973067 0.49089849 0.38534701 0.48831269 0.38757569 0.5051145 0.35462344
		 0.50255322 0.35611874 0.51588988 0.37131074 0.51380885 0.37329909 0.51349372 0.37734786
		 0.51257414 0.37871164 0.5191524 0.38173988 0.4997974 0.38705254 0.49596062 0.38672888
		 0.48749548 0.37835124 0.48799509 0.37118179 0.512034 0.37123021 0.5114038 0.37932774
		 0.50516355 0.38016355 0.5 0.359375 0.50363415 0.38737619 0.4877508 0.37468734 0.48782641
		 0.37360227 0.51575506 0.37018955 0.51604927 0.36967322 0.51547724 0.36882812 0.51618832
		 0.37126154 0.51546097 0.37082213 0.5154165 0.36901328 0.51523614 0.36961445 0.51568389
		 0.36929214 0.51550514 0.36991256 0.51671159 0.3718555 0.51562572 0.3710098 0.5 0.35715401
		 0.51755512 0.37532166 0.51649505 0.37862232 0.51533234 0.37998134 0.51406866 0.3812474
		 0.5031603 0.38983706 0.48996758 0.37629777 0.50334644 0.38887069 0.51211888 0.38092667
		 0.5137704 0.37926233 0.51549637 0.37765235 0.51669484 0.37534186 0.51628637 0.37411433
		 0.5148629 0.37229195 0.51336825 0.37067562 0.5 0.35835066 0.49592137 0.3905836 0.49524817
		 0.38996318 0.49457499 0.38934276 0.4903487 0.3835718 0.48963243 0.38253886 0.48891619
		 0.38150591 0.49166644 0.3664887 0.48820865 0.36826074 0.48475087 0.37003273 0.5 0.35775232
		 0.51396132 0.3704291 0.51537639 0.37180135 0.51675594 0.37327662 0.51712501 0.37533176
		 0.51599574 0.37813735 0.5145514 0.37962183 0.51309377 0.38108703 0.50325334 0.38935387;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[14]" -type "float3" -0.093021929 0 -0.23853675 ;
	setAttr ".pt[37]" -type "float3" 0 -0.25465015 0 ;
	setAttr ".pt[39]" -type "float3" 0.014514703 -0.25465015 -0.21532005 ;
	setAttr ".pt[40]" -type "float3" 0.061689172 -0.043775905 -0.03248943 ;
	setAttr ".pt[41]" -type "float3" -0.061689172 -0.043775905 0.00048400354 ;
	setAttr ".pt[47]" -type "float3" 0.10579716 0 -0.2311556 ;
	setAttr ".pt[60]" -type "float3" 0 -0.18009596 0 ;
	setAttr ".pt[77]" -type "float3" 2.7786136e-08 -0.11035448 -0.016002737 ;
	setAttr ".pt[80]" -type "float3" 0 -0.31965584 0 ;
	setAttr ".pt[96]" -type "float3" 0 0 -0.043076355 ;
	setAttr ".pt[99]" -type "float3" 0.043348096 -0.043775905 0.03248943 ;
	setAttr ".pt[100]" -type "float3" -0.007350557 -0.11035448 0.012433723 ;
	setAttr ".pt[102]" -type "float3" 0 0 0.043076355 ;
	setAttr ".pt[104]" -type "float3" 0 0 -0.0015821714 ;
	setAttr ".pt[105]" -type "float3" 0.052600827 -0.10959096 -0.00029128595 ;
	setAttr ".pt[106]" -type "float3" -0.0045274296 -0.11035448 0.0015121622 ;
	setAttr ".pt[109]" -type "float3" 0.092772365 0 0.12522909 ;
	setAttr ".pt[110]" -type "float3" 0 -0.31965584 0 ;
	setAttr ".pt[111]" -type "float3" -0.12136117 0 -0.13419633 ;
	setAttr ".pt[115]" -type "float3" -0.12136117 0 -0.13419633 ;
	setAttr ".pt[116]" -type "float3" 0 -0.31965584 0 ;
	setAttr ".pt[117]" -type "float3" 0.092772365 0 0.12522909 ;
	setAttr ".pt[133]" -type "float3" -0.10945324 -0.037816174 0.06968271 ;
	setAttr ".pt[134]" -type "float3" 0.02324429 -0.17036034 0.013203349 ;
	setAttr ".pt[135]" -type "float3" 0.1094532 -0.037816174 -0.069682695 ;
	setAttr ".pt[137]" -type "float3" 0.092772365 0 0.12522909 ;
	setAttr ".pt[138]" -type "float3" 0 -0.31965584 0 ;
	setAttr ".pt[139]" -type "float3" -0.12136117 0 -0.13419633 ;
	setAttr -s 141 ".vt[0:140]"  0 0 9.375 9.375 0 9.375 9.375 0 0 -9.375 0 0
		 -9.375 0 9.375 0 0 -9.375 -9.375 0 -9.375 9.375 0 -9.375 -0.042653292 -0.48932847 0.27921888
		 5.32684469 0 4.50875521 3.79480982 0 -4.96087599 5.9890542 0 -5.83017492 7.19470882 0 -5.62458467
		 -7.78358936 0 -0.69445056 0.16823399 -0.48932847 -0.26592147 -0.18789589 -0.48932847 -0.22772956
		 -0.67267334 -0.35097262 -0.66724741 -0.48239759 -0.35097262 -0.83210319 -1.14111888 0 -1.73688471
		 -0.99456793 0 -1.8325398 -2.2179749 0 -2.99704981 -2.029555321 0 -3.0094749928 -1.13558173 0 -4.63995838
		 -0.9786613 0 -4.60623598 -1.28917289 0 -6.07087326 -0.24058387 -0.48932847 -0.16351886
		 -0.59648395 -0.48932847 0.014554977 -0.23758593 -0.48932847 0.16708833 -1.073089361 -0.35097262 0.73620725
		 -1.23992693 -0.35097262 0.65015411 -1.43262291 0 1.44988763 -1.5427804 0 1.40342081
		 -2.23077178 0 2.52604532 -2.31682277 0 2.30091834 -3.14546895 0 2.3287735 -4.54514885 0 3.96749139
		 -3.10443664 0 2.42591143 0.23637915 -0.48932847 0.12464402 0.5107488 -0.48932847 -0.026544238
		 0.23620643 -0.48932847 -0.10125121 1.25992477 0 0.77599889 1.04986167 0 0.83213925
		 0.83157843 0 2.29355097 0.69993168 0 2.32542229 1.56020033 0 3.12095404 1.5076189 0 3.22162485
		 4.37836742 0 3.51394105 0.35316113 -0.48932847 -0.27238494 0.55407828 -0.48932847 -0.12620057
		 2.44651151 0 -2.078765154 2.55800104 0 -1.93468237 3.93696952 0 -2.97604513 -4.75026083 0 -0.86457676
		 -5.26688147 0 -0.83560169 -3.43674922 0 -1.29831719 -3.43892622 0 -1.22155917 -1.64129281 0 -0.66478348
		 -1.68265271 0 -0.5614143 -0.8157047 -0.35097262 -0.31656244 -0.87433922 -0.35097262 -0.19577134
		 0.16389081 -0.57343102 -0.18224727 -0.068290561 -0.60268474 -0.28408182 -0.57753545 -0.46432886 -0.74967527
		 -1.067843318 -0.11335624 -1.78471231 -2.12376523 -0.11335624 -3.0032625198 -1.057121515 -0.11335624 -4.62309265
		 -3.12495279 -0.11335624 2.37734246 -2.27379727 -0.11335624 2.41348171 -1.48770165 -0.11335624 1.42665422
		 -1.15650809 -0.46432886 0.69318068 -0.46234459 -0.60268474 0.067932658 -0.46634555 -0.60268474 -0.053338774
		 -0.84502196 -0.46432886 -0.25616691 -1.66197276 -0.11335624 -0.61309886 -3.4378376 -0.11335624 -1.25993824
		 1.53390956 -0.11335624 3.17128944 0.76575506 -0.11335624 2.30948663 1.15489328 -0.11335624 0.80406904
		 0.41338199 -0.60268474 0.047363594 0.39910373 -0.60268474 -0.073907837 0.45361972 -0.60268474 -0.19929275
		 2.50225616 -0.11335624 -2.0067236423 -0.00071146415 -0.80344957 -0.081054546 -0.045891687 -0.80344951 -0.18876791
		 -0.12502111 -0.72845441 -0.15148599 -0.080943167 -0.72845447 -0.081054538 -0.15987885 -0.72845441 -0.10900492
		 -0.15789543 -0.72845441 0.10972075 -0.00071146275 -0.72845447 0.079408884 0.15567413 -0.72845441 0.081640109
		 0.15555981 -0.72845441 -0.067809403 0.07952024 -0.72845441 -0.081054546 -0.028930359 -0.72845441 0.18390498
		 0.11059012 -0.72845441 -0.17675328 -0.23905179 -0.58945823 0.0054356307 -0.15856504 -0.72845441 0.035876341
		 1.54958701 0 0.96411699 2.047935963 0 0.978558 2.32821321 0 1.10143173 1.22869742 0 0.88663149
		 1.14237821 -0.11335624 0.85248476 1.99530303 0 1.04290998 1.52594697 0 1.018715978
		 2.017542839 -0.11205627 1.015718579 1.53820109 -0.11205627 0.99041378 1.24445105 -0.11205627 0.83081925
		 1.14718485 -0.11335625 0.83388978 -0.036590468 0 1.57211137 1.62625265 0 -0.023203831
		 1.3549881 0 -0.84899825 1.31259453 -0.11335624 -0.95713222 1.22929096 0 -1.028409243
		 0.14629863 0 -1.45361781 -1.89291799 0 0.41808701 0.15491259 -0.35097262 -0.98721308
		 0.77815706 -0.35097262 -0.57054621 0.86489975 -0.46432886 -0.49282593 0.97892141 -0.35097262 -0.43950334
		 1.139498 -0.35097262 -0.024661429 0.83139312 -0.52942085 0.31694099 0.78896707 -0.64277709 0.43064472
		 0.66702378 -0.52942085 0.49918067 -0.039857082 -0.35097262 0.87550867 -0.73848277 -0.25683478 -1.33232152
		 -0.82268941 -0.37019101 -1.26719379 -0.90689611 -0.25683478 -1.20206606 -1.2284987 0 -0.49067295
		 -1.25349736 -0.11335624 -0.4346329 -1.27849603 0 -0.37859282 -1.4539758 0.063228048 0.94701076
		 -1.38472712 -0.050128192 0.98014069 -1.31547832 0.063228048 1.013270617 -0.038223773 0.13942981 1.22380996
		 0.85844272 -0.18209025 0.66565996 0.97193015 -0.29544649 0.6173569 1.045658946 -0.18209025 0.54646993
		 1.38287532 0 -0.02393263 1.14758646 -0.19499624 -0.66182435 1.069378853 -0.30835247 -0.74255264
		 0.98435569 -0.19499624 -0.81705129 0.15060562 0.15961756 -1.22041547;
	setAttr -s 266 ".ed";
	setAttr ".ed[0:165]"  0 107 0 0 1 0 1 2 0 4 3 0 4 0 0 6 5 0 3 6 0 2 7 0 5 7 0
		 9 1 0 10 11 0 11 12 0 12 7 0 3 13 0 13 53 0 5 24 0 36 35 0 35 34 0 10 51 0 53 52 0
		 14 61 0 60 14 0 14 17 0 17 62 0 16 15 0 17 123 0 19 63 0 18 125 0 19 21 0 21 64 0
		 20 18 0 21 23 0 23 65 0 22 20 0 23 24 0 24 22 0 25 94 0 26 71 0 25 58 0 58 72 0 59 26 0
		 27 70 0 26 29 0 29 69 0 28 27 0 29 129 0 31 68 0 30 131 0 31 33 0 33 67 0 32 30 0
		 33 34 0 34 66 0 36 32 0 37 39 0 39 60 0 38 78 0 37 121 0 41 77 0 40 135 0 39 79 0
		 38 48 0 48 80 0 47 39 0 41 43 0 43 76 0 42 99 0 43 45 0 45 75 0 44 42 0 45 46 0 46 44 0
		 9 46 0 48 117 0 50 81 0 49 111 0 50 51 0 51 49 0 52 55 0 55 74 0 54 52 0 55 57 0
		 57 73 0 56 54 0 57 128 0 58 126 0 8 37 0 8 27 0 2 108 0 5 112 0 14 39 0 25 15 0 35 4 0
		 61 15 0 62 16 0 63 18 0 64 20 0 65 22 0 61 62 0 62 124 0 63 64 0 64 65 0 66 36 0
		 67 32 0 68 30 0 69 28 0 70 26 0 71 25 0 72 59 0 73 56 0 74 54 0 66 67 0 67 68 0 68 130 0
		 69 70 0 70 71 0 71 72 0 72 127 0 73 74 0 75 44 0 76 42 0 77 40 0 78 37 0 79 38 0
		 80 47 0 81 49 0 75 76 0 76 100 0 77 134 0 78 79 0 79 80 0 80 116 0 24 65 0 51 81 0
		 46 75 0 35 66 0 52 74 0 61 83 0 82 83 0 15 84 0 83 84 0 84 85 0 85 82 0 25 86 0 27 87 0
		 86 95 0 87 88 0 88 85 0 85 86 0 37 89 0 39 90 0 89 90 0 60 91 0 90 91 0 91 88 0 88 89 0
		 8 92 0 88 92 0 92 89 0 92 87 0 86 84 0 82 91 0 14 93 0 93 83 0 91 93 0 94 27 0;
	setAttr ".ed[166:265]" 95 87 0 71 94 0 94 95 0 95 88 0 40 96 0 96 97 0 97 98 0
		 98 46 0 99 105 0 100 106 0 98 101 0 101 102 0 102 99 0 99 100 0 100 41 0 97 103 0
		 96 104 0 103 101 0 104 102 0 105 40 0 106 77 0 103 104 0 104 105 0 105 106 0 98 103 0
		 2 46 0 107 132 0 41 107 0 107 30 0 108 136 0 109 50 0 110 81 0 111 139 0 112 140 0
		 40 108 0 108 109 0 109 110 0 110 111 0 111 112 0 31 113 0 113 57 0 56 18 0 19 112 0
		 16 58 0 29 59 0 114 14 0 115 47 0 116 138 0 117 137 0 118 38 0 119 38 0 120 78 0
		 121 133 0 122 8 0 17 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0
		 120 121 0 121 122 0 122 28 0 123 19 0 124 63 0 125 16 0 126 56 0 127 73 0 128 59 0
		 129 31 0 130 69 0 131 28 0 132 122 0 133 41 0 134 120 0 135 119 0 136 118 0 137 109 0
		 138 110 0 139 115 0 140 114 0 123 124 0 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0
		 129 130 0 130 131 0 131 132 0 132 133 0 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0
		 138 139 0 139 140 0 140 123 0;
	setAttr -s 126 -ch 524 ".fc[0:125]" -type "polyFaces" 
		f 4 138 140 141 142
		mu 0 4 64 87 88 6
		f 4 -94 98 94 24
		mu 0 4 62 66 67 47
		f 4 -95 99 249 232
		mu 0 4 47 67 126 127
		f 4 -96 100 96 30
		mu 0 4 48 68 69 49
		f 4 -97 101 97 33
		mu 0 4 49 69 70 50
		f 3 132 -33 34
		mu 0 3 5 70 4
		f 4 145 169 147 148
		mu 0 4 89 97 25 6
		f 4 37 116 108 40
		mu 0 4 7 76 77 57
		f 4 114 106 42 43
		mu 0 4 74 75 7 8
		f 4 254 237 -44 45
		mu 0 4 131 132 74 8
		f 4 112 -47 48 49
		mu 0 4 72 73 9 10
		f 4 111 -50 51 52
		mu 0 4 71 72 10 11
		f 4 151 153 154 155
		mu 0 4 91 92 93 25
		f 4 258 241 227 218
		mu 0 4 135 136 122 123
		f 4 60 130 124 63
		mu 0 4 61 84 85 35
		f 4 127 180 64 65
		mu 0 4 81 102 14 15
		f 4 126 -66 67 68
		mu 0 4 80 81 15 16
		f 3 134 -69 70
		mu 0 3 17 80 16
		f 4 222 213 263 246
		mu 0 4 117 118 140 141
		f 3 133 -75 76
		mu 0 3 20 86 19
		f 3 136 110 80
		mu 0 3 21 79 44
		f 4 118 -80 81 82
		mu 0 4 78 79 22 23
		f 4 117 252 235 -109
		mu 0 4 77 129 130 57
		f 3 -156 157 158
		mu 0 3 91 25 94
		f 7 194 -51 -54 16 92 4 0
		mu 0 7 109 27 28 12 59 29 52
		f 4 191 -73 9 2
		mu 0 4 54 17 53 34
		f 4 221 -247 264 247
		mu 0 4 116 117 141 142
		f 12 -6 -7 13 14 19 -81 -84 207 -31 -34 -36 -16
		mu 0 12 41 42 58 43 63 21 44 45 48 49 50 5
		f 4 220 -248 265 -26
		mu 0 4 1 116 142 125
		f 8 193 -1 1 -10 72 -71 -68 -65
		mu 0 8 14 109 52 34 53 17 16 15
		f 4 261 -215 224 -244
		mu 0 4 138 139 119 120
		f 12 205 206 -82 -79 -20 -15 -14 -4 -93 17 -52 -49
		mu 0 12 9 115 23 22 21 63 43 58 29 59 11 10
		f 3 -160 -158 -147
		mu 0 3 90 94 25
		f 3 -22 -56 -91
		mu 0 3 40 13 61
		f 3 -149 -142 -161
		mu 0 3 89 6 88
		f 3 115 -38 -107
		mu 0 3 75 76 7
		f 3 -18 135 -53
		mu 0 3 11 59 71
		f 4 -123 129 -61 -55
		mu 0 4 51 83 84 61
		f 4 -155 -162 -143 -148
		mu 0 4 25 93 64 6
		f 4 163 -139 161 164
		mu 0 4 95 87 64 93
		f 4 -99 -21 22 23
		mu 0 4 67 66 0 1
		f 4 248 -100 -24 25
		mu 0 4 125 126 67 1
		f 4 -101 -27 28 29
		mu 0 4 69 68 2 3
		f 4 -102 -30 31 32
		mu 0 4 70 69 3 4
		f 4 -104 -112 102 53
		mu 0 4 28 72 71 12
		f 4 -105 -113 103 50
		mu 0 4 27 73 72 28
		f 4 -106 -238 255 238
		mu 0 4 26 74 132 133
		f 4 41 -115 105 44
		mu 0 4 60 75 74 26
		f 3 -108 167 -37
		mu 0 3 46 76 96
		f 4 -117 107 38 39
		mu 0 4 77 76 46 24
		f 4 251 -118 -40 85
		mu 0 4 128 129 77 24
		f 4 -111 -119 109 83
		mu 0 4 44 79 78 45
		f 4 -121 -127 119 69
		mu 0 4 32 81 80 33
		f 4 179 -128 120 66
		mu 0 4 101 102 81 32
		f 4 226 -242 259 242
		mu 0 4 121 122 136 137
		f 3 -130 -57 -124
		mu 0 3 84 83 56
		f 4 -131 123 61 62
		mu 0 4 85 84 56 18
		f 4 262 -214 223 214
		mu 0 4 139 140 118 119
		f 3 -98 -133 35
		mu 0 3 50 70 5
		f 3 -126 -134 77
		mu 0 3 36 86 20
		f 3 -120 -135 71
		mu 0 3 33 80 17
		f 3 -136 -17 -103
		mu 0 3 71 59 12
		f 3 78 79 -137
		mu 0 3 21 22 79
		f 4 93 139 -141 -138
		mu 0 4 65 62 88 87
		f 4 36 168 -146 -144
		mu 0 4 46 96 97 89
		f 4 54 150 -152 -150
		mu 0 4 51 61 92 91
		f 4 55 152 -154 -151
		mu 0 4 61 13 93 92
		f 4 86 149 -159 -157
		mu 0 4 30 51 91 94
		f 4 -88 156 159 -145
		mu 0 4 60 30 94 90
		f 4 -92 143 160 -140
		mu 0 4 62 46 89 88
		f 4 20 137 -164 -163
		mu 0 4 40 65 87 95
		f 4 21 162 -165 -153
		mu 0 4 13 40 95 93
		f 4 -168 -116 -42 -166
		mu 0 4 96 76 75 60
		f 4 -169 165 144 -167
		mu 0 4 97 96 60 90
		f 3 -170 166 146
		mu 0 3 25 97 90
		f 7 -174 176 177 178 -67 -70 -72
		mu 0 7 17 100 103 104 101 32 33
		f 3 190 183 -177
		mu 0 3 100 105 103
		f 4 189 -176 -180 174
		mu 0 4 107 108 102 101
		f 4 -181 175 186 -59
		mu 0 4 14 102 108 82
		f 4 187 184 -178 -184
		mu 0 4 105 106 104 103
		f 4 -179 -185 188 -175
		mu 0 4 101 104 106 107
		f 4 182 -188 -182 -172
		mu 0 4 98 106 105 99
		f 4 -189 -183 -171 -186
		mu 0 4 107 106 98 31
		f 4 -122 -187 -190 185
		mu 0 4 31 82 108 107
		f 3 181 -191 -173
		mu 0 3 99 105 100
		f 4 225 -243 260 243
		mu 0 4 120 121 137 138
		f 4 228 -240 257 -219
		mu 0 4 123 124 134 135
		f 4 229 -239 256 239
		mu 0 4 124 26 133 134
		f 7 -201 170 171 172 173 -192 88
		mu 0 7 110 31 98 99 100 17 54
		f 9 7 -13 -12 -11 18 -77 -197 -202 -89
		mu 0 9 54 39 38 37 55 20 19 111 110
		f 4 -198 -203 196 74
		mu 0 4 86 112 111 19
		f 4 -204 197 125 75
		mu 0 4 113 112 86 36
		f 9 -205 -76 -78 -19 10 11 12 -9 89
		mu 0 9 114 113 36 20 55 37 38 39 41
		f 6 15 -35 -32 -29 208 -90
		mu 0 6 41 5 4 3 2 114
		f 4 210 -236 253 -46
		mu 0 4 8 57 130 131
		f 4 209 -39 91 -25
		mu 0 4 47 24 46 62
		f 4 250 -86 -210 -233
		mu 0 4 127 128 24 47
		f 3 -41 -211 -43
		mu 0 3 7 57 8
		f 3 -23 -212 -221
		mu 0 3 1 40 116
		f 5 -64 -213 -222 211 90
		mu 0 5 61 35 117 116 40
		f 4 -125 131 -223 212
		mu 0 4 35 85 118 117
		f 4 -224 -132 -63 73
		mu 0 4 119 118 85 18
		f 4 -225 -74 -62 -216
		mu 0 4 120 119 18 56
		f 3 -217 -226 215
		mu 0 3 56 121 120
		f 4 56 -218 -227 216
		mu 0 4 56 83 122 121
		f 4 -228 217 122 57
		mu 0 4 123 122 83 51
		f 4 -87 -220 -229 -58
		mu 0 4 51 30 124 123
		f 4 -45 -230 219 87
		mu 0 4 60 26 124 30
		f 4 -232 -249 230 26
		mu 0 4 68 126 125 2
		f 4 -250 231 95 27
		mu 0 4 127 126 68 48
		f 4 -208 -234 -251 -28
		mu 0 4 48 45 128 127
		f 4 -110 -235 -252 233
		mu 0 4 45 78 129 128
		f 4 -253 234 -83 84
		mu 0 4 130 129 78 23
		f 5 -254 -85 -207 -206 -237
		mu 0 5 131 130 23 115 9
		f 4 113 -255 236 46
		mu 0 4 73 132 131 9
		f 4 -256 -114 104 47
		mu 0 4 133 132 73 27
		f 4 -257 -48 -195 192
		mu 0 4 134 133 27 109
		f 4 -258 -193 -194 -241
		mu 0 4 135 134 109 14
		f 4 128 -259 240 58
		mu 0 4 82 136 135 14
		f 4 -260 -129 121 59
		mu 0 4 137 136 82 31
		f 4 -261 -60 200 195
		mu 0 4 138 137 31 110
		f 4 201 -245 -262 -196
		mu 0 4 110 111 139 138
		f 4 202 -246 -263 244
		mu 0 4 111 112 140 139
		f 4 -264 245 203 198
		mu 0 4 141 140 112 113
		f 4 -265 -199 204 199
		mu 0 4 142 141 113 114
		f 4 -266 -200 -209 -231
		mu 0 4 125 142 114 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode mesh -n "polySurfaceShape1" -p "inner_003";
	rename -uid "AD2CEC9C-47DC-D00C-E3E1-34B513AEC4A4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[0:38]";
	setAttr ".pv" -type "double2" 0.52169811725616455 0.38492298126220703 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0.5 0.390625 0.4957734
		 0.38870719 0.49606931 0.39246002 0.49342486 0.39521655 0.49689928 0.39796248 0.49570143
		 0.40034914 0.49483645 0.38016355 0.48507363 0.37577787 0.4912852 0.37091228 0.4920477
		 0.36206514 0.48885262 0.360468 0.47977635 0.36774045 0.47994033 0.36666113 0.50516355
		 0.38016355 0.51455432 0.37018257 0.50210768 0.35594845 0.50491434 0.35430989 0.52229965
		 0.36317113 0.51456678 0.37674949 0.51939142 0.38143542 0.52169812 0.38492298 0.48361155
		 0.38410336 0.48813733 0.38709369 0.4905093 0.38460627 0.48940969 0.3810558 0.5 0.36983645
		 0.48422056 0.37130997 0.48528114 0.36875552 0.48985836 0.35843816 0.46875 0.34375
		 0.5 0.359375 0.5172255 0.37243891 0.50299877 0.35628903 0.50531465 0.35493696 0.53125
		 0.34375 0.51058149 0.38067377 0.51891345 0.38204435 0.52537978 0.39443949 0.52747166
		 0.39375401 0.53125 0.40625 0.50363415 0.38737619 0.5 0.40625 0.46875 0.40625 0.47404727
		 0.37942225 0.48848805 0.38805768 0.49128771 0.38608778 0.48749548 0.37835124 0.49341562
		 0.38628122 0.49573436 0.39240429 0.49238902 0.39298344 0.49604917 0.39787468 0.512034
		 0.37123021 0.5 0.34375 0.52423078 0.35996649 0.53125 0.375 0.51265299 0.39859581
		 0.52117455 0.38588464 0.51558363 0.37536797 0.48732308 0.37840554 0.46875 0.375 0.47826701
		 0.36422727 0.48799509 0.37118179 0.5114038 0.37932774 0.49596062 0.38672888 0.48211625
		 0.38350061;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 64 ".pt[0:63]" -type "float3"  0 -0.5 9.25 9.25 -0.5 9.25 
		9.25 -0.5 0 -9.25 -0.5 0 -9.25 -0.5 9.25 0 -0.5 -9.25 -9.25 -0.5 -9.25 9.25 -0.5 
		-9.25 0 -0.5 0.36218056 5.2573299 -0.5 4.4499164 3.7452879 -0.5 -4.8961368 5.9108977 
		-0.5 -5.7540917 7.1008186 -0.5 -5.5511842 -7.6820145 -0.5 -0.68538803 0.11968885 
		-0.5 -0.42643261 -0.11968885 -0.5 -0.29792845 -0.66389501 -0.5 -0.65853983 -0.47610232 
		-0.5 -0.8212443 -1.1550667 -0.5 -1.6953948 -0.95274943 -0.5 -1.8274491 -2.245863 
		-0.5 -2.9541907 -1.9462373 -0.5 -2.9739492 -1.1688635 -0.5 -4.5897522 -0.91778874 
		-0.5 -4.53578 -1.2723492 -0.5 -5.9916487 -0.33181971 -0.5 -0.11965045 -0.58869982 
		-0.5 0.014365036 -0.32392216 -0.5 0.11972725 -1.2146906 -0.5 0.75370246 -1.4540457 
		-0.5 0.63024557 -1.2148365 -0.5 1.5458016 -1.4541956 -0.5 1.4448346 -2.1975787 -0.5 
		2.5037589 -2.2906699 -0.5 2.2602131 -3.1357002 -0.5 2.2243338 -4.4858351 -0.5 3.9157159 
		-3.0326443 -0.5 2.4683027 0.31189126 -0.5 0.11968885 0.50408357 -0.5 -0.026197836 
		0.28370735 -0.5 -0.11968885 1.2726189 -0.5 0.75808543 1.007025 -0.5 0.82906663 0.88763762 
		-0.5 2.2474215 0.62388641 -0.5 2.3112745 1.5731317 -0.5 3.0164864 1.4546527 -0.5 
		3.2433221 4.3212299 -0.5 3.4680843 0.34855241 -0.5 -0.26883033 0.54684758 -0.5 -0.12455367 
		2.3962038 -0.5 -2.075392 2.5430002 -0.5 -1.8856803 3.8855922 -0.5 -2.9372079 3.8757241 
		-0.5 -3.074986 -4.6882701 -0.5 -0.85329407 -5.1981492 -0.5 -0.82469714 -3.3893983 
		-0.5 -1.369575 -3.3965499 -0.5 -1.1174172 -1.5957998 -0.5 -0.71627623 -1.6847684 
		-0.5 -0.49391973 -0.78168571 -0.5 -0.36058366 -0.88630325 -0.5 -0.14506422 0 -0.5 
		0.11968885 0.11968885 -0.5 -0.11968885 -0.11968885 -0.5 -0.11968885;
	setAttr -s 64 ".vt[0:63]"  0 0.5 0.125 0.125 0.5 0.125 0.125 0.5 0 -0.125 0.5 0
		 -0.125 0.5 0.125 0 0.5 -0.125 -0.125 0.5 -0.125 0.125 0.5 -0.125 0 0.5 0.004894332
		 0.071044996 0.5 0.060134005 0.050611999 0.5 -0.066164009 0.079876997 0.5 -0.077757999
		 0.095957011 0.5 -0.075015999 -0.103811 0.5 -0.0092620002 0.0016174169 0.5 -0.0057626027
		 -0.0016174169 0.5 -0.00402606 -0.0089715542 0.5 -0.0088991867 -0.0064338152 0.5 -0.011097896
		 -0.015609009 0.5 -0.02291074 -0.012874993 0.5 -0.024695259 -0.0303495 0.5 -0.039921496
		 -0.026300505 0.5 -0.040188503 -0.015795453 0.5 -0.062023681 -0.01240255 0.5 -0.061294321
		 -0.017193908 0.5 -0.080968224 -0.00448405 0.5 -0.001616898 -0.0079554031 0.5 0.00019412211
		 -0.0043773265 0.5 0.0016179357 -0.016414737 0.5 0.010185168 -0.019649265 0.5 0.0085168323
		 -0.01641671 0.5 0.020889211 -0.019651292 0.5 0.019524792 -0.029697008 0.5 0.03383458
		 -0.030954998 0.5 0.03054342 -0.042374328 0.5 0.030058563 -0.060619395 0.5 0.052915081
		 -0.04098168 0.5 0.033355441 0.0042147469 0.5 0.0016174169 0.0068119401 0.5 -0.00035402481
		 0.0038338832 0.5 -0.0016174169 0.017197553 0.5 0.010244397 0.013608446 0.5 0.011203603
		 0.011995103 0.5 0.03037056 0.0084308973 0.5 0.031233439 0.021258537 0.5 0.04076333
		 0.019657468 0.5 0.043828677 0.058394998 0.5 0.046866003 0.0047101676 0.5 -0.0036328423
		 0.0073898318 0.5 -0.0016831578 0.032381132 0.5 -0.028045837 0.034364868 0.5 -0.025482167
		 0.052508004 0.5 -0.039692 0.05237465 0.5 -0.041553866 -0.063354999 0.5 -0.011531001
		 -0.070245259 0.5 -0.011144556 -0.045802679 0.5 -0.018507771 -0.045899324 0.5 -0.015100233
		 -0.021564862 0.5 -0.0096794087 -0.022767141 0.5 -0.006674591 -0.01056332 0.5 -0.0048727524
		 -0.011977071 0.5 -0.0019603274 0 0.5 0.0016174169 0.0016174169 0.5 -0.0016174169
		 -0.0016174169 0.5 -0.0016174169;
	setAttr -s 102 ".ed[0:101]"  0 8 1 0 1 0 1 2 0 4 3 0 4 0 0 6 5 0 3 6 0
		 2 7 0 5 7 0 9 1 1 10 11 1 11 12 1 12 7 1 3 13 1 13 54 1 52 10 1 5 24 1 36 35 1 35 34 1
		 52 51 1 54 53 1 14 15 1 15 63 1 63 62 1 62 14 1 14 17 1 17 16 1 16 15 1 17 19 1 19 18 1
		 18 16 1 19 21 1 21 20 1 20 18 1 21 23 1 23 22 1 22 20 1 23 24 1 24 22 1 25 27 1 27 61 1
		 61 63 1 63 25 1 26 25 1 25 59 1 59 60 1 60 26 1 27 26 1 26 29 1 29 28 1 28 27 1 29 31 1
		 31 30 1 30 28 1 31 33 1 33 32 1 32 30 1 33 34 1 34 36 1 36 32 1 37 39 1 39 62 1 62 61 1
		 61 37 1 38 37 1 37 41 1 41 40 1 40 38 1 39 38 1 38 48 1 48 47 1 47 39 1 41 43 1 43 42 1
		 42 40 1 43 45 1 45 44 1 44 42 1 45 46 1 46 44 1 9 46 1 48 50 1 50 49 1 49 47 1 50 51 1
		 51 49 1 53 56 1 56 55 1 55 53 1 56 58 1 58 57 1 57 55 1 58 60 1 59 57 1 61 8 1 8 37 1
		 8 27 1 2 38 1 5 14 1 14 39 1 25 15 1 35 4 1;
	setAttr -s 39 -ch 196 ".fc[0:38]" -type "polyFaces" 
		f 4 21 22 23 24
		mu 0 4 40 63 6 13
		f 4 -22 25 26 27
		mu 0 4 63 0 1 47
		f 4 -27 28 29 30
		mu 0 4 47 1 2 48
		f 4 -30 31 32 33
		mu 0 4 48 2 3 49
		f 4 -33 34 35 36
		mu 0 4 49 3 4 50
		f 3 -36 37 38
		mu 0 3 50 4 5
		f 4 39 40 41 42
		mu 0 4 46 61 25 6
		f 4 43 44 45 46
		mu 0 4 7 46 24 58
		f 4 47 48 49 50
		mu 0 4 61 7 8 26
		f 4 -50 51 52 53
		mu 0 4 26 8 9 27
		f 4 -53 54 55 56
		mu 0 4 27 9 10 28
		f 4 -56 57 58 59
		mu 0 4 28 10 11 12
		f 4 60 61 62 63
		mu 0 4 51 62 13 25
		f 4 64 65 66 67
		mu 0 4 57 51 14 31
		f 4 68 69 70 71
		mu 0 4 62 57 18 35
		f 4 -67 72 73 74
		mu 0 4 31 14 15 32
		f 4 -74 75 76 77
		mu 0 4 32 15 16 33
		f 3 -77 78 79
		mu 0 3 33 16 17
		f 4 -71 81 82 83
		mu 0 4 35 18 19 36
		f 3 -83 84 85
		mu 0 3 36 19 20
		f 3 86 87 88
		mu 0 3 21 22 44
		f 4 -88 89 90 91
		mu 0 4 44 22 23 45
		f 4 -91 92 -46 93
		mu 0 4 45 23 58 24
		f 3 -64 94 95
		mu 0 3 51 25 30
		f 9 -51 -54 -57 -60 17 101 4 0 96
		mu 0 9 61 26 27 28 12 60 29 52 30
		f 8 -68 -75 -78 -80 -81 9 2 97
		mu 0 8 57 31 32 33 17 53 34 54
		f 11 -72 -84 -86 -20 15 10 11 12 -9 98 99
		mu 0 11 62 35 36 20 56 55 37 38 39 41 40
		f 16 -6 -7 13 14 20 -89 -92 -94 -45 100 -28 -31 -34 -37 -39 -17
		mu 0 16 41 42 59 43 64 21 44 45 24 46 63 47 48 49 50 5
		f 7 16 -38 -35 -32 -29 -26 -99
		mu 0 7 41 5 4 3 2 1 40
		f 9 -96 -1 1 -10 80 -79 -76 -73 -66
		mu 0 9 51 30 52 34 53 17 16 15 14
		f 10 7 -13 -12 -11 -16 19 -85 -82 -70 -98
		mu 0 10 54 39 38 37 55 56 20 19 18 57
		f 14 -47 -93 -90 -87 -21 -15 -14 -4 -102 18 -58 -55 -52 -49
		mu 0 14 7 58 23 22 21 64 43 59 29 60 11 10 9 8
		f 3 -97 -95 -41
		mu 0 3 61 30 25
		f 3 -25 -62 -100
		mu 0 3 40 13 62
		f 3 -43 -23 -101
		mu 0 3 46 6 63
		f 3 -44 -48 -40
		mu 0 3 46 7 61
		f 3 -19 -18 -59
		mu 0 3 11 60 12
		f 3 -65 -69 -61
		mu 0 3 51 57 62
		f 3 -63 -24 -42
		mu 0 3 25 13 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "Crystal_01";
	rename -uid "0C63F1AC-4FE6-E414-F3E0-CF9053FF26F5";
createNode transform -n "geo" -p "Crystal_01";
	rename -uid "F3BC9CF6-4735-6220-31E1-BDBD08C3C16C";
createNode mesh -n "geoShape" -p "geo";
	rename -uid "7580BCBA-480A-813C-B368-15AEE4BED9B6";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[1:2]" "f[4:5]" "f[8:10]" "f[13:15]" "f[20:21]" "f[28]" "f[35]" "f[41]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[85]" "e[111]" "e[115]" "e[117]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[44]" "f[53:54]" "f[60]";
	setAttr ".gtag[3].gtagnm" -type "string" "front";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 13 "f[6]" "f[11]" "f[16:17]" "f[19]" "f[23:24]" "f[26:27]" "f[32]" "f[34]" "f[36]" "f[39:40]" "f[46]" "f[70]" "f[79]";
	setAttr ".gtag[4].gtagnm" -type "string" "left";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 12 "f[0]" "f[3]" "f[29]" "f[37]" "f[43]" "f[48]" "f[64]" "f[66]" "f[69]" "f[72]" "f[74]" "f[77:78]";
	setAttr ".gtag[5].gtagnm" -type "string" "right";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 10 "f[7]" "f[12]" "f[18]" "f[22]" "f[25]" "f[30]" "f[33]" "f[38]" "f[45]" "f[50]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 12 "f[31]" "f[42]" "f[47]" "f[49]" "f[51:52]" "f[55:59]" "f[61:63]" "f[65]" "f[67:68]" "f[71]" "f[73]" "f[75:76]";
	setAttr ".pv" -type "double2" 0.50692457744047359 0.48842997590272935 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.53065848 0.076303065
		 0.51057041 0 0.46852064 0 0.52858913 0.007833004 0.46852064 0.013057828 0.40597707
		 0.074255109 0.58814037 0.10527492 0.56181788 0.12332487 0.52858913 0.026112676 0.49855191
		 0.026112676 0.37241161 0.12409413 0.592839 0.13681012 0.57170165 0.12476993 0.37241161
		 0.16633642 0.3321445 0.34611028 0.63918281 0.37588352 0.6373105 0.40488827 0.60346019
		 0.18272495 0.49409199 0.16879612 0.55764616 0.49920309 0.48005569 0.87964916 0.51301813
		 0.94148719 0.46853477 0.89707565 0.31453991 0.45625955 0.36963379 0.53276491 0.68546009
		 0.68088949 0.67715955 0.64510119 0.32572562 0.47065443 0.40043133 0.5913161 0.62192845
		 0.60859835 0.56696165 0.58640254 0.32299834 0.53337443 0.35652184 0.74252057 0.53731465
		 0.61067426 0.64921808 0.78852904 0.52600932 1 0.47237319 0.86523664 0.43764895 0.55531621
		 0.35000181 0.70863342 0.40193725 0.82103562 0.46438068 0.92195606 0.53962719 0.99140573
		 0.46706945 0.4905594;
	setAttr ".uvst[1].uvsn" -type "string" "uvSet1";
	setAttr -s 50 ".uvst[1].uvsp[0:49]" -type "float2" 0.16766384 0.10324752
		 0.16217089 0.070026934 0.29514265 0.077275217 0.02911073 0.044525564 0.45297062 0.047933519
		 0.3258504 0.10149115 0.042775333 0.12809467 0.13502851 0.14357483 0.64258683 0.060202688
		 0.34118012 0.1442346 0.078451753 0.15514022 0.73756504 0.14481416 0.44366527 0.18046293
		 0.33923593 0.33464259 0.76696849 0.36017698 0.074680865 0.38505235 0.76091707 0.19451818
		 0.64073598 0.18257242 0.16404533 0.46593967 0.61849725 0.79222196 0.43171167 0.80716747
		 0.36562297 0.42910996 0.30793545 0.49472329 0.072862983 0.59106642 0.44051117 0.44145545
		 0.28680244 0.54493868 0.73679328 0.55976051 0.16099793 0.54072469 0.36101109 0.49524608
		 0.37594944 0.67461628 0.18362859 0.5615409 0.78380251 0.71407455 0.11549795 0.89543867
		 0.61003518 0.77986139 0.59555268 0.51406407 0.43209505 0.64555353 0.33861339 0.74195319
		 0.25910211 0.82850581 0.79504251 0.80890715 0.62161398 0.45852658 0.89835119 0.044525564
		 0.73383474 0.060202688 0.9120158 0.12809467 0.94769228 0.15514022 0.94392133 0.38505235
		 0.94210356 0.59106642 0.85348558 0.62175947 0.98473847 0.89543867 0.67367995 0.84525621
		 0.57856035 0.93233442;
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".vt[0:42]"  -0.10970142 -0.51541328 -0.037295073 -0.032975227 -0.60823345 -0.012858558
		 -0.032975227 -0.60823345 0.038293593 -0.0085687339 -0.59870481 -0.034777775 0.0077104047 -0.59234905 0.038293593
		 -0.10764197 -0.51790452 0.1143758 -0.037969366 -0.48017001 -0.10721979 -0.11898819 -0.45821285 -0.07519947
		 0.048387915 -0.57646823 -0.034777775 0.048387915 -0.57646823 0.0017615594 -0.11659151 -0.45727706 0.15520707
		 -0.076969966 -0.44180846 -0.11293557 0.11470029 -0.45645499 -0.087222621 0.015029013 -0.4058907 0.15520707
		 -0.15792495 -0.18720174 0.20419067 0.144972 -0.15098357 -0.16931123 -0.10729232 -0.11570024 -0.16703373
		 0.1176827 -0.38595462 -0.12585595 0.14429244 -0.40289855 0.0071868608 -0.18982553 -0.00096940994 -0.070124656
		 0.015659533 -0.035697937 0.21199903 -0.1139161 -0.053208828 0.22560608 -0.19363242 0.039857388 0.15858617
		 0.018707471 0.22004604 -0.22560602 0.21057695 -0.011484146 0.040058903 -0.13446277 0.17651081 -0.2155087
		 0.19191933 0.067290306 0.075847983 -0.20508891 0.11108303 0.12112197 0.19732261 0.1321063 -0.14832193
		 -0.20639694 0.10510588 -0.081456631 0.0023535229 0.25379562 0.18246785 -0.11788633 0.040598869 0.21531668
		 -0.072345331 0.2950182 0.17453647 -0.21057695 0.13463163 -0.045392066 0.1205996 0.350986 -0.18151879
		 -0.037200987 0.60823345 -0.031639457 0.12064126 0.44429827 0.033607088 -0.093122154 0.39052916 0.11929008
		 -0.12517735 0.51329565 0.04332976 0.11354068 0.46183062 0.02426162 0.058481306 0.5977788 -0.048205167
		 0.00038761646 0.48302937 0.038276382 0.083074927 0.53705454 -0.01583606;
	setAttr -s 121 ".ed[0:120]"  0 1 0 1 2 0 2 0 1 0 3 1 3 1 0 1 4 1 4 2 0
		 2 5 0 5 0 0 0 6 1 6 3 0 3 4 1 4 5 1 5 7 1 7 0 0 7 6 1 6 8 1 8 3 0 3 9 1 9 4 0 4 10 1
		 10 5 0 10 7 1 7 11 0 11 6 0 6 12 1 12 8 0 8 9 0 9 13 1 13 4 0 13 10 0 10 14 0 14 7 1
		 11 15 1 15 6 1 7 16 1 16 11 0 6 17 0 17 12 0 12 9 1 9 18 0 18 13 0 13 14 1 14 19 1
		 19 7 0 16 15 1 15 17 0 19 16 1 17 18 1 18 12 0 39 42 0 42 41 1 41 39 1 13 21 1 21 14 0
		 14 22 0 22 19 1 16 23 1 23 15 0 19 25 1 25 16 0 13 20 0 20 21 0 21 22 1 22 27 0 27 19 1
		 23 28 1 28 15 0 25 23 0 19 29 0 29 25 0 20 31 1 31 21 0 31 22 1 22 32 1 32 27 1 27 33 0
		 33 19 1 23 34 0 34 28 0 25 35 0 35 23 1 29 33 0 33 25 1 30 26 1 26 36 0 36 30 0 20 30 0
		 30 31 1 31 32 0 32 37 0 37 27 1 27 38 0 38 33 0 35 34 1 25 38 1 38 35 0 30 32 0 37 38 0
		 35 40 0 40 34 0 38 41 1 41 35 1 37 41 1 34 42 1 39 34 1 35 42 1 42 40 0 37 39 1 15 24 1
		 24 18 0 24 26 0 26 20 0 37 36 1 36 39 0 28 24 0 34 36 1 36 28 0 36 32 1 26 28 0 13 24 1;
	setAttr -s 129 ".n[0:128]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 3.34439445 0.66391504 0.2821781
		 3.34439445 0.66391504 0.28217807 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 2.0051624775 0.52081543 2.7227664 2.064295292
		 0.66263306 2.64669323 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 3.31021929 -0.53298891 -0.68099529
		 2.30220723 -0.56900686 2.46606088 2.29669213 -0.57325649 2.47021556 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 0.68620479 1.78884566 2.83452582 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 3.23724389 1.02948463 -0.40718076 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 3.34439445 0.66391504 0.28217807 3.34439445 0.66391504
		 0.2821781 1e+20 1e+20 1e+20;
	setAttr -s 80 -ch 242 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		mu 1 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		mu 1 3 0 3 1
		f 3 5 6 -2
		mu 0 3 1 4 2
		mu 1 3 1 4 2
		f 3 -3 7 8
		mu 0 3 0 2 5
		mu 1 3 0 2 5
		f 3 9 10 -4
		mu 0 3 0 6 3
		mu 1 3 0 6 3
		f 3 -5 11 -6
		mu 0 3 1 3 4
		mu 1 3 1 3 4
		f 3 -7 12 -8
		mu 0 3 2 4 5
		mu 1 3 2 4 5
		f 3 -9 13 14
		mu 0 3 0 5 7
		mu 1 3 0 5 7
		f 3 -15 15 -10
		mu 0 3 0 7 6
		mu 1 3 0 7 6
		f 3 -11 16 17
		mu 0 3 3 6 8
		mu 1 3 40 42 41
		f 3 18 19 -12
		mu 0 3 3 9 4
		mu 1 3 40 8 4
		f 3 20 21 -13
		mu 0 3 4 10 5
		mu 1 3 4 9 5
		f 3 -22 22 -14
		mu 0 3 5 10 7
		mu 1 3 5 9 7
		f 3 -16 23 24
		mu 0 3 6 7 11
		mu 1 3 6 7 10
		f 3 25 26 -17
		mu 0 3 6 12 8
		mu 1 3 42 11 41
		f 3 -18 27 -19
		mu 0 3 3 8 9
		mu 1 3 40 41 8
		f 3 -20 28 29
		mu 0 3 4 9 13
		mu 1 3 4 8 12
		f 3 -30 30 -21
		mu 0 3 4 13 10
		mu 1 3 4 12 9
		f 3 -23 31 32
		mu 0 3 7 10 14
		mu 1 3 7 9 13
		f 3 -25 33 34
		mu 0 3 6 11 15
		mu 1 3 42 43 14
		f 3 35 36 -24
		mu 0 3 7 16 11
		mu 1 3 7 15 10
		f 3 37 38 -26
		mu 0 3 6 17 12
		mu 1 3 42 16 11
		f 3 -27 39 -28
		mu 0 3 8 12 9
		mu 1 3 41 11 8
		f 3 40 41 -29
		mu 0 3 9 18 13
		mu 1 3 8 17 12
		f 3 -31 42 -32
		mu 0 3 10 13 14
		mu 1 3 9 12 13
		f 3 -33 43 44
		mu 0 3 7 14 19
		mu 1 3 7 13 18
		f 3 -37 45 -34
		mu 0 3 11 16 15
		mu 1 3 43 44 14
		f 3 -35 46 -38
		mu 0 3 6 15 17
		mu 1 3 42 14 16
		f 3 -45 47 -36
		mu 0 3 7 19 16
		mu 1 3 7 18 15
		f 3 -39 48 49
		mu 0 3 12 17 18
		mu 1 3 11 16 17
		f 3 -40 -50 -41
		mu 0 3 9 12 18
		mu 1 3 8 11 17
		f 3 50 51 52
		mu 0 3 20 21 22
		mu 1 3 19 48 20
		f 3 53 54 -43
		mu 0 3 13 23 14
		mu 1 3 12 21 13
		f 3 55 56 -44
		mu 0 3 14 24 19
		mu 1 3 13 22 18
		f 3 -46 57 58
		mu 0 3 15 16 25
		mu 1 3 14 44 46
		f 3 -48 59 60
		mu 0 3 16 19 26
		mu 1 3 15 18 23
		f 3 61 62 -54
		mu 0 3 13 27 23
		mu 1 3 12 24 21
		f 3 -55 63 -56
		mu 0 3 14 23 24
		mu 1 3 13 21 22
		f 3 -57 64 65
		mu 0 3 19 24 28
		mu 1 3 18 22 25
		f 3 -59 66 67
		mu 0 3 15 25 29
		mu 1 3 14 46 26
		f 3 -61 68 -58
		mu 0 3 16 26 25
		mu 1 3 44 45 46
		f 3 69 70 -60
		mu 0 3 19 30 26
		mu 1 3 18 27 23
		f 3 71 72 -63
		mu 0 3 27 31 23
		mu 1 3 24 28 21
		f 3 -73 73 -64
		mu 0 3 23 31 24
		mu 1 3 21 28 22
		f 3 74 75 -65
		mu 0 3 24 32 28
		mu 1 3 22 29 25
		f 3 -66 76 77
		mu 0 3 19 28 33
		mu 1 3 18 25 30
		f 3 78 79 -67
		mu 0 3 25 34 29
		mu 1 3 46 31 26
		f 3 -69 80 81
		mu 0 3 25 26 35
		mu 1 3 46 45 47
		f 3 -118 -86 119
		mu 0 3 29 36 37
		mu 1 3 26 33 34
		f 3 -71 82 83
		mu 0 3 26 30 33
		mu 1 3 23 27 30
		f 3 -78 -83 -70
		mu 0 3 19 33 30
		mu 1 3 18 30 27
		f 3 84 85 86
		mu 0 3 38 37 36
		mu 1 3 35 34 33
		f 3 87 88 -72
		mu 0 3 27 38 31
		mu 1 3 24 35 28
		f 3 -74 89 -75
		mu 0 3 24 31 32
		mu 1 3 22 28 29
		f 3 -76 90 91
		mu 0 3 28 32 39
		mu 1 3 25 29 36
		f 3 92 93 -77
		mu 0 3 28 40 33
		mu 1 3 25 37 30
		f 3 -82 94 -79
		mu 0 3 25 35 34
		mu 1 3 46 47 31
		f 3 95 96 -81
		mu 0 3 26 40 35
		mu 1 3 23 37 32
		f 3 -84 -94 -96
		mu 0 3 26 33 40
		mu 1 3 23 30 37
		f 3 97 -90 -89
		mu 0 3 38 32 31
		mu 1 3 35 29 28
		f 3 -92 98 -93
		mu 0 3 28 39 40
		mu 1 3 25 36 37
		f 3 -95 99 100
		mu 0 3 34 35 41
		mu 1 3 31 47 38
		f 3 -97 101 102
		mu 0 3 35 40 22
		mu 1 3 32 37 20
		f 3 103 -102 -99
		mu 0 3 39 22 40
		mu 1 3 36 20 37
		f 3 104 -51 105
		mu 0 3 34 21 20
		mu 1 3 31 48 19
		f 3 106 107 -100
		mu 0 3 35 21 41
		mu 1 3 47 48 38
		f 3 -101 -108 -105
		mu 0 3 34 41 21
		mu 1 3 31 38 48
		f 3 -103 -52 -107
		mu 0 3 35 22 21
		mu 1 3 47 49 48
		f 3 108 -53 -104
		mu 0 3 39 20 22
		mu 1 3 36 19 20
		f 4 109 110 -49 -47
		mu 0 4 15 42 18 17
		mu 1 4 14 39 17 16
		f 4 111 112 -62 120
		mu 0 4 42 37 27 13
		mu 1 4 39 34 24 12
		f 3 113 114 -109
		mu 0 3 39 36 20
		mu 1 3 36 33 19
		f 3 -68 115 -110
		mu 0 3 15 29 42
		mu 1 3 14 26 39
		f 3 -113 -85 -88
		mu 0 3 27 37 38
		mu 1 3 24 34 35
		f 3 -80 116 117
		mu 0 3 29 34 36
		mu 1 3 26 31 33
		f 3 -87 118 -98
		mu 0 3 38 36 32
		mu 1 3 35 33 29
		f 3 -119 -114 -91
		mu 0 3 32 36 39
		mu 1 3 29 33 36
		f 3 -106 -115 -117
		mu 0 3 34 20 36
		mu 1 3 31 19 33
		f 3 -120 -112 -116
		mu 0 3 29 37 42
		mu 1 3 26 34 39
		f 3 -121 -42 -111
		mu 0 3 42 13 18
		mu 1 3 39 12 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr -s 2 ".pd";
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd[1]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "coll" -p "Crystal_01";
	rename -uid "741C05F1-409B-4B66-4402-04BCF185985A";
	setAttr ".v" no;
createNode mesh -n "collShape" -p "coll";
	rename -uid "E187D565-4FBC-CBAE-5653-56A9210A92E7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[2]" "f[8]" "f[12]" "f[14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "f[0]" "f[6]" "f[10]" "f[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[5]" "f[9]" "f[13]" "f[17:18]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[4]" "f[7]" "f[11]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.25 0.1875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.125 0.625 0.125 0.625 0.625 0.875 0.125 0.125
		 0.125 0.375 0.625 0.375 0.0625 0.625 0.0625 0.625 0.6875 0.875 0.0625 0.125 0.0625
		 0.375 0.6875 0.125 0.1875 0.375 0.5625 0.625 0.5625 0.875 0.1875 0.625 0.1875 0.375
		 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0.097216956 -0.15260899 -0.073139913 
		-0.04346364 -0.14711344 -0.08461348 0.09559752 0.12123883 -0.11721257 -0.11770946 
		0.070655227 -0.087321371 0.055988524 0.10376024 0.075887486 -0.019504264 0.10376024 
		0.075887486 0.097216956 -0.15260899 0.091268532 -0.04346364 -0.14711344 0.079794943 
		0.30540824 -0.030908808 -0.28133118 -0.23034844 -0.026014922 -0.18037014 -0.22526711 
		-0.028114788 0.22764413 0.30540824 -0.030908808 0.29945982 0.23490787 -0.096012175 
		-0.21659625 -0.15337372 -0.104029 -0.15689646 -0.18492569 -0.10720932 0.19494978 
		0.23490787 -0.096012175 0.18557486 0.19954926 0.0056793988 0.35460341 -0.12603252 
		0.043587506 0.30107504 -0.17759757 0.034323514 -0.14672604 0.28570932 -0.026521683 
		-0.29610789;
	setAttr -s 20 ".vt[0:19]"  -0.14153838 -0.4530139 0.14153838 0.10068404 -0.43255752 0.16129348
		 -0.21809572 0.37805957 0.16595592 0.22851974 0.37805957 0.16595592 -0.070551686 0.50128847 -0.11505547
		 0.059431024 0.50128847 -0.11505547 -0.14153838 -0.4530139 -0.14153838 0.10068404 -0.43255752 -0.12178329
		 -0.5 0 0.5 0.42246041 0.018216882 0.32616627 0.41371137 0.010400386 -0.37634847 -0.5 0 -0.5
		 -0.3786132 -0.24233928 0.38854003 0.28992608 -0.27218062 0.28574958 0.34425193 -0.28401941 -0.32005569
		 -0.3786132 -0.24233928 -0.30391404 -0.3890959 0.1868498 -0.52430195 0.24285029 0.27730322 -0.50278115
		 0.33163446 0.24281923 0.26823822 -0.44766009 0.25240883 0.44766009;
	setAttr -s 37 ".ed[0:36]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 16 0 5 17 0 6 0 0 7 1 0 8 19 0 9 18 0 10 14 0 11 15 0 8 9 0 9 10 0 10 11 0
		 11 8 0 12 8 0 13 9 0 14 7 0 15 6 0 12 13 0 13 14 0 14 15 0 15 12 0 16 11 0 17 10 0
		 18 3 0 19 2 0 16 17 0 17 18 0 18 19 0 19 16 0 2 16 0;
	setAttr -s 19 -ch 74 ".fc[0:18]" -type "polyFaces" 
		f 4 16 13 34 -13
		mu 0 4 14 15 30 31
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 32 29 18 -29
		mu 0 4 27 28 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -30 33 -14
		mu 0 4 15 17 29 30
		f 4 19 12 35 28
		mu 0 4 18 14 31 26
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 2 9 -33 -9
		mu 0 4 4 5 28 27
		f 4 -34 -10 -8 -31
		mu 0 4 30 29 11 3
		f 4 -35 30 -2 -32
		mu 0 4 31 30 3 2
		f 3 -36 31 36
		mu 0 3 26 31 2
		f 3 -37 6 8
		mu 0 3 26 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AFE64226-4D21-78A1-520F-69AFE0168379";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "00BFA8C9-4AE1-ED8A-EBBD-55AD3705E454";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D164E7AC-4037-B150-F889-15B163ED17CE";
createNode displayLayerManager -n "layerManager";
	rename -uid "023EE1DE-408E-77F6-CADB-61BCE6A0B162";
createNode displayLayer -n "defaultLayer";
	rename -uid "50503853-48D0-B36F-FF88-278D4F7653B3";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E2C475AF-4B0D-37BC-6D4E-C1B9D368F6D6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BF4F4D76-47F0-92A6-E65E-E68A5CAA188E";
	setAttr ".g" yes;
createNode groupId -n "groupId10";
	rename -uid "0A123F09-4CB1-8CC6-2129-F2BC5E5CA4B8";
	setAttr ".ihi" 0;
createNode shadingEngine -n "blinn1SG";
	rename -uid "67AE2329-444B-8AD5-FF99-E29938140D31";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E8D30F0E-4B44-6EE2-0C98-99ADF1E4D0AF";
createNode phong -n "phong1";
	rename -uid "E49ED3E6-4431-FC7D-F7A3-D9B2D36FBA82";
	setAttr ".c" -type "float3" 0.16517857 0.16517857 0.16517857 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 10.09375;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AE84A7D5-4FDC-0DBF-C5F6-64AB0EE5CC0D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1228\n            -height 1028\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"motionMakerEditorPanel\" (localizedPanelLabel(\"MotionMaker Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"MotionMaker Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1228\\n    -height 1028\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1228\\n    -height 1028\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FF7C7082-4DA5-41CE-B356-90A5B5F41CDC";
	setAttr ".b" -type "string" "playbackOptions -min 19 -max 20 -ast 0 -aet 20 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert2SG";
	rename -uid "369212B3-4707-B024-2101-EDB815ED2D94";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "526C310B-4EB8-7FFF-0EC6-2CABD0B58534";
createNode lambert -n "mat_Ground";
	rename -uid "77604147-47BD-9269-7070-1AA11EE403F6";
	setAttr ".c" -type "float3" 0.22544643 0.22544643 0.22544643 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "D2FB366C-427F-3279-C15A-F196013C912B";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "13595BEC-4C18-088D-FB6E-9882BE862552";
createNode lambert -n "mat_Rock";
	rename -uid "78AB8FFB-4F90-CB74-202B-4D891813D4BA";
	setAttr ".c" -type "float3" 0.12723215 0.12723215 0.12723215 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "6294A9E5-4FE5-BC86-FF0C-33B15693C6F1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "2840B351-4FD3-885D-890E-678F8502CE2A";
createNode aiCurvature -n "aiCurvature1";
	rename -uid "18D4967C-4CA4-7C99-F78A-94A6EA02CB99";
	setAttr ".samples" 10;
	setAttr ".radius" 0.02;
	setAttr ".multiply" 2;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "C40222F1-4AEB-E8BC-A069-54AC654D647F";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.5.4.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C10EE256-4B85-09EF-7BE2-23A1B2E67869";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B7CD9B49-4A86-47EE-1B8F-3098173CC726";
	setAttr ".ai_translator" -type "string" "png";
	setAttr ".color_management" 1;
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "BA4B85B3-4A3B-2C8E-6EF3-9CA6A14BC321";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "D02E70E6-4F5B-BB50-E4BA-6385BB4DEC58";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4973710D-4C48-DA90-58C4-DF878710E0A8";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 157.14285089856122 -617.12928656375016 ;
	setAttr ".tgi[0].vh" -type "double2" 1553.5713668380492 60.487440617000715 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 911.4285888671875;
	setAttr ".tgi[0].ni[0].y" -235.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 253.61347961425781;
	setAttr ".tgi[0].ni[1].y" -254.45378112792969;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 604.28570556640625;
	setAttr ".tgi[0].ni[2].y" -235.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 1923;
createNode aiUtility -n "aiUtility1";
	rename -uid "C9981099-4D0D-0A6E-C177-018F88E6C05C";
	setAttr ".n" -type "float3" 1 1 1 ;
	setAttr ".shade_mode" 2;
createNode lambert -n "mat_Crystal";
	rename -uid "401EA19A-46E2-3458-3055-EB8633B1A46D";
createNode shadingEngine -n "lambert5SG";
	rename -uid "3739DFAF-4296-AD61-7DEB-CA9E2619BD78";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "D5D35BEB-414B-9677-611E-E8A1F72DC5FC";
createNode reference -n "Rock_001RN";
	rename -uid "F81B8217-4568-C0B5-9D0D-65A818513238";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Rock_001RN"
		"Rock_001RN" 0
		"Rock_001RN" 3
		0 "|Rock_001:Rock_001" "|Ground|Inner_001" "-s -r "
		2 "|Ground|Inner_001|Rock_001:Rock_001" "translate" " -type \"double3\" 0.27862288139843316 0.15130447991662666 -0.65051947339927452"
		
		2 "|Ground|Inner_001|Rock_001:Rock_001" "scale" " -type \"double3\" 2.06917402718242771 2.06917402718242771 2.06917402718242771";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Rock_002RN";
	rename -uid "946D3302-4537-1019-6988-31B814984978";
	setAttr -s 2 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Rock_002RN"
		"Rock_002RN" 0
		"Rock_002RN" 5
		0 "|Rock_002:Rock_002" "|Ground|Inner_001" "-s -r "
		2 "|Ground|Inner_001|Rock_002:Rock_002" "translate" " -type \"double3\" 0.48212578744480866 0.15130447991662666 -0.49697050080687127"
		
		2 "|Ground|Inner_001|Rock_002:Rock_002" "scale" " -type \"double3\" 1.34783110061681022 1.34783110061681022 1.34783110061681022"
		
		5 4 "Rock_002RN" "Rock_002:lambert4SG.dagSetMembers" "Rock_002RN.placeHolderList[1]" 
		""
		5 4 "Rock_002RN" "Rock_002:lambert4SG.dagSetMembers" "Rock_002RN.placeHolderList[2]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Rock_003RN";
	rename -uid "7B33F612-4793-33AF-7C1F-CD878C305F61";
	setAttr -s 2 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Rock_003RN"
		"Rock_003RN" 0
		"Rock_003RN" 5
		0 "|Rock_003:Rock_003" "|Ground|Inner_001" "-s -r "
		2 "|Ground|Inner_001|Rock_003:Rock_003" "translate" " -type \"double3\" -0.46960753103571007 0.15130447991662635 -0.61400429760297903"
		
		2 "|Ground|Inner_001|Rock_003:Rock_003" "scale" " -type \"double3\" 2.83488402476107559 2.83488402476107559 2.83488402476107559"
		
		5 4 "Rock_003RN" "Rock_003:lambert4SG.dagSetMembers" "Rock_003RN.placeHolderList[1]" 
		""
		5 4 "Rock_003RN" "Rock_003:lambert4SG.dagSetMembers" "Rock_003RN.placeHolderList[2]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
select -ne :time1;
	setAttr ".o" 20;
	setAttr ".unw" 20;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 14 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".dss" -type "string" "openPBR_shader1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Rock_Shape6.iog" "Rock_002RN.phl[1]";
connectAttr "Rock_Shape7.iog" "Rock_002RN.phl[2]";
connectAttr "Rock_Shape4.iog" "Rock_003RN.phl[1]";
connectAttr "Rock_Shape5.iog" "Rock_003RN.phl[2]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "phong1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
connectAttr "aiUtility1.out" "lambert2SG.ss";
connectAttr "collShape.iog" "lambert2SG.dsm" -na;
connectAttr "geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "aiUtility1.msg" "materialInfo2.m";
connectAttr "aiUtility1.msg" "materialInfo2.t" -na;
connectAttr "mat_Ground.oc" "lambert3SG.ss";
connectAttr "inner_001Shape.iog" "lambert3SG.dsm" -na;
connectAttr "outerShape.iog" "lambert3SG.dsm" -na;
connectAttr "inner_002Shape.iog" "lambert3SG.dsm" -na;
connectAttr "inner_003Shape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "mat_Ground.msg" "materialInfo3.m";
connectAttr "mat_Rock.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "mat_Rock.msg" "materialInfo4.m";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "aiCurvature1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "aiUtility1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "aiCurvature1.out" "aiUtility1.color";
connectAttr "mat_Crystal.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "mat_Crystal.msg" "materialInfo5.m";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiUtility1.msg" ":defaultShaderList1.s" -na;
connectAttr "mat_Ground.msg" ":defaultShaderList1.s" -na;
connectAttr "mat_Rock.msg" ":defaultShaderList1.s" -na;
connectAttr "mat_Crystal.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiCurvature1.msg" ":defaultTextureList1.tx" -na;
// End of Environment_001.0015.ma
