//Maya ASCII 2026 scene
//Name: Environment_001.0017.ma
//Last modified: Fri, Aug 14, 2026 12:56:37 PM
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
fileInfo "UUID" "D2F2E5EF-4FB8-E6BE-B79E-4F94A400A9BA";
fileInfo "exportedFrom" "C:/Projects/Repositories/IdleMiner/Maya/scenes/Environment_001.ma";
createNode transform -s -n "persp";
	rename -uid "8A1C0BF6-439D-DB89-079C-3A972C2B0F05";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -36.013361967642808 19.483899536148087 -9.0129113456808714 ;
	setAttr ".r" -type "double3" -13.538353015680082 -3342.5999999641722 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "138A3AFC-4C28-597D-27E9-629031435DDA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 42.211398085010195;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0 2.9802322387695312e-08 ;
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
	setAttr ".t" -type "double3" 1000.1 6.0310984731933495 1.7713715795393057 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2B83859A-4AAE-E577-DA98-13B668486591";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 90.616628815032058;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Ground";
	rename -uid "95F887DA-45F4-402A-6236-A3AE66BB5A89";
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
createNode transform -n "Inner_001_RbRocks" -p "Ground";
	rename -uid "B4C00724-4049-F06B-4DB3-2F854B72F491";
createNode transform -n "Rock_004" -p "Inner_001_RbRocks";
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
createNode transform -n "Rock_005" -p "Inner_001_RbRocks";
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
createNode transform -n "Rock_006" -p "Inner_001_RbRocks";
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
createNode transform -n "Rock_007" -p "Inner_001_RbRocks";
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
	setAttr -s 28 ".pt";
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
createNode mesh -n "geoShape" -p "|Crystal_01|geo";
	rename -uid "7580BCBA-480A-813C-B368-15AEE4BED9B6";
	setAttr -k off ".v";
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
createNode mesh -n "collShape" -p "|Crystal_01|coll";
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
createNode transform -n "Crystal_03";
	rename -uid "380F9497-4132-A8E6-2117-12B0742A9DB1";
createNode transform -n "geo" -p "Crystal_03";
	rename -uid "F0E523CD-42C2-746D-8ABB-AE9ECEC7BC24";
createNode mesh -n "geoShape" -p "|Crystal_03|geo";
	rename -uid "5A46DEEC-4F91-6C59-E190-A5B6C8DB3D39";
	setAttr -k off ".v";
	setAttr -s 5 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 18 "f[0]" "f[4]" "f[14:16]" "f[19:20]" "f[28:31]" "f[43:49]" "f[63:72]" "f[92:103]" "f[123:127]" "f[235:236]" "f[238:239]" "f[245]" "f[251]" "f[280:281]" "f[283]" "f[287:289]" "f[294]" "f[302]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 47 "f[1]" "f[3]" "f[5]" "f[8]" "f[10]" "f[13]" "f[18]" "f[21]" "f[27]" "f[32:35]" "f[50:53]" "f[73]" "f[75:78]" "f[105]" "f[109:110]" "f[129]" "f[133:134]" "f[139]" "f[141:142]" "f[148:149]" "f[151:152]" "f[160]" "f[162:163]" "f[166]" "f[175]" "f[177]" "f[180]" "f[234]" "f[237]" "f[240:241]" "f[248]" "f[250]" "f[256:257]" "f[260]" "f[262:263]" "f[268]" "f[285]" "f[291]" "f[293]" "f[301]" "f[303:304]" "f[306:308]" "f[310:311]" "f[314]" "f[319:321]" "f[323]" "f[325]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 22 "f[2]" "f[6]" "f[22:26]" "f[36:42]" "f[55:62]" "f[79:91]" "f[111:121]" "f[143:147]" "f[164:165]" "f[167]" "f[181:183]" "f[231:233]" "f[242:244]" "f[249]" "f[254:255]" "f[264]" "f[282]" "f[284]" "f[286]" "f[309]" "f[312]" "f[317:318]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 22 "f[9]" "f[74]" "f[106:108]" "f[135:138]" "f[140]" "f[150]" "f[153:159]" "f[161]" "f[168:174]" "f[176]" "f[178:179]" "f[247]" "f[253]" "f[258:259]" "f[261]" "f[265:267]" "f[269:270]" "f[290]" "f[292]" "f[295:296]" "f[300]" "f[313]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 17 "f[7]" "f[11:12]" "f[17]" "f[54]" "f[104]" "f[122]" "f[128]" "f[130:132]" "f[184:230]" "f[246]" "f[252]" "f[271:279]" "f[297:299]" "f[305]" "f[315:316]" "f[322]" "f[324]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 31 "f[0]" "f[11]" "f[14:15]" "f[23:25]" "f[38:41]" "f[58:59]" "f[62]" "f[82:84]" "f[116]" "f[145]" "f[148]" "f[161]" "f[166]" "f[177]" "f[180]" "f[186:187]" "f[189:190]" "f[192:195]" "f[199]" "f[207]" "f[211]" "f[256]" "f[266]" "f[268]" "f[272]" "f[274]" "f[276]" "f[295:296]" "f[299]" "f[304]" "f[323]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 40 "e[37:38]" "e[41:43]" "e[61]" "e[66:67]" "e[72:80]" "e[352]" "e[373]" "e[376]" "e[380:381]" "e[383]" "e[395]" "e[413]" "e[424]" "e[432]" "e[441]" "e[462]" "e[464]" "e[489]" "e[496]" "e[502]" "e[507]" "e[515]" "e[517:519]" "e[522]" "e[533]" "e[541]" "e[543]" "e[550]" "e[553:554]" "e[558:559]" "e[561:562]" "e[564]" "e[566:567]" "e[579]" "e[591]" "e[595:597]" "e[599]" "e[607:608]" "e[611]" "e[617:619]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[7]" "f[50]" "f[65]" "f[67]" "f[76]" "f[78]" "f[95:96]" "f[108]" "f[110]" "f[144]" "f[146:147]" "f[165]" "f[252:253]";
	setAttr ".gtag[3].gtagnm" -type "string" "front";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 57 "f[3]" "f[6]" "f[8]" "f[10]" "f[12:13]" "f[16]" "f[18]" "f[26:27]" "f[35:36]" "f[42:43]" "f[49]" "f[53]" "f[55:56]" "f[64]" "f[75]" "f[79]" "f[81]" "f[92:94]" "f[112]" "f[115]" "f[118]" "f[129]" "f[149]" "f[154]" "f[169]" "f[176]" "f[188]" "f[191]" "f[196:197]" "f[200:202]" "f[205:206]" "f[208]" "f[210]" "f[212]" "f[218]" "f[231:233]" "f[239:240]" "f[251]" "f[257:258]" "f[260]" "f[262]" "f[265]" "f[267]" "f[269:270]" "f[275]" "f[281:282]" "f[284:285]" "f[288]" "f[294]" "f[298]" "f[300]" "f[305]" "f[311]" "f[313]" "f[317]" "f[321]" "f[324:325]";
	setAttr ".gtag[4].gtagnm" -type "string" "left";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 37 "f[2]" "f[22]" "f[34]" "f[45]" "f[52]" "f[66]" "f[71:73]" "f[86]" "f[100]" "f[103:106]" "f[113:114]" "f[117]" "f[132:133]" "f[135:137]" "f[153]" "f[155]" "f[168]" "f[171]" "f[182]" "f[184:185]" "f[204]" "f[213]" "f[219]" "f[223:224]" "f[229]" "f[237:238]" "f[245]" "f[259]" "f[264]" "f[277]" "f[280]" "f[287]" "f[289]" "f[291]" "f[301]" "f[306:307]" "f[310]";
	setAttr ".gtag[5].gtagnm" -type "string" "right";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 33 "f[19]" "f[28:29]" "f[37]" "f[44]" "f[57]" "f[60:61]" "f[63]" "f[85]" "f[87:88]" "f[90]" "f[119:120]" "f[150]" "f[198]" "f[203]" "f[209]" "f[214]" "f[216]" "f[236]" "f[241]" "f[248]" "f[250]" "f[261]" "f[263]" "f[271]" "f[273]" "f[279]" "f[283]" "f[293]" "f[297]" "f[302]" "f[308]" "f[319:320]" "f[322]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 52 "f[1]" "f[4:5]" "f[9]" "f[17]" "f[20:21]" "f[30:33]" "f[46:48]" "f[51]" "f[54]" "f[68:70]" "f[74]" "f[77]" "f[80]" "f[89]" "f[91]" "f[97:99]" "f[101:102]" "f[107]" "f[109]" "f[111]" "f[121:128]" "f[130:131]" "f[134]" "f[138:143]" "f[151:152]" "f[156:160]" "f[162:164]" "f[167]" "f[170]" "f[172:175]" "f[178:179]" "f[181]" "f[183]" "f[215]" "f[217]" "f[220:222]" "f[225:228]" "f[230]" "f[234:235]" "f[242:244]" "f[246:247]" "f[249]" "f[254:255]" "f[278]" "f[286]" "f[290]" "f[292]" "f[303]" "f[309]" "f[312]" "f[314:316]" "f[318]";
	setAttr ".pv" -type "double2" 0.66869759559631348 0.65359559655189514 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 462 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.59786654 0.45158604 0.55764616
		 0.49920309 0.67715955 0.64510119 0.67601478 0.63820028 0.65598023 0.6100983 0.63927174
		 0.55759138 0.40652943 0.3957532 0.3987191 0.48093385 0.32572562 0.47065443 0.32629934
		 0.46691471 0.37805772 0.38328758 0.37812179 0.38305992 0.37813339 0.38301688 0.37819013
		 0.38280079 0.40511468 0.27835137 0.41245496 0.30349338 0.41190451 0.30555642 0.55943376
		 0.33814055 0.56696165 0.58640254 0.67746383 0.64641297 0.39433423 0.5471369 0.39608335
		 0.55364513 0.41717315 0.59113359 0.35000181 0.70863342 0.39372692 0.5220924 0.32525143
		 0.47004423 0.56997216 0.24792212 0.56269753 0.24374166 0.48983067 0.21953657 0.49409199
		 0.16879612 0.60346019 0.18272495 0.63907331 0.37529129 0.58814037 0.10527492 0.63912708
		 0.37558797 0.592839 0.13681012 0.63913631 0.37564367 0.6373105 0.40488827 0.6391803
		 0.37592262 0.68546009 0.68088949 0.66103989 0.5199399 0.65953398 0.51039791 0.40806466
		 0.27155131 0.44650936 0.16783427 0.44748825 0.16785406 0.44202036 0.1890244 0.55775571
		 0.33572263 0.48905224 0.19390827 0.3321445 0.34611028 0.53731465 0.61067426 0.52600932
		 1 0.64511311 0.76163644 0.64383233 0.75571364 0.65980291 0.70001686 0.32299834 0.53337443
		 0.44619548 0.63159585 0.47237319 0.86523664 0.31453991 0.45625955 0.31727424 0.45977834
		 0.32353058 0.49053547 0.44110808 0.24980778 0.41189933 0.2778587 0.40667179 0.28368473
		 0.37241161 0.16633642 0.57170165 0.12476993 0.56181788 0.12332487 0.67715955 0.64510119
		 0.67579591 0.66989291 0.67502588 0.66483098 0.67509633 0.66117197 0.44805297 0.16546926
		 0.47634593 0.16768056 0.47619349 0.16432495 0.47306058 0.15972091 0.45609534 0.13459013
		 0.45633048 0.12375329 0.37241161 0.12409413 0.36963379 0.53276491 0.40043133 0.5913161
		 0.46438068 0.92195606 0.64921808 0.78852904 0.64961469 0.78735101 0.4581812 0.63778901
		 0.51400417 0.66494185 0.51500762 0.66458946 0.55213058 0.58841717 0.62192845 0.60859835
		 0.35652184 0.74252057 0.36963379 0.53276491 0.31868082 0.43551454 0.3321445 0.34611028
		 0.33216298 0.34602773 0.31935215 0.43069813 0.34303677 0.38676703 0.34297371 0.38686651
		 0.35385329 0.47461557 0.32572562 0.47065443 0.49855191 0.026112676 0.52858913 0.026112676
		 0.53065848 0.076303065 0.55764616 0.49920309 0.57951736 0.8743639 0.59753031 0.84590364
		 0.62354463 0.80480158 0.67987376 0.69748116 0.62374765 0.80447263 0.62370318 0.80468291
		 0.64048934 0.7747767 0.65118593 0.75010985 0.65853441 0.73662871 0.67464793 0.70706797
		 0.45705569 0.09033829 0.40597707 0.074255109 0.37241161 0.16633642 0.31453991 0.45625955
		 0.46853477 0.89707565 0.53962719 0.99140573 0.64896858 0.78688395 0.47237319 0.86523664
		 0.56943583 0.69867623 0.57044804 0.69979531 0.55260825 0.58743763 0.55920118 0.56078541
		 0.63929075 0.72307438 0.63121265 0.72953284 0.64550012 0.77610606 0.64912713 0.787929
		 0.64921808 0.78852904 0.40193725 0.82103562 0.33217439 0.34594542 0.46501711 0.21722257
		 0.46613008 0.16154933 0.45739454 0.18035635 0.39220822 0.28580123 0.38088235 0.29610491
		 0.35603637 0.49358231 0.31453991 0.45625955 0.46852064 0.013057828 0.52858913 0.007833004
		 0.40597707 0.074255109 0.3321445 0.34611028 0.56696165 0.58640254 0.46438068 0.92195606
		 0.48588902 0.9491933 0.48597345 0.92486221 0.48602962 0.90867686 0.54449338 0.88721883
		 0.48126036 0.059906054 0.49811301 0.040153801 0.49671385 0.084916025 0.49394292 0.077409223
		 0.49036855 0.067725666 0.47724116 0.084292762 0.45605361 0.053046294 0.44118574 0.032453451
		 0.4573864 0.075099528 0.43300202 0.047811888 0.42665786 0.059717942 0.42571178 0.062515587
		 0.41189981 0.10335903 0.35652184 0.74252057 0.32299834 0.53337443 0.40193725 0.82103562
		 0.51301813 0.94148719 0.48005569 0.87964916 0.43764895 0.55531621 0.5244956 0.58042681
		 0.54407448 0.6687184 0.57671177 0.49478143 0.58775926 0.45332474 0.58862185 0.41023445
		 0.58880508 0.40944925 0.63918281 0.37588352 0.48005569 0.87964916 0.63697541 0.6257199
		 0.63878655 0.71120411 0.36221179 0.70381731 0.36197603 0.68768752 0.43764895 0.55531621
		 0.47237319 0.86523664 0.35140541 0.71042961 0.3881194 0.77599049 0.40193725 0.82103562
		 0.4015207 0.82031548 0.39783522 0.7934038 0.39743945 0.79263335 0.64923114 0.78849018
		 0.40043133 0.5913161 0.54364866 0.50170177 0.52275348 0.47551447 0.38565779 0.68110043
		 0.36721689 0.73066413 0.35000181 0.70863342 0.38104519 0.65433061 0.48857653 0.43268159
		 0.47288907 0.41302097 0.46184519 0.37589452 0.4622145 0.3574203 0.46313336 0.31145462
		 0.46442941 0.24662039 0.32299834 0.53337443 0.37241161 0.12409413 0.51057041 0 0.46852064
		 0 0.36963379 0.53276491 0.53731465 0.61067426 0.46524474 0.91678095 0.47296682 0.92890495
		 0.50333583 0.039298087 0.50688583 0.037352648 0.57170165 0.12476993 0.53489578 0.14564908
		 0.53190869 0.13468897 0.52712387 0.11713256 0.49866331 0.086981297 0.32572562 0.47065443
		 0.40643972 0.1285091 0.35000181 0.70863342 0.46706945 0.4905594 0.51220214 0.52496111
		 0.6451692 0.41533887 0.64163232 0.45937574 0.63703394 0.55713719 0.6357137 0.57746875
		 0.4985922 0.46955639 0.49839354 0.4685306 0.59133101 0.34195361 0.60346019 0.18272495
		 0.51301813 0.94148719 0.36899969 0.57170486 0.37268451 0.5061754 0.62192845 0.60859835
		 0.48005569 0.87964916 0.40193206 0.82024121 0.63473403 0.81205308 0.63469398 0.81202161
		 0.6306752 0.80886084 0.63996345 0.77978504 0.65230584 0.74724138 0.52600932 1 0.54674923
		 0.50558764 0.46853477 0.89707565 0.46438068 0.92195606 0.38908648 0.77701485 0.35652184
		 0.74252057 0.40043133 0.5913161 0.40193725 0.82103562 0.41931492 0.84087723 0.44136679
		 0.88111186 0.44502798 0.88744724 0.44648245 0.88955772;
	setAttr ".uvst[0].uvsp[250:461]" 0.5273965 0.026112674 0.52858913 0.026112676
		 0.54744089 0.17559049 0.54479319 0.16527626 0.40303111 0.14420979 0.41054082 0.16710718
		 0.63900161 0.37868965 0.45098957 0.28730679 0.45911098 0.23562042 0.46718907 0.18180403
		 0.46915448 0.16829202 0.49409199 0.16879612 0.46706945 0.4905594 0.42505801 0.34666139
		 0.38315135 0.4787415 0.47620541 0.3817755 0.5906384 0.11790393 0.59330344 0.13264781
		 0.61312616 0.23774049 0.61238718 0.23360978 0.61525726 0.24877524 0.61963081 0.27188513
		 0.62706804 0.31165528 0.53962719 0.99140573 0.64921808 0.78852904 0.46853477 0.89707565
		 0.46438068 0.92195606 0.44326508 0.8127811 0.49904233 0.7740202 0.67715955 0.64510119
		 0.65287358 0.63912249 0.54782069 0.731893 0.67838806 0.67575473 0.67960906 0.67240953
		 0.68216407 0.66679233 0.68218148 0.66675359 0.67715955 0.64510119 0.53731465 0.61067426
		 0.55680537 0.50381285 0.54848772 0.50776637 0.41318813 0.82809597 0.41419709 0.83023435
		 0.41671327 0.83556712 0.52858913 0.025992209 0.52886528 0.026479743 0.54235232 0.050292145
		 0.54515177 0.056213085 0.54588002 0.055985302 0.5527758 0.066849895 0.55536199 0.070942394
		 0.56061971 0.079081476 0.58434951 0.1097706 0.4142082 0.17970547 0.63233823 0.3405745
		 0.63062501 0.33101207 0.47824773 0.14067423 0.49674571 0.08389847 0.60346019 0.18272495
		 0.63918281 0.37588352 0.60068154 0.17726752 0.61639082 0.25830686 0.53359681 0.034141511
		 0.55348229 0.061948288 0.58630019 0.10745721 0.57170165 0.12476993 0.52964461 0.02852804
		 0.51660943 0.050466925 0.68546009 0.68088949 0.51301813 0.94148719 0.52600932 1 0.65778613
		 0.63478166 0.66298372 0.62779582 0.64725143 0.46481296 0.64918852 0.48624793 0.66302091
		 0.62774742 0.66527438 0.56518173 0.6373105 0.40488827 0.56696165 0.58640254 0.55807418
		 0.50320977 0.61209452 0.85560364 0.60910517 0.86278689 0.61556673 0.85082513 0.61054403
		 0.85579669 0.60922807 0.85155869 0.58943069 0.11179833 0.59111392 0.12103985 0.61753023
		 0.2844477 0.62084997 0.30524507 0.62142336 0.30911914 0.63804442 0.39351898 0.62942731
		 0.34125608 0.62295377 0.30194151 0.62185925 0.29527855 0.62138301 0.29205889 0.53962719
		 0.99140573 0.63943726 0.41707924 0.66280067 0.54977989 0.65734726 0.5153473 0.65583652
		 0.5058226 0.591281 0.45938271 0.59000975 0.46572 0.58925915 0.46750432 0.5872702
		 0.47087646 0.55988646 0.50110596 0.55952853 0.50150108 0.60035938 0.17560558 0.61886394
		 0.33608833 0.61214679 0.24816962 0.63737625 0.40386972 0.53497487 0.982678 0.53962719
		 0.99140573 0.53783077 0.99253947 0.57074237 0.93380475 0.53065848 0.076303065 0.51057041
		 0 0.46852064 0 0.40597707 0.074255109 0.52858913 0.007833004 0.46852064 0.013057828
		 0.54066169 0.091398671 0.47884119 0.097197905 0.54969174 0.070782512 0.55398357 0.088059299
		 0.58814037 0.10527492 0.54426903 0.083163008 0.4418062 0.10067206 0.37241161 0.12409413
		 0.41105652 0.12393717 0.55654824 0.09838362 0.56327236 0.12232754 0.52858913 0.026112676
		 0.49855191 0.026112676 0.36629716 0.15780669 0.36664811 0.15753642 0.37458581 0.13469791
		 0.37241161 0.13595793 0.37241161 0.16633642 0.37241161 0.15988962 0.37655729 0.15464906
		 0.37315255 0.15640709 0.387209 0.12813832 0.38749677 0.12755954 0.38714761 0.12741809
		 0.5637936 0.12418373 0.592839 0.13681012 0.57170165 0.12476993 0.37186393 0.13613498
		 0.36632335 0.1577985 0.37161893 0.16388375 0.36967829 0.17853951 0.5638535 0.13091733
		 0.6373105 0.40488827 0.63918281 0.37588352 0.60346019 0.18272495 0.48654556 0.083228372
		 0.49126789 0.069940299 0.49409199 0.16879612 0.43734625 0.11027147 0.36887911 0.18403327
		 0.56167603 0.1756548 0.56117332 0.18140301 0.55764616 0.49920309 0.46706945 0.4905594
		 0.36797899 0.19523007 0.48431963 0.40719178 0.47330797 0.44194597 0.56048304 0.1873036
		 0.56020623 0.18966974 0.55359429 0.24618997 0.54759467 0.29747593 0.50517344 0.3413747
		 0.67715955 0.64510119 0.68546009 0.68088949 0.39209998 0.27973315 0.39345422 0.26033747
		 0.38811713 0.2466974 0.37410161 0.47746706 0.38713399 0.33801138 0.44902265 0.51859331
		 0.56696165 0.58640254 0.62192845 0.60859835 0.43764895 0.55531621 0.3695074 0.50377214
		 0.43180507 0.57293409 0.52600932 1 0.53731465 0.61067426 0.64921808 0.78852904 0.35000181
		 0.70863342 0.34956241 0.70432603 0.35040957 0.69643563 0.37007141 0.54451001 0.37049627
		 0.50934649 0.42488509 0.59477437 0.46438068 0.92195606 0.47237319 0.86523664 0.3496927
		 0.70662707 0.40983641 0.6399436 0.53962719 0.99140573 0.46853477 0.89707565 0.48005569
		 0.87964916 0.35047475 0.71109134 0.36645821 0.75304568 0.40091389 0.66493046 0.40193725
		 0.82103562 0.51301813 0.94148719 0.36752111 0.75657582 0.36762524 0.75599909 0.36666709
		 0.75359404 0.36683851 0.76035625 0.36959079 0.75264859 0.3678273 0.75758725 0.38147527
		 0.71936703;
	setAttr ".uvst[1].uvsn" -type "string" "uvSet1";
	setAttr -s 488 ".uvst[1].uvsp";
	setAttr ".uvst[1].uvsp[0:249]" -type "float2" 0.11892759 0.42510182 0.16404533
		 0.46593967 0.072862983 0.59106642 0.072915204 0.58514798 0.087656707 0.5610469 0.095613085
		 0.51601529 0.5283187 0.37721786 0.53403717 0.45027143 0.44051117 0.44145545 0.44054994
		 0.43824816 0.4902969 0.36652696 0.49033585 0.3663317 0.49034256 0.3662948 0.49037445
		 0.36610949 0.50514436 0.27653044 0.51894343 0.29809299 0.51862824 0.2998623 0.15161173
		 0.32780743 0.16099793 0.54072469 0.94210356 0.59106642 0.93885553 0.5921914 0.94215578
		 0.58514798 0.53084439 0.5070492 0.53227466 0.51263088 0.55736631 0.54478216 0.43209505
		 0.64555353 0.53470981 0.48557031 0.43733659 0.44093212 0.71879715 0.25043327 0.71184683
		 0.24684802 0.63772058 0.22608902 0.64073598 0.18257242 0.76091707 0.19451818 0.76694995
		 0.35966909 0.9120158 0.12809467 0.76712692 0.35992351 0.94769228 0.15514022 0.76714975
		 0.35997128 0.94392133 0.38505235 0.76720691 0.36021051 0.85348558 0.62175947 0.80783111
		 0.48372418 0.80668777 0.47554064 0.50939751 0.27069852 0.5636723 0.18174751 0.56525767
		 0.18176448 0.558029 0.19992083 0.15282834 0.32573378 0.19972599 0.20410937 0.33923593
		 0.33464259 0.18362859 0.5615409 0.98473847 0.89543867 0.88669753 0.69101059 0.90099651
		 0.68593109 0.92489469 0.63816381 0.36101109 0.49524608 0.59911722 0.57948387 0.61003518
		 0.77986139 0.36562297 0.42910996 0.38392919 0.4321278 0.40481997 0.45850605 0.56120038
		 0.25205055 0.51608437 0.27610788 0.50807148 0.28110448 0.44366527 0.18046293 0.73756504
		 0.14481416 0.042775333 0.12809467 0.13502851 0.14357483 0.078451753 0.15514022 0.074680865
		 0.38505235 0.94210356 0.59106642 0.83573484 0.61232841 0.83429527 0.60798723 0.8344022
		 0.60484916 0.56608212 0.17971919 0.21897742 0.18161567 0.21983579 0.17873777 0.22419816
		 0.17478922 0.24786234 0.15323627 0.24984194 0.14394227 0.34118012 0.1442346 0.30793545
		 0.49472329 0.28680244 0.54493868 0.25910211 0.82850581 0.11549795 0.89543867 0.78380251
		 0.71407455 0.78456509 0.71306419 0.60819328 0.5847953 0.65053314 0.60808241 0.65132821
		 0.60778022 0.68329692 0.54245245 0.73679328 0.55976051 0.37594944 0.67461628 0.30793545
		 0.49472329 0.37120718 0.41131839 0.33923593 0.33464259 0.33928388 0.33457181 0.36879432
		 0.40718767 0.44695792 0.36951104 0.44689682 0.36959636 0.47655094 0.44485265 0.44051117
		 0.44145545 0.64258683 0.060202688 0.73383474 0.060202688 0.16766384 0.10324752 0.16404533
		 0.46593967 0.072862983 0.59106642 0.9696455 0.78768921 0.94297254 0.76328075 0.90445173
		 0.72803038 0.84274465 0.63598901 0.90406525 0.72774833 0.90375799 0.72792858 0.8794865
		 0.70228004 0.8799206 0.68112504 0.87039787 0.66956323 0.84951663 0.64421099 0.26330632
		 0.11528456 0.3258504 0.10149115 0.44366527 0.18046293 0.36562297 0.42910996 0.43171167
		 0.80716747 0.79504251 0.80890715 0.7833727 0.71266365 0.61003518 0.77986139 0.69230223
		 0.63701403 0.69346094 0.63797385 0.68371654 0.54161245 0.6901387 0.5187546 0.76670164
		 0.65793866 0.75907522 0.66347766 0.77867115 0.70342022 0.78364575 0.71355993 0.78380251
		 0.71407455 0.33861339 0.74195319 0.33923739 0.33450121 0.22109613 0.22410446 0.23137002
		 0.17635734 0.23700503 0.19248682 0.28625429 0.28291965 0.29646516 0.29175639 0.48249906
		 0.46111912 0.36562297 0.42910996 0.45297062 0.047933519 0.89835119 0.044525564 0.02911073
		 0.044525564 0.3258504 0.10149115 0.33923593 0.33464259 0.16099793 0.54072469 0.25910211
		 0.82850581 0.20898439 0.85186529 0.22263554 0.83099824 0.23171642 0.81711715 0.14959912
		 0.79871404 0.10040494 0.78768921 0.61586648 0.08918494 0.64240468 0.072244793 0.64182401
		 0.11063426 0.63705593 0.10419619 0.63090533 0.095891275 0.61027789 0.11009973 0.27655229
		 0.094851956 0.30856359 0.087858871 0.26062602 0.10221536 0.38077879 0.078349009 0.39589748
		 0.088475764 0.40317693 0.090827927 0.44748855 0.12601073 0.37594944 0.67461628 0.36101109
		 0.49524608 0.33861339 0.74195319 0.57856035 0.93233442 0.67367995 0.84525621 0.61849725
		 0.79222196 0.59555268 0.51406407 0.66211611 0.53559971 0.67377937 0.61132127 0.70875943
		 0.46214753 0.72049421 0.42659301 0.72422153 0.38963738 0.72442311 0.388964 0.76696849
		 0.36017698 0.61849725 0.79222196 0.76443094 0.57444447 0.76601195 0.64775836 0.45262226
		 0.64142311 0.45442635 0.6275897 0.59555268 0.51406407 0.61003518 0.77986139 0.43413603
		 0.64709401 0.43979454 0.7033211 0.33861339 0.74195319 0.33895585 0.74133557 0.42918986
		 0.71825534 0.4298813 0.71759456 0.78382766 0.71404117 0.28680244 0.54493868 0.17475794
		 0.46808261 0.1911532 0.44562358 0.49386624 0.62194043 0.45712745 0.66444778 0.43209505
		 0.64555353 0.48998946 0.5989818 0.21636893 0.40888882 0.22794315 0.39202723 0.23450647
		 0.36018646 0.2329451 0.34434235 0.22906026 0.30492079 0.22358072 0.24931692 0.36101109
		 0.49524608 0.34118012 0.1442346 0.16217089 0.070026934 0.29514265 0.077275217 0.30793545
		 0.49472329 0.18362859 0.5615409 0.29500476 0.82406747 0.26282847 0.83446538 0.64897674
		 0.071510904 0.65340763 0.069842428 0.73756504 0.14481416 0.69164443 0.16272077 0.68758237
		 0.15332106 0.68107551 0.13826415 0.64434028 0.11240549 0.44051117 0.44145545 0.49732715
		 0.14802104 0.43209505 0.64555353 0.62161398 0.45852658 0.65518224 0.48803058 0.77816027
		 0.39401507 0.77195275 0.43178248 0.7641257 0.51562577 0.76183206 0.53306282 0.6482358
		 0.44051376 0.64807063 0.43963403 0.72991121 0.33107769 0.76091707 0.19451818 0.67367995
		 0.84525621 0.48737746 0.52811944 0.50556082 0.47191933 0.73679328 0.55976051 0.61849725
		 0.79222196 0.33843422 0.74127191 0.81121075 0.73424947 0.81155968 0.73422247 0.84662521
		 0.73151171 0.86870587 0.70657539 0.88077664 0.67866498 0.98473847 0.89543867 0.1725539
		 0.47141525;
	setAttr ".uvst[1].uvsp[250:487]" 0.43171167 0.80716747 0.25910211 0.82850581
		 0.44174856 0.70419955 0.37594944 0.67461628 0.28680244 0.54493868 0.33861339 0.74195319
		 0.3629061 0.7589699 0.30895552 0.79347652 0.30193809 0.79890996 0.30143926 0.80071992
		 0.73021168 0.060202688 0.73383474 0.060202688 0.6993593 0.18839946 0.6985867 0.17955366
		 0.49239999 0.16148643 0.50541848 0.18112394 0.78408813 0.36258361 0.58005595 0.28421086
		 0.58924484 0.23988302 0.5982008 0.1937284 0.60034776 0.1821401 0.64073598 0.18257242
		 0.62161398 0.45852658 0.54263604 0.33511519 0.51409036 0.44839117 0.62807894 0.36523014
		 0.88737762 0.13892569 0.89734381 0.15157051 0.84101373 0.24170123 0.83704233 0.23815861
		 0.82743955 0.251165 0.81280625 0.27098474 0.80139506 0.30509287 0.79504251 0.80890715
		 0.78380251 0.71407455 0.43171167 0.80716747 0.25910211 0.82850581 0.26824856 0.73487395
		 0.22323352 0.70163143 0.072862983 0.59106642 0.092098944 0.58593893 0.18168685 0.66550183
		 0.88941151 0.61735576 0.88981342 0.61448681 0.88849658 0.60966939 0.88848841 0.60963613
		 0.94210356 0.59106642 0.18362859 0.5615409 0.16485518 0.46989316 0.17131554 0.47328383
		 0.38196814 0.74800837 0.38253814 0.74984229 0.37232643 0.75441581 0.73491889 0.060099371
		 0.73466092 0.060517497 0.75718933 0.080939747 0.75890172 0.086017728 0.76470351 0.085822374
		 0.7801919 0.095140174 0.78594679 0.098650023 0.79819465 0.10563035 0.87178636 0.13195029
		 0.51231569 0.19192864 0.79365975 0.32989487 0.79497814 0.32169384 0.61402893 0.15845424
		 0.64183724 0.10976157 0.76091707 0.19451818 0.76696849 0.36017698 0.91710913 0.18983772
		 0.85584873 0.25933957 0.74466127 0.06708847 0.80000114 0.090936407 0.89248765 0.12996626
		 0.73756504 0.14481416 0.73392606 0.06227418 0.66603291 0.081089631 0.57856035 0.93233442
		 0.85348558 0.62175947 0.67367995 0.84525621 0.11549795 0.89543867 0.088357568 0.58221608
		 0.11549795 0.89543867 0.072862983 0.59106642 0.083678402 0.5762248 0.07422737 0.43644565
		 0.075595111 0.45482892 0.083636001 0.57618332 0.89139891 0.52252495 0.94392133 0.38505235
		 0.16099793 0.54072469 0.16390531 0.46937591 0.80630064 0.7536183 0.78791666 0.74878567
		 0.78725392 0.74319422 0.78235567 0.7481218 0.77414 0.75015712 0.89928913 0.13368934
		 0.9035657 0.14161515 0.94031799 0.28175879 0.94348466 0.29959527 0.94526839 0.30291775
		 0.87455928 0.37530172 0.87389386 0.33047941 0.87316513 0.29676202 0.87297153 0.29104763
		 0.87148035 0.28828639 0.98473847 0.89543867 0.79504251 0.80890715 0.57856035 0.93233442
		 0.94210356 0.59106642 0.9399268 0.39550766 0.94346792 0.43644565 0.89071167 0.50931585
		 0.88710564 0.47978544 0.88616788 0.47161672 0.074680865 0.38505235 0.12631503 0.4317885
		 0.12846212 0.43722355 0.12943771 0.43875384 0.13182072 0.44164586 0.16221191 0.46757162
		 0.16260915 0.4679105 0.91836542 0.1884124 0.076027989 0.30291775 0.089426801 0.32604739
		 0.92398483 0.25064558 0.93770725 0.38417879 0.77382356 0.81526238 0.79504251 0.80890715
		 0.82006669 0.82032216 0.79185128 0.78198218 0.16766384 0.10324752 0.16217089 0.070026934
		 0.29514265 0.077275217 0.3258504 0.10149115 0.02911073 0.044525564 0.45297062 0.047933519
		 0.15718678 0.11619397 0.23663075 0.12116758 0.094246864 0.098512948 0.11698643 0.11333004
		 0.042775333 0.12809467 0.13809279 0.10913081 0.27552205 0.12414712 0.34118012 0.1442346
		 0.29911864 0.14409998 0.12152641 0.12218447 0.12993115 0.14271949 0.89835119 0.044525564
		 0.9120158 0.12809467 0.73383474 0.060202688 0.64258683 0.060202688 0.34088489 0.17314754
		 0.34055835 0.17291574 0.37552941 0.15330446 0.3699632 0.15440936 0.44366527 0.18046293
		 0.4280245 0.17493396 0.43175247 0.17039321 0.42251411 0.17193896 0.4096798 0.14753786
		 0.40941703 0.14703825 0.40768903 0.14692083 0.13142523 0.14431141 0.078451753 0.15514022
		 0.73756504 0.14481416 0.36304039 0.15456122 0.34121683 0.17314053 0.42707276 0.17835943
		 0.43657658 0.19092867 0.13340122 0.15008636 0.074680865 0.38505235 0.94769228 0.15514022
		 0.76696849 0.36017698 0.76091707 0.19451818 0.62529987 0.10918687 0.6324445 0.097790614
		 0.64073598 0.18257242 0.54667282 0.13237987 0.43890157 0.19564031 0.13860993 0.18845463
		 0.139512 0.19338447 0.16404533 0.46593967 0.94392133 0.38505235 0.62161398 0.45852658
		 0.44336581 0.20524302 0.21813788 0.38702792 0.22956705 0.41683424 0.14048176 0.19844498
		 0.14087066 0.20047426 0.15015979 0.24894775 0.15858872 0.29293221 0.19649345 0.33058113
		 0.072862983 0.59106642 0.85348558 0.62175947 0.48905456 0.27771547 0.48721987 0.26108113
		 0.47803241 0.24938299 0.50249499 0.44729817 0.4934411 0.32769668 0.24717733 0.48256928
		 0.94210356 0.59106642 0.16099793 0.54072469 0.73679328 0.55976051 0.59555268 0.51406407
		 0.50115979 0.46985823 0.26230508 0.52917367 0.98473847 0.89543867 0.18362859 0.5615409
		 0.78380251 0.71407455 0.43209505 0.64555353 0.43224737 0.64185935 0.43505415 0.63509232
		 0.49422359 0.50479627 0.50160563 0.474639 0.26837081 0.54790461 0.25910211 0.82850581
		 0.11549795 0.89543867 0.61003518 0.77986139 0.4312813 0.6438328 0.28272852 0.5866431
		 0.79504251 0.80890715 0.43171167 0.80716747 0.61849725 0.79222196 0.42802259 0.64766157
		 0.39602652 0.68364292 0.3034054 0.60807258 0.33861339 0.74195319 0.67367995 0.84525621
		 0.57856035 0.93233442 0.38796708 0.68667048 0.39109412 0.68617588 0.39506006 0.68411326
		 0.36746812 0.68991268 0.36229372 0.68330246 0.36560914 0.68753791 0.33995062 0.65475917;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[207]" -type "float3"  -1.8626451e-09 -4.6566129e-10 -9.3132257e-10;
	setAttr -s 297 ".vt";
	setAttr ".vt[0:165]"  0.10904797 -0.12681276 0.11370387 0.15608516 -0.099724308 0.13912463
		 0.11956421 0.063573077 0.12971506 0.11793689 0.057340428 0.12853888 0.12274976 0.026874667 0.12927769
		 0.11631974 -0.023193333 0.12320487 0.015651785 -0.040247217 0.21130112 0.068016365 -0.14197679 0.14833875
		 0.068055227 -0.14225376 0.14826082 0.068061866 -0.14230609 0.14824671 0.068093292 -0.14256896 0.14817765
		 0.082588367 -0.2696282 0.11542483 0.097752213 -0.23904379 0.10649561 0.097440727 -0.23653418 0.10716523
		 0.015659533 -0.035697937 0.21199903 0.18064623 -0.022906169 0.15757251 0.11947464 0.06525749 0.12641114
		 0.0023535229 0.25379562 0.18246785 0.14763369 0.11086096 0.10075611 0.010166744 -0.036440235 0.21257584
		 -0.044720687 -0.011513296 0.21466921 -0.041660897 0.026169896 0.24446914 0.04065188 0.0054647923 0.25390297
		 0.026627347 0.019153893 0.37390631 0.029571153 -0.018680573 0.37989175 0.062736124 -0.24538933 0.2694003
		 0.10112981 -0.42925644 0.071416013 0.083700486 -0.27790022 0.1118363 0.093744516 -0.40406862 0.065069541
		 0.094784409 -0.40404454 0.06387876 0.095247619 -0.37829152 0.070530325 0.25918007 -0.29050344 0.083448209
		 0.21002185 -0.010142937 0.15911758 0.34218311 0.33908534 0.084221669 0.17406975 0.16761574 0.050871186
		 0.17437591 0.16008194 0.065451384 -0.11788633 0.040598869 0.21531668 0.12064126 0.44429827 0.033607088
		 -0.1139161 -0.053208828 0.22560608 -0.082241736 -0.048928346 0.22227988 -0.13572654 -0.011418849 0.31292468
		 -0.10468963 -0.078444436 0.22056879 -0.10870344 -0.084303468 0.21975215 0.016582057 0.051683217 0.28253844
		 0.0054483041 -0.020726055 0.40831602 0.092453793 -0.44853294 0.17039378 0.094244801 -0.41170752 0.061923686
		 0.093695208 -0.40694559 0.063191786 0.093123816 -0.44683844 0.052879374 0.15191352 -0.46898246 0.043603189
		 0.097149938 -0.43766415 0.055016909 0.29948553 -0.1213791 0.12489084 0.29881954 -0.063237451 0.1400107
		 0.363534 0.24752654 0.12530896 0.17305166 0.2006463 -0.017035639 0.17367053 0.20165451 -0.01766202
		 0.17323597 0.20021763 -0.018256284 0.19527605 0.10755655 -0.063415185 0.19732261 0.1321063 -0.14832193
		 -0.072345331 0.2950182 0.17453647 -0.19363242 0.039857388 0.15858617 -0.15792495 -0.18720174 0.20419067
		 -0.15784553 -0.18730216 0.20416817 -0.1710313 -0.2567865 0.16711475 -0.15789425 -0.18740229 0.2041543
		 -0.14914763 -0.24803163 0.14490266 -0.039788317 0.11124015 0.36379254 -0.017067276 0.1109502 0.36428547
		 -0.017976219 0.020515859 0.42518637 0.0011839867 -0.34688592 0.26748168 0.019577792 -0.61312318 0.026099034
		 0.033642802 -0.58143699 0.024877978 0.053955391 -0.53567612 0.023114543 0.054114033 -0.53531009 0.023100812
		 0.054086376 -0.53535974 0.022796189 0.067064419 -0.50569409 0.027685363 0.075047858 -0.48802802 0.043282535
		 0.080709398 -0.4751271 0.046288341 0.11068755 -0.50249135 0.037389584 0.15877266 -0.4214341 -0.033627555
		 0.3069503 -0.1959829 0.063868001 0.34466505 0.23742794 0.046590172 0.32406801 0.34319264 0.026184402
		 0.32392624 0.22076561 -0.029485537 0.19556151 0.106365 -0.063996173 0.20269142 0.073943466 -0.072016262
		 0.1205996 0.350986 -0.18151879 0.14850967 0.2713626 -0.16944253 0.1473296 0.27921912 -0.15961577
		 0.12621543 0.3358739 -0.17699599 0.12085548 0.350256 -0.18140808 -0.093122154 0.39052916 0.11929008
		 -0.13539892 -0.3439894 0.042555511 -0.12491349 -0.41171405 0.041201659 -0.1283434 -0.38883594 0.051828146
		 -0.14735627 -0.26056573 0.13112514 -0.18152049 -0.28589156 0.24322617 -0.063141465 0.10925984 0.3913098
		 -0.017958704 0.10777164 0.40350533 -0.11225661 0.024024248 0.42301026 -0.16889265 -0.21088879 0.31947988
		 0.0079711266 -0.42269406 0.23505242 -0.068352908 -0.6673671 0.030278236 -0.05160284 -0.67991418 0.0012230773
		 -0.051756244 -0.66462183 0.020234754 -0.051858284 -0.65444916 0.032881539 -0.0071848291 -0.62860543 0.028640011
		 0.057825644 -0.55938768 0.0022954501 0.08791253 -0.50493592 0.0039974595 0.079716787 -0.51406771 0.0073682014
		 0.069144562 -0.52584743 0.011716314 0.089300692 -0.50242358 0.0016260176 0.10956684 -0.46574557 -0.032995246
		 0.37396711 0.067193672 0.066706784 0.3278895 -0.12710619 0.073647887 0.37051034 0.14581701 0.090729117
		 0.32401204 0.29475456 0.0041585835 0.32394248 0.23475064 -0.023126306 0.18477364 -0.0063482127 -0.0933173
		 0.23703641 -0.051667973 -0.10281673 0.144972 -0.15098357 -0.16931123 0.17350765 -0.056778878 -0.10675615
		 0.16438167 -0.10919682 -0.10780554 0.16417462 -0.11015198 -0.10802841 0.11354068 0.46183062 0.02426162
		 0.15501904 0.15293413 -0.16662605 0.14992715 0.25692278 -0.1688292 0.14024624 0.39671677 -0.27522683
		 0.16582343 0.12463339 -0.23553252 0.097472914 0.38021821 -0.16411918 0.09768828 0.37960219 -0.16389939
		 0.12056283 0.35093874 -0.18153471 -0.20508891 0.11108303 0.12112197 -0.19010895 0.002070142 -0.053097151
		 -0.18488945 -0.029785803 -0.027678866 -0.15287635 -0.45360291 0.06148386 -0.13959394 -0.46633309 0.042371515
		 -0.1763522 -0.081890583 0.013896236 -0.17243354 -0.10580711 0.032979541 -0.16528302 -0.15097019 0.046414062
		 -0.16180362 -0.17344348 0.045964815 -0.15314649 -0.22935919 0.044847019 -0.14093567 -0.30822793 0.043270405
		 -0.17518443 -0.34956616 0.20882416 -0.13778654 -0.018764108 0.40355736 -0.03197059 0.10658357 0.42001572
		 -0.063778237 0.10698947 0.41932565 -0.14109352 -0.37340334 0.25047779 -0.014520118 -0.44334748 0.22526489
		 -0.067290545 -0.65495795 0.01875479 -0.061422493 -0.66429293 0.012196985 0.055942848 -0.56279516 -0.0083763627
		 0.11470029 -0.45645499 -0.087222621 0.12873419 -0.43105617 -0.042449512 0.12136737 -0.44438878 -0.038815852
		 0.05725047 -0.56042862 -0.0040578796 0.29648554 -0.16977194 -0.013291249 0.36244503 0.042206302 0.017348103
		 0.19299079 -0.098435231 -0.11666742 0.12863851 -0.10298745 -0.17659348 0.13931383 -0.049418092 -0.17229097
		 0.15380968 0.069505498 -0.16669717 0.15785366 0.094238199 -0.16509122 0.1176827 -0.38595462 -0.12585595
		 0.15035126 -0.19225816 -0.11110114 0.083074927 0.53705454 -0.01583606;
	setAttr ".vt[166:296]" 0.089017451 0.16021886 -0.3209548 0.13511986 0.40935594 -0.27820238
		 0.097310305 0.37956393 -0.16385074 -0.037200987 0.60823345 -0.031639457 0.059330292 0.37571895 -0.15896203
		 0.028355008 0.34034923 -0.17026088 0.0070825452 0.30076101 -0.18527497 -0.19088347 0.0067971926 -0.056868929
		 0.00038761646 0.48302937 0.038276382 -0.12517735 0.51329565 0.04332976 -0.1236317 -0.51570892 0.04057138
		 -0.14911354 -0.50461054 0.085514411 -0.11797669 -0.42464644 0.22928205 -0.11508518 -0.57507229 0.060061119
		 -0.10155829 -0.583588 0.037833448 -0.085345492 -0.62575084 0.035084352 -0.082631968 -0.63203347 0.034045469
		 -0.081528224 -0.63368279 0.032945376 0.048387915 -0.57646823 -0.033326942 0.048387915 -0.57646823 -0.034777775
		 0.13131244 -0.39463344 -0.057710275 0.12997468 -0.40718037 -0.054489441 0.12056616 -0.14757001 -0.16909088
		 0.10805769 -0.20870768 -0.17843612 0.1563186 0.065469503 -0.24345177 0.11219314 -0.19393583 -0.16098504
		 0.11009619 -0.20556819 -0.15890099 -0.019464284 -0.44687179 -0.11350054 0.051582217 -0.31903005 -0.13761416
		 0.054619998 -0.32405487 -0.1367152 0.06626185 -0.3056066 -0.14020656 0.084002286 -0.27749419 -0.14552689
		 0.10155136 -0.22911508 -0.15457399 -0.012588723 -0.46480724 -0.11025861 0.058481306 0.5977788 -0.048205167
		 0.059169013 0.3207514 -0.3344475 0.1029525 0.43452233 -0.23652551 0.063708425 0.46677202 -0.19468704
		 -0.045050375 0.2165408 -0.23249468 -0.039081682 0.21379977 -0.21700312 -0.13446277 0.17651081 -0.2155087
		 -0.041238595 0.20973046 -0.21848848 -0.04178746 0.20289735 -0.22159657 -0.04179265 0.20285024 -0.22161771
		 -0.21057695 0.13463163 -0.045392066 -0.19068369 0.0046382295 -0.069101863 -0.19131774 0.0094475849 -0.058983713
		 -0.10604029 -0.57012409 0.038587514 -0.10530386 -0.57240206 0.038504463 -0.10346737 -0.57808292 0.038297355
		 0.048012558 -0.5766148 -0.034777775 -0.0027627505 -0.47470117 -0.10260832 0.047987483 -0.57602173 -0.035113681
		 0.046762727 -0.54705471 -0.051520202 0.049556635 -0.53985208 -0.054925654 0.044774551 -0.54012918 -0.055811528
		 0.04006533 -0.52691275 -0.064199984 0.038354676 -0.52193439 -0.067346022 0.034313064 -0.51203346 -0.07374189
		 0.051685177 -0.20039396 -0.21573775 0.053637829 -0.037585571 -0.2714496 -0.03941166 -0.39259338 -0.12247579
		 0.035820607 -0.29401168 -0.14158559 0.009392323 -0.25295344 -0.14765839 0.062091 -0.24853207 -0.19231461
		 0.0043058917 0.23421979 -0.29566383 0.11312456 0.46358538 -0.29096931 0.069601029 0.52354276 -0.26345542
		 -0.032981809 0.060555547 -0.19804159 -0.034115322 0.079291388 -0.2010508 -0.10729232 -0.11570024 -0.16703373
		 -0.20639694 0.10510588 -0.081456631 -0.19058697 0.0039045827 -0.07064534 0.044611592 -0.55061454 -0.058756571
		 0.045739856 -0.54417455 -0.056773875 0.0057142111 -0.24093156 -0.14956911 0.0068713091 -0.24903689 -0.14823769
		 -0.0084095504 -0.12953062 -0.16792646 -0.00053203007 -0.19310668 -0.15744403 -0.086232461 -0.26221219 -0.14297169
		 -0.093441039 -0.23691289 -0.14701003 -0.096459858 -0.23220022 -0.14770752 0.095368713 0.50736195 -0.30127543
		 -0.027500616 0.018669533 -0.19140776 -0.026069462 0.0070830071 -0.18956999 -0.18895353 0.001826026 -0.072414555
		 -0.15497944 -0.049409568 -0.11104035 -0.15744747 -0.04170043 -0.10949392 -0.15843841 -0.039529901 -0.10858089
		 -0.16074137 -0.035427831 -0.10616133 -0.18858954 0.0013453779 -0.072849959 -0.1101502 -0.19939312 -0.14459404
		 -0.012011674 -0.65788132 -0.098179296 -0.0085598249 -0.66633749 -0.099948376 -0.010116249 -0.67121595 -0.093751721
		 0.015252586 -0.61451185 -0.08150094 -0.038213357 -0.66508257 0.031496063 0.0060732365 -0.73352742 -0.015483633
		 0.038051978 -0.71955168 -0.018157065 0.057385206 -0.62565953 0.022342332 -0.011397496 -0.73419607 -0.031592358
		 0.031771466 -0.71068299 -0.046920046 -0.095409542 -0.6631366 -0.016064242 0.062956691 -0.56848633 0.02207531
		 -0.020189598 -0.72178078 -0.07185822 0.0026536584 -0.7117976 -0.07376793 0.042639092 -0.53979599 -0.070974663
		 -0.11079394 -0.63311136 0.0080789328 -0.094532624 -0.65124249 -0.12254392 -0.25238559 -0.40168968 0.0088372529
		 -0.24823795 -0.44739538 -0.16007926 -0.14221697 -0.60927868 -0.12745583 -0.054055348 -0.58757573 -0.15132006
		 -0.22795942 -0.28326982 0.051898539 -0.16536908 -0.29069474 -0.22532301 -0.37925956 -0.19432303 0.0095167235
		 -0.40380424 -0.17586124 -0.097108975 -0.26993519 -0.20578519 0.056378037 -0.33059463 -0.23376442 -0.21645442
		 -0.16875081 -0.22060446 -0.21998914 -0.41034463 0.1716722 -0.096240021 -0.25711119 -0.1735343 0.055281073
		 -0.42230436 -0.073410392 -0.17778704 -0.15951928 -0.037908837 -0.10966671 -0.32973415 0.12765148 -0.033748437
		 -0.318865 0.055168211 -0.19554907 -0.4195621 0.1522367 -0.15969202 -0.32589293 0.094326794 -0.11673842
		 -0.33036774 0.066256523 -0.1914531 -0.24217936 0.054190993 -0.050970685 -0.37972134 0.11383182 -0.17387891;
	setAttr -s 620 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 0 3 4 0 4 5 0 5 0 0 3 16 0 16 18 0
		 18 17 1 17 14 0 14 4 0 6 19 0 19 20 0 20 21 0 21 22 1 22 7 0 7 6 0 11 27 0 27 28 0
		 28 29 0 29 30 0 30 12 0 12 11 1 2 33 0 33 34 1 34 35 0 35 18 0 16 2 0 14 36 1 36 38 0
		 38 39 0 39 20 0 19 14 0 39 41 0 41 42 0 42 40 1 40 21 0 133 173 0 173 212 0 212 295 0
		 295 137 1 137 134 0 134 133 0 74 107 0 107 108 0 108 109 0 109 110 0 110 75 0 75 74 0
		 89 127 1 127 129 1 129 130 0 130 131 0 131 90 0 90 89 0 234 249 0 249 250 0 250 243 0
		 243 236 1 236 235 1 235 234 0 103 150 0 150 268 1 268 266 0 266 262 1 262 104 1 104 103 0
		 151 155 0 155 269 0 269 267 1 267 272 0 272 240 0 240 239 0 239 219 0 219 218 0 218 216 0
		 216 184 0 184 151 0 227 245 0 245 246 0 246 247 0 247 236 0 243 244 0 244 241 0 241 242 0
		 242 229 0 229 228 0 228 227 1 0 13 0 13 1 0 1 15 0 15 2 0 293 295 1 295 294 1 294 293 1
		 6 14 0 1 32 1 32 15 0 32 2 1 17 36 1 21 43 0 43 22 0 43 23 1 23 22 0 23 44 1 44 24 0
		 24 23 0 44 25 1 25 24 0 25 45 0 45 26 0 26 25 1 28 47 0 47 29 0 1 31 1 31 51 0 51 1 1
		 1 52 1 52 32 0 32 53 0 53 2 1 53 33 0 17 59 0 59 36 0 17 37 0 37 59 1 36 60 1 60 38 1
		 38 41 1 40 66 1 66 21 0 66 43 1 43 67 0 67 23 1 23 68 1 68 44 0 44 69 0 69 25 1 69 45 1
		 26 50 0 50 46 0 46 26 1 31 49 0 49 79 0 79 31 1 51 52 0 31 80 0 80 51 1 52 53 0 53 81 1
		 81 33 1 33 82 0 82 55 0 55 33 1 54 55 0 55 56 0 56 54 0 59 60 1 37 91 1 91 59 0 60 61 0
		 61 38 0 61 64 0 64 62 0 62 61 1 294 296 0;
	setAttr ".ed[166:331]" 296 293 1 40 63 0 63 96 0 96 40 1 40 97 0 97 66 0 66 67 0
		 67 98 0 98 23 0 98 68 1 68 99 0 99 44 1 44 100 1 100 69 1 69 101 0 101 45 0 76 78 0
		 78 77 1 77 76 0 79 80 1 51 113 1 113 52 1 80 114 0 114 51 1 52 115 1 115 53 0 81 116 1
		 116 33 1 115 81 1 116 82 0 116 55 1 55 117 1 117 83 0 83 55 1 37 86 1 86 124 1 124 37 0
		 88 127 0 89 88 0 86 90 0 131 86 0 59 132 1 132 60 0 124 91 1 91 132 1 96 100 0 100 40 1
		 63 143 1 143 96 0 40 144 0 144 97 1 97 98 1 98 66 1 98 145 0 145 68 0 99 144 0 144 44 1
		 68 146 1 146 99 0 144 100 0 100 147 0 147 69 1 101 148 0 148 45 1 69 148 1 148 102 0
		 102 45 1 78 110 0 109 78 1 79 156 0 156 80 0 79 112 0 112 154 0 154 79 1 114 113 0
		 113 115 0 156 114 1 81 117 1 117 116 0 115 117 1 115 83 1 83 157 0 157 119 1 119 83 0
		 121 158 0 158 122 1 122 121 0 288 296 1 294 288 1 86 165 1 165 124 0 127 128 0 128 166 0
		 166 127 0 127 167 0 167 129 1 129 168 1 168 130 0 124 174 1 174 91 1 91 175 0 175 132 0
		 63 135 0 135 143 1 96 147 1 143 147 1 99 97 1 97 145 1 145 146 0 146 97 0 147 178 0
		 178 69 1 178 148 0 178 102 0 286 293 1 296 286 1 114 157 1 157 113 0 113 83 1 156 157 0
		 156 119 0 290 295 0 293 290 1 120 188 1 188 159 0 159 120 0 296 292 0 292 286 0 291 294 0
		 295 291 1 288 292 0 86 200 0 200 165 0 165 174 1 128 190 0 190 166 0 166 201 0 201 127 1
		 201 167 1 167 202 1 202 129 1 86 169 1 169 200 0 170 203 0 203 171 0 171 170 0 174 175 1
		 175 210 0 210 132 0 135 177 0 177 143 0 177 147 1 177 178 1 178 179 1 179 102 0 216 185 0
		 185 184 0 120 191 1 191 188 0 195 230 0 230 196 1 196 195 0 169 165 1 169 174 1 190 226 1
		 226 166 0;
	setAttr ".ed[332:497]" 166 231 1 231 201 0 201 232 1 232 167 0 232 202 1 202 203 1
		 203 129 0 203 233 0 233 204 0 204 203 1 204 207 0 207 205 0 205 204 1 169 206 0 206 175 1
		 175 169 0 204 208 1 208 207 0 206 210 1 179 213 1 213 214 0 214 179 1 177 179 0 218 185 1
		 239 220 0 220 219 0 189 230 0 230 225 0 225 189 1 226 231 0 231 233 1 233 201 1 201 248 0
		 248 232 0 232 233 1 233 202 1 231 204 0 206 237 0 237 210 0 226 241 1 244 226 1 247 257 0
		 257 236 1 233 248 0 257 252 0 252 236 1 258 259 0 259 260 0 260 258 0 258 261 0 261 259 0
		 261 260 0 262 263 0 263 264 0 264 262 1 264 265 0 265 262 0 266 263 0 263 267 1 267 264 0
		 267 265 1 266 267 1 262 105 0 105 104 0 269 265 0 268 270 1 270 266 0 266 271 1 271 267 0
		 270 271 0 268 274 1 274 270 0 271 272 1 268 273 0 273 276 1 276 268 1 274 271 1 268 277 0
		 277 274 0 222 272 1 272 223 1 223 222 0 273 275 0 275 276 1 276 277 0 274 278 0 278 271 0
		 277 278 1 272 278 0 278 280 0 280 272 1 272 224 0 224 223 0 275 279 1 279 281 1 281 275 0
		 275 282 1 282 276 0 141 279 1 279 142 1 142 141 0 281 282 0 279 283 0 283 281 0 282 284 1
		 284 276 0 284 280 0 280 276 1 140 279 1 141 140 0 281 286 0 286 282 1 279 287 1 287 283 0
		 287 281 1 282 288 0 288 284 0 284 285 0 285 280 0 286 288 1 281 290 1 290 286 0 287 290 0
		 288 291 1 291 284 0 291 285 0 291 289 0 289 285 1 253 289 0 289 254 1 254 253 0 289 255 0
		 255 254 0 23 8 1 8 7 0 24 9 1 9 8 0 25 10 1 10 9 0 35 37 0 54 34 0 48 77 0 78 49 0
		 49 48 1 57 84 0 84 85 0 85 58 0 58 57 0 76 75 0 49 111 1 111 112 0 58 125 1 125 126 0
		 126 87 0 87 58 0 60 133 1 134 61 1 93 136 0 136 135 0 135 94 1 94 93 0 63 95 0 95 94 0
		 102 149 1 149 150 0 103 102 0;
	setAttr ".ed[498:619]" 118 119 0 119 158 0 121 118 0 291 256 1 256 255 0 125 162 0
		 162 128 0 128 126 1 132 173 1 136 176 0 176 177 1 185 152 0 152 151 1 154 153 0 153 187 0
		 187 79 0 290 138 0 138 137 0 170 168 0 176 213 0 214 215 0 215 180 0 180 179 1 152 217 1
		 217 199 0 199 163 0 163 152 0 120 198 1 198 192 0 192 191 0 189 192 0 198 197 0 197 189 0
		 225 226 0 190 189 0 193 227 0 228 194 0 194 193 1 197 196 0 206 209 0 209 235 0 236 206 0
		 237 238 0 238 211 0 211 210 1 240 221 0 221 220 0 225 242 0 230 229 1 231 249 1 234 204 0
		 206 251 1 251 238 0 250 226 1 265 106 1 106 105 0 149 183 0 183 268 1 71 269 1 269 73 0
		 73 72 0 72 71 0 182 273 0 183 182 0 222 221 0 181 275 1 182 181 0 287 139 0 139 138 0
		 140 139 0 158 164 0 164 123 0 123 122 0 79 158 1 26 27 0 11 10 0 13 12 0 30 31 1
		 46 47 0 62 42 0 45 70 0 70 71 0 72 26 1 83 84 0 57 56 0 108 111 0 118 85 0 88 87 0
		 163 186 1 186 187 0 153 152 0 205 172 0 172 171 0 211 212 0 186 164 0 195 194 0 209 208 0
		 70 106 0 155 107 0 74 73 0 215 279 0 181 180 0 162 161 0 161 160 0 160 190 1 163 120 0
		 120 123 1 50 48 0 172 169 1 252 253 0 256 251 0 58 37 0 61 92 1 92 93 0 95 65 0 65 64 0
		 120 58 0 159 160 0 246 285 0 142 92 0 199 193 0 224 217 0;
	setAttr -s 810 ".n";
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
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
	setAttr ".n[332:497]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
	setAttr ".n[498:663]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
	setAttr ".n[664:809]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 326 -ch 1240 ".fc[0:325]" -type "polyFaces" 
		f 6 0 1 2 3 4 5
		mu 0 6 0 1 2 3 4 5
		mu 1 6 0 1 2 3 4 5
		f 6 6 7 8 9 10 -4
		mu 0 6 20 21 22 23 8 24
		mu 1 6 22 23 24 25 8 26
		f 6 11 12 13 14 15 16
		mu 0 6 26 27 28 29 30 31
		mu 1 6 28 29 30 31 32 33
		f 6 17 18 19 20 21 22
		mu 0 6 14 41 42 43 44 15
		mu 1 6 14 43 44 45 46 15
		f 6 23 24 25 26 -8 27
		mu 0 6 2 49 50 51 52 19
		mu 1 6 19 51 52 53 54 20
		f 6 28 29 30 31 -13 32
		mu 0 6 8 53 56 57 58 25
		mu 1 6 8 55 58 59 60 27
		f 6 -32 33 34 35 36 -14
		mu 0 6 28 59 60 61 62 29
		mu 1 6 30 61 62 63 64 31
		f 6 37 38 39 40 41 42
		mu 0 6 459 460 458 453 452 461
		mu 1 6 485 486 484 478 477 487
		f 6 43 44 45 46 47 48
		mu 0 6 146 147 148 149 150 151
		mu 1 6 155 156 157 158 159 160
		f 6 49 50 51 52 53 54
		mu 0 6 180 178 181 182 183 184
		mu 1 6 190 188 191 192 193 194
		f 6 55 56 57 58 59 60
		mu 0 6 346 347 348 339 326 325
		mu 1 6 363 364 365 352 339 338
		f 6 61 62 63 64 65 66
		mu 0 6 371 372 373 367 363 374
		mu 1 6 390 391 392 386 382 393
		f 11 67 68 69 70 71 72 73 74 75 76 77
		mu 0 11 384 385 376 368 386 387 388 389 390 391 392
		mu 1 11 405 406 395 387 407 408 409 410 411 412 413
		f 11 78 79 80 81 -59 82 83 84 85 86 87
		mu 0 11 309 336 337 338 326 339 340 341 342 343 310
		mu 1 11 319 349 350 351 339 352 353 354 355 356 320
		f 3 88 89 -1
		mu 0 3 0 17 1
		mu 1 3 0 17 1
		f 3 90 91 -2
		mu 0 3 1 18 2
		mu 1 3 1 18 2
		f 3 -28 -7 -3
		mu 0 3 2 19 3
		mu 1 3 19 20 21
		f 3 92 93 94
		mu 0 3 448 453 449
		mu 1 3 473 478 474
		f 3 95 -33 -12
		mu 0 3 9 8 25
		mu 1 3 9 8 27
		f 3 96 97 -91
		mu 0 3 1 48 18
		mu 1 3 1 50 18
		f 3 -92 -98 98
		mu 0 3 2 18 48
		mu 1 3 2 18 50
		f 3 -10 99 -29
		mu 0 3 8 23 53
		mu 1 3 8 25 55
		f 3 100 101 -15
		mu 0 3 29 63 30
		mu 1 3 31 65 32
		f 3 -102 102 103
		mu 0 3 30 63 32
		mu 1 3 32 65 34
		f 3 104 105 106
		mu 0 3 32 64 34
		mu 1 3 66 67 68
		f 3 -106 107 108
		mu 0 3 34 64 36
		mu 1 3 68 67 69
		f 3 109 110 111
		mu 0 3 36 65 38
		mu 1 3 38 70 40
		f 3 112 113 -20
		mu 0 3 42 69 43
		mu 1 3 44 74 45
		f 3 114 115 116
		mu 0 3 1 47 76
		mu 1 3 1 49 81
		f 3 117 118 -97
		mu 0 3 1 77 48
		mu 1 3 1 82 50
		f 3 -99 119 120
		mu 0 3 2 48 78
		mu 1 3 2 50 83
		f 3 -121 121 -24
		mu 0 3 2 78 49
		mu 1 3 2 83 84
		f 3 122 123 -100
		mu 0 3 23 86 53
		mu 1 3 25 92 55
		f 3 124 125 -123
		mu 0 3 23 55 86
		mu 1 3 25 57 92
		f 3 126 127 -30
		mu 0 3 53 87 56
		mu 1 3 55 93 58
		f 3 128 -34 -31
		mu 0 3 56 88 57
		mu 1 3 58 94 59
		f 3 -37 129 130
		mu 0 3 29 62 96
		mu 1 3 31 64 102
		f 3 -131 131 -101
		mu 0 3 29 96 63
		mu 1 3 31 102 65
		f 3 -103 132 133
		mu 0 3 32 63 97
		mu 1 3 34 65 103
		f 3 134 135 -105
		mu 0 3 32 98 64
		mu 1 3 66 104 67
		f 3 -108 136 137
		mu 0 3 36 64 99
		mu 1 3 69 67 105
		f 3 -138 138 -110
		mu 0 3 36 99 65
		mu 1 3 69 105 106
		f 3 139 140 141
		mu 0 3 38 103 66
		mu 1 3 40 110 71
		f 3 142 143 144
		mu 0 3 47 75 112
		mu 1 3 49 80 119
		f 3 -117 145 -118
		mu 0 3 1 76 77
		mu 1 3 1 81 82
		f 3 146 147 -116
		mu 0 3 47 113 76
		mu 1 3 49 120 81
		f 3 -119 148 -120
		mu 0 3 48 77 78
		mu 1 3 50 82 83
		f 3 -122 149 150
		mu 0 3 49 78 114
		mu 1 3 84 83 121
		f 3 151 152 153
		mu 0 3 49 115 79
		mu 1 3 51 122 85
		f 3 154 155 156
		mu 0 3 80 79 116
		mu 1 3 86 85 123
		f 3 -124 157 -127
		mu 0 3 53 86 87
		mu 1 3 55 92 93
		f 3 158 159 -126
		mu 0 3 55 127 86
		mu 1 3 57 134 92
		f 3 -128 160 161
		mu 0 3 56 87 89
		mu 1 3 58 93 95
		f 3 162 163 164
		mu 0 3 89 128 90
		mu 1 3 95 135 96
		f 3 -95 165 166
		mu 0 3 448 449 454
		mu 1 3 473 474 479
		f 3 167 168 169
		mu 0 3 62 95 135
		mu 1 3 64 101 142
		f 3 170 171 -130
		mu 0 3 62 136 96
		mu 1 3 64 143 102
		f 3 -132 172 -133
		mu 0 3 63 96 97
		mu 1 3 65 102 103
		f 3 -134 173 174
		mu 0 3 32 97 137
		mu 1 3 34 103 144
		f 3 -175 175 -135
		mu 0 3 32 137 98
		mu 1 3 66 145 104
		f 3 -136 176 177
		mu 0 3 64 98 138
		mu 1 3 67 104 146
		f 3 178 179 -137
		mu 0 3 64 139 99
		mu 1 3 67 147 105
		f 3 -139 180 181
		mu 0 3 65 99 140
		mu 1 3 106 105 148
		f 3 182 183 184
		mu 0 3 154 111 110
		mu 1 3 163 118 117
		f 3 -145 185 -147
		mu 0 3 47 112 113
		mu 1 3 49 119 120
		f 3 186 187 -146
		mu 0 3 76 159 77
		mu 1 3 81 168 82
		f 3 -148 188 189
		mu 0 3 76 113 160
		mu 1 3 81 120 169
		f 3 190 191 -149
		mu 0 3 77 161 78
		mu 1 3 82 170 83
		f 3 -151 192 193
		mu 0 3 49 114 162
		mu 1 3 51 171 172
		f 3 -192 194 -150
		mu 0 3 78 161 114
		mu 1 3 83 170 121
		f 3 -194 195 -152
		mu 0 3 49 162 115
		mu 1 3 51 172 122
		f 3 -153 -196 196
		mu 0 3 79 115 162
		mu 1 3 85 122 172
		f 3 197 198 199
		mu 0 3 79 163 117
		mu 1 3 85 173 124
		f 3 200 201 202
		mu 0 3 55 126 172
		mu 1 3 57 133 182
		f 3 203 -50 204
		mu 0 3 179 178 180
		mu 1 3 189 188 190
		f 3 205 -54 206
		mu 0 3 126 125 185
		mu 1 3 133 132 195
		f 3 207 208 -158
		mu 0 3 86 186 87
		mu 1 3 92 196 93
		f 3 -203 209 -159
		mu 0 3 55 172 127
		mu 1 3 57 182 134
		f 3 -160 210 -208
		mu 0 3 86 127 186
		mu 1 3 92 134 196
		f 3 -170 211 212
		mu 0 3 62 135 139
		mu 1 3 64 142 147
		f 3 213 214 -169
		mu 0 3 95 199 135
		mu 1 3 101 209 142
		f 3 215 216 -171
		mu 0 3 62 200 136
		mu 1 3 64 210 143
		f 3 -172 217 218
		mu 0 3 96 136 137
		mu 1 3 102 143 144
		f 3 -219 -174 -173
		mu 0 3 96 137 97
		mu 1 3 102 144 103
		f 3 -176 219 220
		mu 0 3 98 137 201
		mu 1 3 104 145 211
		f 3 -178 221 222
		mu 0 3 64 138 200
		mu 1 3 67 146 210
		f 3 223 224 -177
		mu 0 3 98 202 138
		mu 1 3 104 212 146
		f 3 -223 225 -179
		mu 0 3 64 200 139
		mu 1 3 67 210 147
		f 3 -180 226 227
		mu 0 3 99 139 203
		mu 1 3 105 147 213
		f 3 -182 228 229
		mu 0 3 65 140 204
		mu 1 3 106 148 214
		f 3 230 -229 -181
		mu 0 3 99 204 140
		mu 1 3 105 214 148
		f 3 -230 231 232
		mu 0 3 65 204 141
		mu 1 3 106 214 149
		f 3 233 -47 234
		mu 0 3 111 153 155
		mu 1 3 118 162 164
		f 3 235 236 -186
		mu 0 3 112 214 113
		mu 1 3 119 224 120
		f 3 237 238 239
		mu 0 3 112 158 215
		mu 1 3 119 167 225
		f 3 -190 240 -187
		mu 0 3 76 160 159
		mu 1 3 81 169 168
		f 3 -188 241 -191
		mu 0 3 77 159 161
		mu 1 3 82 168 170
		f 3 -237 242 -189
		mu 0 3 113 214 160
		mu 1 3 120 224 169
		f 3 243 244 -193
		mu 0 3 114 163 162
		mu 1 3 121 173 172
		f 3 -195 245 -244
		mu 0 3 114 161 163
		mu 1 3 121 170 173
		f 3 -197 -245 -198
		mu 0 3 79 162 163
		mu 1 3 85 172 173
		f 3 -199 -246 246
		mu 0 3 117 163 161
		mu 1 3 124 173 170
		f 3 247 248 249
		mu 0 3 117 216 164
		mu 1 3 124 226 174
		f 3 250 251 252
		mu 0 3 218 217 223
		mu 1 3 228 227 233
		f 3 253 -166 254
		mu 0 3 436 454 449
		mu 1 3 460 479 474
		f 3 255 256 -202
		mu 0 3 126 227 172
		mu 1 3 133 237 182
		f 3 257 258 259
		mu 0 3 178 177 230
		mu 1 3 188 187 240
		f 3 260 261 -51
		mu 0 3 178 231 181
		mu 1 3 188 241 191
		f 3 262 263 -52
		mu 0 3 181 232 182
		mu 1 3 191 242 192
		f 3 -210 264 265
		mu 0 3 127 172 240
		mu 1 3 134 182 250
		f 3 266 267 -211
		mu 0 3 127 241 186
		mu 1 3 134 251 196
		f 3 268 269 -214
		mu 0 3 95 191 199
		mu 1 3 101 201 209
		f 3 -213 -226 -216
		mu 0 3 62 139 200
		mu 1 3 64 147 210
		f 3 270 -227 -212
		mu 0 3 135 203 139
		mu 1 3 142 213 147
		f 3 -215 271 -271
		mu 0 3 135 199 203
		mu 1 3 142 209 213
		f 3 -217 -222 272
		mu 0 3 136 200 138
		mu 1 3 143 210 146
		f 3 273 -220 -218
		mu 0 3 136 201 137
		mu 1 3 143 211 145
		f 3 -221 274 -224
		mu 0 3 98 201 202
		mu 1 3 104 211 212
		f 3 -273 -225 275
		mu 0 3 136 138 202
		mu 1 3 143 146 212
		f 3 -228 276 277
		mu 0 3 99 203 244
		mu 1 3 105 213 254
		f 3 -278 278 -231
		mu 0 3 99 244 204
		mu 1 3 105 254 214
		f 3 -232 -279 279
		mu 0 3 141 204 244
		mu 1 3 149 214 254
		f 3 280 -167 281
		mu 0 3 434 448 454
		mu 1 3 458 480 479
		f 3 -241 282 283
		mu 0 3 159 160 216
		mu 1 3 168 169 226
		f 3 -247 -242 284
		mu 0 3 117 161 159
		mu 1 3 124 170 168
		f 3 -243 285 -283
		mu 0 3 160 214 216
		mu 1 3 169 224 226
		f 3 -285 -284 -248
		mu 0 3 117 159 216
		mu 1 3 124 168 226
		f 3 -249 -286 286
		mu 0 3 164 216 214
		mu 1 3 174 226 224
		f 3 287 -93 288
		mu 0 3 443 453 448
		mu 1 3 467 478 473
		f 3 289 290 291
		mu 0 3 171 256 219
		mu 1 3 181 266 229
		f 3 -282 292 293
		mu 0 3 434 454 447
		mu 1 3 458 479 472
		f 3 294 -94 295
		mu 0 3 444 449 453
		mu 1 3 469 474 478
		f 3 296 -293 -254
		mu 0 3 436 447 454
		mu 1 3 460 472 479
		f 3 297 298 -256
		mu 0 3 126 273 227
		mu 1 3 133 283 237
		f 3 -257 299 -265
		mu 0 3 172 227 240
		mu 1 3 182 237 250
		f 3 300 301 -259
		mu 0 3 177 262 230
		mu 1 3 187 272 240
		f 3 -260 302 303
		mu 0 3 178 230 274
		mu 1 3 188 240 284
		f 3 -304 304 -261
		mu 0 3 178 274 231
		mu 1 3 188 284 241
		f 3 -262 305 306
		mu 0 3 181 231 275
		mu 1 3 191 241 285
		f 3 307 308 -298
		mu 0 3 126 238 273
		mu 1 3 133 248 283
		f 3 309 310 311
		mu 0 3 277 276 278
		mu 1 3 287 286 288
		f 3 -266 312 -267
		mu 0 3 127 240 241
		mu 1 3 134 250 251
		f 3 -268 313 314
		mu 0 3 186 241 287
		mu 1 3 196 251 297
		f 3 315 316 -270
		mu 0 3 191 243 199
		mu 1 3 201 253 209
		f 3 -317 317 -272
		mu 0 3 199 243 203
		mu 1 3 209 253 213
		f 3 -276 -275 -274
		mu 0 3 136 202 201
		mu 1 3 143 212 211
		f 3 -318 318 -277
		mu 0 3 203 243 244
		mu 1 3 213 253 254
		f 3 -280 319 320
		mu 0 3 141 244 245
		mu 1 3 149 254 255
		f 3 -77 321 322
		mu 0 3 250 293 251
		mu 1 3 260 303 261
		f 3 323 324 -290
		mu 0 3 171 303 256
		mu 1 3 181 313 266
		f 3 325 326 327
		mu 0 3 315 314 316
		mu 1 3 325 324 326
		f 3 -299 -309 328
		mu 0 3 227 273 238
		mu 1 3 237 283 248
		f 3 -329 329 -300
		mu 0 3 227 238 240
		mu 1 3 237 248 327
		f 3 -302 330 331
		mu 0 3 230 262 308
		mu 1 3 240 272 318
		f 3 332 333 -303
		mu 0 3 230 317 274
		mu 1 3 240 328 284
		f 3 -305 334 335
		mu 0 3 231 274 318
		mu 1 3 241 284 329
		f 3 -336 336 -306
		mu 0 3 231 318 275
		mu 1 3 241 329 285
		f 3 -307 337 338
		mu 0 3 181 275 276
		mu 1 3 191 285 286
		f 3 339 340 341
		mu 0 3 276 319 279
		mu 1 3 286 330 289
		f 3 342 343 344
		mu 0 3 279 320 280
		mu 1 3 289 331 290
		f 3 345 346 347
		mu 0 3 238 286 241
		mu 1 3 332 333 251
		f 3 348 349 -343
		mu 0 3 279 321 320
		mu 1 3 289 334 331
		f 3 -348 -313 -330
		mu 0 3 238 241 240
		mu 1 3 332 251 250
		f 3 -347 350 -314
		mu 0 3 241 286 287
		mu 1 3 251 333 297
		f 3 351 352 353
		mu 0 3 245 290 291
		mu 1 3 255 300 301
		f 3 354 -320 -319
		mu 0 3 243 245 244
		mu 1 3 253 255 254
		f 3 -322 -76 355
		mu 0 3 251 293 294
		mu 1 3 261 303 304
		f 3 -74 356 357
		mu 0 3 329 330 331
		mu 1 3 342 343 344
		f 3 358 359 360
		mu 0 3 261 314 307
		mu 1 3 271 324 317
		f 3 -332 361 -333
		mu 0 3 230 308 317
		mu 1 3 240 318 328
		f 3 -334 362 363
		mu 0 3 274 317 319
		mu 1 3 284 328 357
		f 3 364 365 -335
		mu 0 3 274 344 318
		mu 1 3 284 358 329
		f 3 -337 366 367
		mu 0 3 275 318 319
		mu 1 3 359 329 357
		f 3 -368 -340 -338
		mu 0 3 275 319 276
		mu 1 3 285 330 286
		f 3 -341 -363 368
		mu 0 3 279 319 317
		mu 1 3 360 357 328
		f 3 369 370 -351
		mu 0 3 286 327 287
		mu 1 3 333 340 297
		f 3 371 -84 372
		mu 0 3 308 335 355
		mu 1 3 318 348 373
		f 3 -82 373 374
		mu 0 3 326 338 356
		mu 1 3 366 374 375
		f 3 -364 375 -365
		mu 0 3 274 319 344
		mu 1 3 284 357 358
		f 3 -366 -376 -367
		mu 0 3 318 344 319
		mu 1 3 329 358 357
		f 3 -375 376 377
		mu 0 3 326 356 349
		mu 1 3 366 375 367
		f 3 378 379 380
		mu 0 3 359 360 361
		mu 1 3 378 379 380
		f 3 381 382 -379
		mu 0 3 359 362 360
		mu 1 3 378 381 379
		f 3 -383 383 -380
		mu 0 3 360 362 361
		mu 1 3 379 381 380
		f 3 384 385 386
		mu 0 3 363 364 365
		mu 1 3 382 383 384
		f 3 -387 387 388
		mu 0 3 363 365 366
		mu 1 3 382 384 385
		f 3 -65 389 -385
		mu 0 3 363 367 364
		mu 1 3 382 386 383
		f 3 390 391 -386
		mu 0 3 364 368 365
		mu 1 3 383 387 384
		f 3 -392 392 -388
		mu 0 3 365 368 366
		mu 1 3 384 387 385
		f 3 -390 393 -391
		mu 0 3 364 367 368
		mu 1 3 383 386 387
		f 3 -66 394 395
		mu 0 3 374 363 369
		mu 1 3 393 382 388
		f 3 -393 -70 396
		mu 0 3 366 368 376
		mu 1 3 385 387 395
		f 3 -64 397 398
		mu 0 3 367 373 380
		mu 1 3 399 400 401
		f 3 399 400 -394
		mu 0 3 367 381 368
		mu 1 3 399 402 387
		f 3 -399 401 -400
		mu 0 3 367 380 381
		mu 1 3 399 401 402
		f 3 402 403 -398
		mu 0 3 373 395 380
		mu 1 3 400 416 401
		f 3 -401 404 -71
		mu 0 3 368 381 386
		mu 1 3 387 402 407
		f 3 405 406 407
		mu 0 3 373 394 402
		mu 1 3 400 423 424
		f 3 -404 408 -402
		mu 0 3 380 395 381
		mu 1 3 401 416 402
		f 3 409 410 -403
		mu 0 3 373 403 395
		mu 1 3 400 425 416
		f 3 411 412 413
		mu 0 3 399 386 408
		mu 1 3 420 407 430
		f 3 414 415 -407
		mu 0 3 394 401 402
		mu 1 3 423 434 424
		f 3 -408 416 -410
		mu 0 3 373 402 403
		mu 1 3 400 424 425
		f 3 -409 417 418
		mu 0 3 381 395 406
		mu 1 3 402 416 428
		f 3 -411 419 -418
		mu 0 3 395 403 406
		mu 1 3 416 425 428
		f 3 420 421 422
		mu 0 3 386 406 412
		mu 1 3 407 428 435
		f 3 -413 423 424
		mu 0 3 408 386 413
		mu 1 3 430 407 436
		f 3 425 426 427
		mu 0 3 401 411 421
		mu 1 3 422 433 444
		f 3 428 429 -416
		mu 0 3 401 422 402
		mu 1 3 434 445 424
		f 3 430 431 432
		mu 0 3 428 411 415
		mu 1 3 451 433 438
		f 3 -428 433 -429
		mu 0 3 401 421 422
		mu 1 3 434 452 445
		f 3 434 435 -427
		mu 0 3 411 429 421
		mu 1 3 433 453 444
		f 3 -430 436 437
		mu 0 3 402 422 430
		mu 1 3 424 445 454
		f 3 -438 438 439
		mu 0 3 402 430 412
		mu 1 3 424 454 435
		f 3 440 -431 441
		mu 0 3 433 411 428
		mu 1 3 457 433 451
		f 3 442 443 -434
		mu 0 3 421 434 422
		mu 1 3 452 458 445
		f 3 444 445 -435
		mu 0 3 411 435 429
		mu 1 3 433 459 453
		f 3 -436 -446 446
		mu 0 3 421 429 435
		mu 1 3 444 453 459
		f 3 447 448 -437
		mu 0 3 422 436 430
		mu 1 3 445 460 454
		f 3 -439 449 450
		mu 0 3 412 430 431
		mu 1 3 435 454 455
		f 3 -444 451 -448
		mu 0 3 422 434 436
		mu 1 3 445 458 460
		f 3 452 453 -443
		mu 0 3 421 443 434
		mu 1 3 444 467 468
		f 3 -447 454 -453
		mu 0 3 421 435 443
		mu 1 3 444 459 467
		f 3 -449 455 456
		mu 0 3 430 436 444
		mu 1 3 454 460 469
		f 3 -457 457 -450
		mu 0 3 430 444 431
		mu 1 3 454 469 455
		f 3 -458 458 459
		mu 0 3 431 444 437
		mu 1 3 455 469 461
		f 3 460 461 462
		mu 0 3 438 437 445
		mu 1 3 462 461 470
		f 3 -294 -297 -452
		mu 0 3 434 447 436
		mu 1 3 458 472 460
		f 3 -454 -289 -281
		mu 0 3 434 443 448
		mu 1 3 468 467 473
		f 3 -255 -295 -456
		mu 0 3 436 449 444
		mu 1 3 460 474 469
		f 3 -462 463 464
		mu 0 3 445 437 450
		mu 1 3 470 461 475
		f 4 -16 -104 465 466
		mu 0 4 31 30 32 33
		mu 1 4 33 32 34 35
		f 4 -466 -107 467 468
		mu 0 4 33 32 34 35
		mu 1 4 35 34 36 37
		f 4 -468 -109 469 470
		mu 0 4 35 34 36 37
		mu 1 4 37 36 38 39
		f 4 -9 -27 471 -125
		mu 0 4 23 22 54 55
		mu 1 4 25 24 56 57
		f 4 -154 -155 472 -25
		mu 0 4 49 79 80 50
		mu 1 4 51 85 86 52
		f 4 473 -184 474 475
		mu 0 4 74 110 111 75
		mu 1 4 79 117 118 80
		f 4 476 477 478 479
		mu 0 4 84 120 121 85
		mu 1 4 90 127 128 91
		f 4 -48 -234 -183 480
		mu 0 4 152 153 111 154
		mu 1 4 161 162 118 163
		f 4 481 482 -238 -144
		mu 0 4 75 157 158 112
		mu 1 4 80 166 167 119
		f 4 483 484 485 486
		mu 0 4 85 173 174 122
		mu 1 4 91 183 184 129
		f 4 487 -43 488 -161
		mu 0 4 87 187 188 89
		mu 1 4 93 197 198 95
		f 4 489 490 491 492
		mu 0 4 189 190 191 192
		mu 1 4 199 200 201 202
		f 4 493 494 -492 -269
		mu 0 4 95 134 192 191
		mu 1 4 101 141 202 201
		f 4 495 496 -62 497
		mu 0 4 141 205 206 142
		mu 1 4 149 215 216 150
		f 4 498 499 -251 500
		mu 0 4 165 164 217 218
		mu 1 4 175 174 227 228
		f 4 -464 -459 501 502
		mu 0 4 450 437 444 451
		mu 1 4 475 461 469 476
		f 4 503 504 505 -485
		mu 0 4 228 229 177 176
		mu 1 4 238 239 187 186
		f 4 -209 506 -38 -488
		mu 0 4 87 186 239 187
		mu 1 4 93 196 249 197
		f 4 -491 507 508 -316
		mu 0 4 191 190 242 243
		mu 1 4 201 200 252 253
		f 4 -78 -323 509 510
		mu 0 4 208 250 251 209
		mu 1 4 218 260 261 219
		f 4 -240 511 512 513
		mu 0 4 112 215 254 255
		mu 1 4 119 225 264 265
		f 4 -41 -288 514 515
		mu 0 4 452 453 443 446
		mu 1 4 477 478 467 471
		f 4 -339 -310 516 -263
		mu 0 4 181 276 277 232
		mu 1 4 191 286 287 242
		f 4 517 -352 -355 -509
		mu 0 4 242 290 245 243
		mu 1 4 252 300 255 253
		f 4 -354 518 519 520
		mu 0 4 245 291 292 246
		mu 1 4 255 301 302 256
		f 4 521 522 523 524
		mu 0 4 209 301 266 226
		mu 1 4 219 311 276 236
		f 4 525 526 527 -324
		mu 0 4 171 272 304 303
		mu 1 4 181 282 314 313
		f 4 528 -527 529 530
		mu 0 4 261 260 305 306
		mu 1 4 271 270 315 316
		f 4 -361 531 -331 532
		mu 0 4 261 307 308 262
		mu 1 4 271 317 318 272
		f 4 533 -88 534 535
		mu 0 4 267 309 310 268
		mu 1 4 277 319 320 278
		f 4 -531 536 -327 -359
		mu 0 4 261 306 316 314
		mu 1 4 271 316 326 324
		f 4 537 538 -60 539
		mu 0 4 286 285 325 326
		mu 1 4 296 295 338 339
		f 4 -371 540 541 542
		mu 0 4 287 327 328 288
		mu 1 4 297 340 341 298
		f 4 -357 -73 543 544
		mu 0 4 331 330 332 333
		mu 1 4 344 343 345 346
		f 4 545 -85 -372 -532
		mu 0 4 307 334 335 308
		mu 1 4 317 347 348 318
		f 4 -360 546 -86 -546
		mu 0 4 307 314 313 334
		mu 1 4 317 324 323 347
		f 4 -369 547 -56 548
		mu 0 4 279 317 345 322
		mu 1 4 360 328 361 362
		f 4 549 550 -541 -370
		mu 0 4 286 354 328 327
		mu 1 4 333 372 341 340
		f 4 -373 -83 -58 551
		mu 0 4 308 355 357 358
		mu 1 4 318 373 376 377
		f 4 -552 -57 -548 -362
		mu 0 4 308 358 345 317
		mu 1 4 318 377 361 328
		f 4 -395 -389 552 553
		mu 0 4 369 363 366 370
		mu 1 4 388 382 385 389
		f 4 554 555 -63 -497
		mu 0 4 378 379 373 372
		mu 1 4 397 398 392 391
		f 4 556 557 558 559
		mu 0 4 377 376 382 383
		mu 1 4 396 395 403 404
		f 4 560 -406 -556 561
		mu 0 4 393 394 373 379
		mu 1 4 414 415 392 398
		f 4 -544 -72 -412 562
		mu 0 4 398 387 386 399
		mu 1 4 419 408 407 420
		f 4 563 -415 -561 564
		mu 0 4 400 401 394 393
		mu 1 4 421 422 415 414
		f 4 -440 -422 -420 -417
		mu 0 4 402 412 406 403
		mu 1 4 424 435 428 425
		f 4 -515 -455 565 566
		mu 0 4 446 443 435 442
		mu 1 4 471 467 459 466
		f 4 -566 -445 -441 567
		mu 0 4 442 435 411 433
		mu 1 4 466 459 433 457
		f 4 -252 568 569 570
		mu 0 4 223 217 265 224
		mu 1 4 233 227 275 234
		f 4 -236 571 -500 -287
		mu 0 4 214 112 217 164
		mu 1 4 224 119 227 174
		f 5 -470 -112 572 -18 573
		mu 0 5 37 36 38 39 40
		mu 1 5 39 38 40 41 42
		f 5 -90 574 -22 575 -115
		mu 0 5 1 17 45 46 47
		mu 1 5 1 17 47 48 49
		f 5 -142 576 -113 -19 -573
		mu 0 5 38 66 67 68 39
		mu 1 5 40 71 72 73 41
		f 5 -162 -165 577 -35 -129
		mu 0 5 56 89 90 91 88
		mu 1 5 58 95 96 97 94
		f 5 -111 578 579 -560 580
		mu 0 5 38 65 100 101 102
		mu 1 5 40 70 107 108 109
		f 5 -200 581 -477 582 -156
		mu 0 5 79 117 118 119 116
		mu 1 5 85 124 125 126 123
		f 5 -475 -235 -46 583 -482
		mu 0 5 75 111 155 156 157
		mu 1 5 80 118 164 165 166
		f 5 -250 -499 584 -478 -582
		mu 0 5 117 164 165 166 118
		mu 1 5 124 174 175 176 125
		f 5 -486 -506 -258 -204 585
		mu 0 5 175 176 177 178 179
		mu 1 5 185 186 187 188 189
		f 5 -525 586 587 -513 588
		mu 0 5 209 226 252 253 210
		mu 1 5 219 236 262 263 220
		f 5 -311 -342 -345 589 590
		mu 0 5 278 276 279 280 281
		mu 1 5 288 286 289 290 291
		f 5 -315 -543 591 -39 -507
		mu 0 5 186 287 288 289 239
		mu 1 5 196 297 298 299 249
		f 5 -514 -588 592 -569 -572
		mu 0 5 112 255 302 265 217
		mu 1 5 119 265 312 275 227
		f 5 -535 -87 -547 -326 593
		mu 0 5 311 312 313 314 315
		mu 1 5 321 322 323 324 325
		f 5 -549 -61 -539 594 -349
		mu 0 5 279 322 323 324 321
		mu 1 5 289 335 336 337 334
		f 5 595 -553 -397 -557 -580
		mu 0 5 375 370 366 376 377
		mu 1 5 394 389 385 395 396
		f 5 -558 -69 596 -44 597
		mu 0 5 382 376 385 396 397
		mu 1 5 403 395 406 417 418
		f 5 -520 598 -426 -564 599
		mu 0 5 409 410 411 401 400
		mu 1 5 431 432 433 422 421
		f 5 -505 600 601 602 -301
		mu 0 5 177 229 264 263 262
		mu 1 5 187 239 274 273 272
		f 5 -570 -593 -587 603 604
		mu 0 5 170 225 252 226 171
		mu 1 5 180 235 262 236 181
		f 8 -114 -577 -141 605 -476 -143 -576 -21
		mu 0 8 70 71 72 73 74 75 47 46
		mu 1 8 75 76 77 78 79 80 49 48
		f 8 -207 -53 -264 -517 -312 -591 606 -308
		mu 0 8 126 185 233 234 235 236 237 238
		mu 1 8 133 195 243 244 245 246 247 248
		f 8 -540 -378 607 -463 -465 -503 608 -550
		mu 0 8 286 326 349 350 351 352 353 354
		mu 1 8 333 366 367 368 369 370 371 372
		f 3 -419 -421 -405
		mu 0 3 381 406 386
		mu 1 3 402 428 407
		h 3 -384 -382 -381
		mu 0 3 405 407 404
		mu 1 3 427 429 426
		f 7 -473 -157 -583 -480 609 -472 -26
		mu 0 7 81 82 83 84 85 55 54
		mu 1 7 87 88 89 90 91 57 56
		f 7 -610 -487 -586 -205 -55 -206 -201
		mu 0 7 55 85 122 123 124 125 126
		mu 1 7 57 91 129 130 131 132 133
		f 7 610 611 -493 -495 612 613 -163
		mu 0 7 89 129 130 131 132 133 128
		mu 1 7 95 136 137 138 139 140 135
		f 7 -233 -498 -67 -396 -554 -596 -579
		mu 0 7 65 141 142 143 144 145 100
		mu 1 7 106 149 150 151 152 153 154
		f 7 -479 -585 -501 -253 -571 -605 614
		mu 0 7 85 121 167 168 169 170 171
		mu 1 7 91 128 177 178 179 180 181
		f 7 -615 -292 615 -602 -601 -504 -484
		mu 0 7 85 171 219 220 221 222 173
		mu 1 7 91 181 229 230 231 232 183
		f 7 -321 -521 -600 -565 -562 -555 -496
		mu 0 7 141 245 246 247 248 249 205
		mu 1 7 149 255 256 257 258 259 215
		f 7 -291 -325 -528 -529 -533 -603 -616
		mu 0 7 257 258 259 260 261 262 263
		mu 1 7 267 268 269 270 271 272 273
		f 7 -607 -590 -344 -350 -595 -538 -346
		mu 0 7 238 237 282 283 284 285 286
		mu 1 7 248 247 292 293 294 295 296
		f 7 616 -460 -461 -608 -377 -374 -81
		mu 0 7 432 431 437 438 439 440 441
		mu 1 7 456 455 461 462 463 464 465
		f 7 -542 -551 -609 -502 -296 -40 -592
		mu 0 7 455 456 457 451 444 453 458
		mu 1 7 481 482 483 476 469 478 484
		f 7 -614 -613 -494 -168 -36 -578 -164
		mu 0 7 93 94 134 95 62 61 92
		mu 1 7 99 100 141 101 64 63 98
		f 9 -581 -559 -598 -49 -481 -185 -474 -606 -140
		mu 0 9 38 102 104 105 106 107 108 109 103
		mu 1 9 40 109 111 112 113 114 115 116 110
		f 9 -489 -42 -516 -567 -568 -442 -433 617 -611
		mu 0 9 89 188 193 194 195 196 197 198 129
		mu 1 9 95 198 203 204 205 206 207 208 136
		f 9 -597 -68 -511 -589 -512 -239 -483 -584 -45
		mu 0 9 147 207 208 209 210 211 212 213 148
		mu 1 9 156 217 218 219 220 221 222 223 157
		f 9 -604 -524 618 -536 -594 -328 -537 -530 -526
		mu 0 9 171 226 266 267 268 269 270 271 272
		mu 1 9 181 236 276 277 278 279 280 281 282
		f 9 -618 -432 -599 -519 -353 -518 -508 -490 -612
		mu 0 9 414 415 411 410 416 417 418 419 420
		mu 1 9 437 438 433 432 439 440 441 442 443
		f 10 -510 -356 -75 -358 -545 -563 -414 -425 619 -522
		mu 0 10 209 251 294 295 296 297 298 299 300 301
		mu 1 10 219 261 304 305 306 307 308 309 310 311
		f 10 -423 -451 -617 -80 -79 -534 -619 -523 -620 -424
		mu 0 10 386 412 431 432 426 427 423 424 425 413
		mu 1 10 407 435 455 456 449 450 446 447 448 436
		f 12 -5 -11 -96 -17 -467 -469 -471 -574 -23 -575 -89 -6
		mu 0 12 7 24 8 9 10 11 12 13 14 15 16 6
		mu 1 12 7 26 8 9 10 11 12 13 14 15 16 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr -s 2 ".pd";
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd[1]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "coll" -p "Crystal_03";
	rename -uid "545C2530-4712-ADF5-715F-1A978C5F2580";
	setAttr ".v" no;
createNode mesh -n "collShape" -p "|Crystal_03|coll";
	rename -uid "23A9DCF8-4539-075A-B6EC-E4B217172BF4";
	setAttr -k off ".v";
	setAttr -s 5 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 18 "f[0]" "f[4]" "f[14:16]" "f[19:20]" "f[28:31]" "f[43:49]" "f[63:72]" "f[92:103]" "f[123:127]" "f[235:236]" "f[238:239]" "f[245]" "f[251]" "f[280:281]" "f[283]" "f[287:289]" "f[294]" "f[302]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 47 "f[1]" "f[3]" "f[5]" "f[8]" "f[10]" "f[13]" "f[18]" "f[21]" "f[27]" "f[32:35]" "f[50:53]" "f[73]" "f[75:78]" "f[105]" "f[109:110]" "f[129]" "f[133:134]" "f[139]" "f[141:142]" "f[148:149]" "f[151:152]" "f[160]" "f[162:163]" "f[166]" "f[175]" "f[177]" "f[180]" "f[234]" "f[237]" "f[240:241]" "f[248]" "f[250]" "f[256:257]" "f[260]" "f[262:263]" "f[268]" "f[285]" "f[291]" "f[293]" "f[301]" "f[303:304]" "f[306:308]" "f[310:311]" "f[314]" "f[319:321]" "f[323]" "f[325]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 22 "f[2]" "f[6]" "f[22:26]" "f[36:42]" "f[55:62]" "f[79:91]" "f[111:121]" "f[143:147]" "f[164:165]" "f[167]" "f[181:183]" "f[231:233]" "f[242:244]" "f[249]" "f[254:255]" "f[264]" "f[282]" "f[284]" "f[286]" "f[309]" "f[312]" "f[317:318]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 22 "f[9]" "f[74]" "f[106:108]" "f[135:138]" "f[140]" "f[150]" "f[153:159]" "f[161]" "f[168:174]" "f[176]" "f[178:179]" "f[247]" "f[253]" "f[258:259]" "f[261]" "f[265:267]" "f[269:270]" "f[290]" "f[292]" "f[295:296]" "f[300]" "f[313]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 17 "f[7]" "f[11:12]" "f[17]" "f[54]" "f[104]" "f[122]" "f[128]" "f[130:132]" "f[184:230]" "f[246]" "f[252]" "f[271:279]" "f[297:299]" "f[305]" "f[315:316]" "f[322]" "f[324]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 31 "f[0]" "f[11]" "f[14:15]" "f[23:25]" "f[38:41]" "f[58:59]" "f[62]" "f[82:84]" "f[116]" "f[145]" "f[148]" "f[161]" "f[166]" "f[177]" "f[180]" "f[186:187]" "f[189:190]" "f[192:195]" "f[199]" "f[207]" "f[211]" "f[256]" "f[266]" "f[268]" "f[272]" "f[274]" "f[276]" "f[295:296]" "f[299]" "f[304]" "f[323]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 40 "e[37:38]" "e[41:43]" "e[61]" "e[66:67]" "e[72:80]" "e[352]" "e[373]" "e[376]" "e[380:381]" "e[383]" "e[395]" "e[413]" "e[424]" "e[432]" "e[441]" "e[462]" "e[464]" "e[489]" "e[496]" "e[502]" "e[507]" "e[515]" "e[517:519]" "e[522]" "e[533]" "e[541]" "e[543]" "e[550]" "e[553:554]" "e[558:559]" "e[561:562]" "e[564]" "e[566:567]" "e[579]" "e[591]" "e[595:597]" "e[599]" "e[607:608]" "e[611]" "e[617:619]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[7]" "f[50]" "f[65]" "f[67]" "f[76]" "f[78]" "f[95:96]" "f[108]" "f[110]" "f[144]" "f[146:147]" "f[165]" "f[252:253]";
	setAttr ".gtag[3].gtagnm" -type "string" "front";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 57 "f[3]" "f[6]" "f[8]" "f[10]" "f[12:13]" "f[16]" "f[18]" "f[26:27]" "f[35:36]" "f[42:43]" "f[49]" "f[53]" "f[55:56]" "f[64]" "f[75]" "f[79]" "f[81]" "f[92:94]" "f[112]" "f[115]" "f[118]" "f[129]" "f[149]" "f[154]" "f[169]" "f[176]" "f[188]" "f[191]" "f[196:197]" "f[200:202]" "f[205:206]" "f[208]" "f[210]" "f[212]" "f[218]" "f[231:233]" "f[239:240]" "f[251]" "f[257:258]" "f[260]" "f[262]" "f[265]" "f[267]" "f[269:270]" "f[275]" "f[281:282]" "f[284:285]" "f[288]" "f[294]" "f[298]" "f[300]" "f[305]" "f[311]" "f[313]" "f[317]" "f[321]" "f[324:325]";
	setAttr ".gtag[4].gtagnm" -type "string" "left";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 37 "f[2]" "f[22]" "f[34]" "f[45]" "f[52]" "f[66]" "f[71:73]" "f[86]" "f[100]" "f[103:106]" "f[113:114]" "f[117]" "f[132:133]" "f[135:137]" "f[153]" "f[155]" "f[168]" "f[171]" "f[182]" "f[184:185]" "f[204]" "f[213]" "f[219]" "f[223:224]" "f[229]" "f[237:238]" "f[245]" "f[259]" "f[264]" "f[277]" "f[280]" "f[287]" "f[289]" "f[291]" "f[301]" "f[306:307]" "f[310]";
	setAttr ".gtag[5].gtagnm" -type "string" "right";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 33 "f[19]" "f[28:29]" "f[37]" "f[44]" "f[57]" "f[60:61]" "f[63]" "f[85]" "f[87:88]" "f[90]" "f[119:120]" "f[150]" "f[198]" "f[203]" "f[209]" "f[214]" "f[216]" "f[236]" "f[241]" "f[248]" "f[250]" "f[261]" "f[263]" "f[271]" "f[273]" "f[279]" "f[283]" "f[293]" "f[297]" "f[302]" "f[308]" "f[319:320]" "f[322]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 52 "f[1]" "f[4:5]" "f[9]" "f[17]" "f[20:21]" "f[30:33]" "f[46:48]" "f[51]" "f[54]" "f[68:70]" "f[74]" "f[77]" "f[80]" "f[89]" "f[91]" "f[97:99]" "f[101:102]" "f[107]" "f[109]" "f[111]" "f[121:128]" "f[130:131]" "f[134]" "f[138:143]" "f[151:152]" "f[156:160]" "f[162:164]" "f[167]" "f[170]" "f[172:175]" "f[178:179]" "f[181]" "f[183]" "f[215]" "f[217]" "f[220:222]" "f[225:228]" "f[230]" "f[234:235]" "f[242:244]" "f[246:247]" "f[249]" "f[254:255]" "f[278]" "f[286]" "f[290]" "f[292]" "f[303]" "f[309]" "f[312]" "f[314:316]" "f[318]";
	setAttr ".pv" -type "double2" 0.66869759559631348 0.65359559655189514 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 462 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.59786654 0.45158604 0.55764616
		 0.49920309 0.67715955 0.64510119 0.67601478 0.63820028 0.65598023 0.6100983 0.63927174
		 0.55759138 0.40652943 0.3957532 0.3987191 0.48093385 0.32572562 0.47065443 0.32629934
		 0.46691471 0.37805772 0.38328758 0.37812179 0.38305992 0.37813339 0.38301688 0.37819013
		 0.38280079 0.40511468 0.27835137 0.41245496 0.30349338 0.41190451 0.30555642 0.55943376
		 0.33814055 0.56696165 0.58640254 0.67746383 0.64641297 0.39433423 0.5471369 0.39608335
		 0.55364513 0.41717315 0.59113359 0.35000181 0.70863342 0.39372692 0.5220924 0.32525143
		 0.47004423 0.56997216 0.24792212 0.56269753 0.24374166 0.48983067 0.21953657 0.49409199
		 0.16879612 0.60346019 0.18272495 0.63907331 0.37529129 0.58814037 0.10527492 0.63912708
		 0.37558797 0.592839 0.13681012 0.63913631 0.37564367 0.6373105 0.40488827 0.6391803
		 0.37592262 0.68546009 0.68088949 0.66103989 0.5199399 0.65953398 0.51039791 0.40806466
		 0.27155131 0.44650936 0.16783427 0.44748825 0.16785406 0.44202036 0.1890244 0.55775571
		 0.33572263 0.48905224 0.19390827 0.3321445 0.34611028 0.53731465 0.61067426 0.52600932
		 1 0.64511311 0.76163644 0.64383233 0.75571364 0.65980291 0.70001686 0.32299834 0.53337443
		 0.44619548 0.63159585 0.47237319 0.86523664 0.31453991 0.45625955 0.31727424 0.45977834
		 0.32353058 0.49053547 0.44110808 0.24980778 0.41189933 0.2778587 0.40667179 0.28368473
		 0.37241161 0.16633642 0.57170165 0.12476993 0.56181788 0.12332487 0.67715955 0.64510119
		 0.67579591 0.66989291 0.67502588 0.66483098 0.67509633 0.66117197 0.44805297 0.16546926
		 0.47634593 0.16768056 0.47619349 0.16432495 0.47306058 0.15972091 0.45609534 0.13459013
		 0.45633048 0.12375329 0.37241161 0.12409413 0.36963379 0.53276491 0.40043133 0.5913161
		 0.46438068 0.92195606 0.64921808 0.78852904 0.64961469 0.78735101 0.4581812 0.63778901
		 0.51400417 0.66494185 0.51500762 0.66458946 0.55213058 0.58841717 0.62192845 0.60859835
		 0.35652184 0.74252057 0.36963379 0.53276491 0.31868082 0.43551454 0.3321445 0.34611028
		 0.33216298 0.34602773 0.31935215 0.43069813 0.34303677 0.38676703 0.34297371 0.38686651
		 0.35385329 0.47461557 0.32572562 0.47065443 0.49855191 0.026112676 0.52858913 0.026112676
		 0.53065848 0.076303065 0.55764616 0.49920309 0.57951736 0.8743639 0.59753031 0.84590364
		 0.62354463 0.80480158 0.67987376 0.69748116 0.62374765 0.80447263 0.62370318 0.80468291
		 0.64048934 0.7747767 0.65118593 0.75010985 0.65853441 0.73662871 0.67464793 0.70706797
		 0.45705569 0.09033829 0.40597707 0.074255109 0.37241161 0.16633642 0.31453991 0.45625955
		 0.46853477 0.89707565 0.53962719 0.99140573 0.64896858 0.78688395 0.47237319 0.86523664
		 0.56943583 0.69867623 0.57044804 0.69979531 0.55260825 0.58743763 0.55920118 0.56078541
		 0.63929075 0.72307438 0.63121265 0.72953284 0.64550012 0.77610606 0.64912713 0.787929
		 0.64921808 0.78852904 0.40193725 0.82103562 0.33217439 0.34594542 0.46501711 0.21722257
		 0.46613008 0.16154933 0.45739454 0.18035635 0.39220822 0.28580123 0.38088235 0.29610491
		 0.35603637 0.49358231 0.31453991 0.45625955 0.46852064 0.013057828 0.52858913 0.007833004
		 0.40597707 0.074255109 0.3321445 0.34611028 0.56696165 0.58640254 0.46438068 0.92195606
		 0.48588902 0.9491933 0.48597345 0.92486221 0.48602962 0.90867686 0.54449338 0.88721883
		 0.48126036 0.059906054 0.49811301 0.040153801 0.49671385 0.084916025 0.49394292 0.077409223
		 0.49036855 0.067725666 0.47724116 0.084292762 0.45605361 0.053046294 0.44118574 0.032453451
		 0.4573864 0.075099528 0.43300202 0.047811888 0.42665786 0.059717942 0.42571178 0.062515587
		 0.41189981 0.10335903 0.35652184 0.74252057 0.32299834 0.53337443 0.40193725 0.82103562
		 0.51301813 0.94148719 0.48005569 0.87964916 0.43764895 0.55531621 0.5244956 0.58042681
		 0.54407448 0.6687184 0.57671177 0.49478143 0.58775926 0.45332474 0.58862185 0.41023445
		 0.58880508 0.40944925 0.63918281 0.37588352 0.48005569 0.87964916 0.63697541 0.6257199
		 0.63878655 0.71120411 0.36221179 0.70381731 0.36197603 0.68768752 0.43764895 0.55531621
		 0.47237319 0.86523664 0.35140541 0.71042961 0.3881194 0.77599049 0.40193725 0.82103562
		 0.4015207 0.82031548 0.39783522 0.7934038 0.39743945 0.79263335 0.64923114 0.78849018
		 0.40043133 0.5913161 0.54364866 0.50170177 0.52275348 0.47551447 0.38565779 0.68110043
		 0.36721689 0.73066413 0.35000181 0.70863342 0.38104519 0.65433061 0.48857653 0.43268159
		 0.47288907 0.41302097 0.46184519 0.37589452 0.4622145 0.3574203 0.46313336 0.31145462
		 0.46442941 0.24662039 0.32299834 0.53337443 0.37241161 0.12409413 0.51057041 0 0.46852064
		 0 0.36963379 0.53276491 0.53731465 0.61067426 0.46524474 0.91678095 0.47296682 0.92890495
		 0.50333583 0.039298087 0.50688583 0.037352648 0.57170165 0.12476993 0.53489578 0.14564908
		 0.53190869 0.13468897 0.52712387 0.11713256 0.49866331 0.086981297 0.32572562 0.47065443
		 0.40643972 0.1285091 0.35000181 0.70863342 0.46706945 0.4905594 0.51220214 0.52496111
		 0.6451692 0.41533887 0.64163232 0.45937574 0.63703394 0.55713719 0.6357137 0.57746875
		 0.4985922 0.46955639 0.49839354 0.4685306 0.59133101 0.34195361 0.60346019 0.18272495
		 0.51301813 0.94148719 0.36899969 0.57170486 0.37268451 0.5061754 0.62192845 0.60859835
		 0.48005569 0.87964916 0.40193206 0.82024121 0.63473403 0.81205308 0.63469398 0.81202161
		 0.6306752 0.80886084 0.63996345 0.77978504 0.65230584 0.74724138 0.52600932 1 0.54674923
		 0.50558764 0.46853477 0.89707565 0.46438068 0.92195606 0.38908648 0.77701485 0.35652184
		 0.74252057 0.40043133 0.5913161 0.40193725 0.82103562 0.41931492 0.84087723 0.44136679
		 0.88111186 0.44502798 0.88744724 0.44648245 0.88955772;
	setAttr ".uvst[0].uvsp[250:461]" 0.5273965 0.026112674 0.52858913 0.026112676
		 0.54744089 0.17559049 0.54479319 0.16527626 0.40303111 0.14420979 0.41054082 0.16710718
		 0.63900161 0.37868965 0.45098957 0.28730679 0.45911098 0.23562042 0.46718907 0.18180403
		 0.46915448 0.16829202 0.49409199 0.16879612 0.46706945 0.4905594 0.42505801 0.34666139
		 0.38315135 0.4787415 0.47620541 0.3817755 0.5906384 0.11790393 0.59330344 0.13264781
		 0.61312616 0.23774049 0.61238718 0.23360978 0.61525726 0.24877524 0.61963081 0.27188513
		 0.62706804 0.31165528 0.53962719 0.99140573 0.64921808 0.78852904 0.46853477 0.89707565
		 0.46438068 0.92195606 0.44326508 0.8127811 0.49904233 0.7740202 0.67715955 0.64510119
		 0.65287358 0.63912249 0.54782069 0.731893 0.67838806 0.67575473 0.67960906 0.67240953
		 0.68216407 0.66679233 0.68218148 0.66675359 0.67715955 0.64510119 0.53731465 0.61067426
		 0.55680537 0.50381285 0.54848772 0.50776637 0.41318813 0.82809597 0.41419709 0.83023435
		 0.41671327 0.83556712 0.52858913 0.025992209 0.52886528 0.026479743 0.54235232 0.050292145
		 0.54515177 0.056213085 0.54588002 0.055985302 0.5527758 0.066849895 0.55536199 0.070942394
		 0.56061971 0.079081476 0.58434951 0.1097706 0.4142082 0.17970547 0.63233823 0.3405745
		 0.63062501 0.33101207 0.47824773 0.14067423 0.49674571 0.08389847 0.60346019 0.18272495
		 0.63918281 0.37588352 0.60068154 0.17726752 0.61639082 0.25830686 0.53359681 0.034141511
		 0.55348229 0.061948288 0.58630019 0.10745721 0.57170165 0.12476993 0.52964461 0.02852804
		 0.51660943 0.050466925 0.68546009 0.68088949 0.51301813 0.94148719 0.52600932 1 0.65778613
		 0.63478166 0.66298372 0.62779582 0.64725143 0.46481296 0.64918852 0.48624793 0.66302091
		 0.62774742 0.66527438 0.56518173 0.6373105 0.40488827 0.56696165 0.58640254 0.55807418
		 0.50320977 0.61209452 0.85560364 0.60910517 0.86278689 0.61556673 0.85082513 0.61054403
		 0.85579669 0.60922807 0.85155869 0.58943069 0.11179833 0.59111392 0.12103985 0.61753023
		 0.2844477 0.62084997 0.30524507 0.62142336 0.30911914 0.63804442 0.39351898 0.62942731
		 0.34125608 0.62295377 0.30194151 0.62185925 0.29527855 0.62138301 0.29205889 0.53962719
		 0.99140573 0.63943726 0.41707924 0.66280067 0.54977989 0.65734726 0.5153473 0.65583652
		 0.5058226 0.591281 0.45938271 0.59000975 0.46572 0.58925915 0.46750432 0.5872702
		 0.47087646 0.55988646 0.50110596 0.55952853 0.50150108 0.60035938 0.17560558 0.61886394
		 0.33608833 0.61214679 0.24816962 0.63737625 0.40386972 0.53497487 0.982678 0.53962719
		 0.99140573 0.53783077 0.99253947 0.57074237 0.93380475 0.53065848 0.076303065 0.51057041
		 0 0.46852064 0 0.40597707 0.074255109 0.52858913 0.007833004 0.46852064 0.013057828
		 0.54066169 0.091398671 0.47884119 0.097197905 0.54969174 0.070782512 0.55398357 0.088059299
		 0.58814037 0.10527492 0.54426903 0.083163008 0.4418062 0.10067206 0.37241161 0.12409413
		 0.41105652 0.12393717 0.55654824 0.09838362 0.56327236 0.12232754 0.52858913 0.026112676
		 0.49855191 0.026112676 0.36629716 0.15780669 0.36664811 0.15753642 0.37458581 0.13469791
		 0.37241161 0.13595793 0.37241161 0.16633642 0.37241161 0.15988962 0.37655729 0.15464906
		 0.37315255 0.15640709 0.387209 0.12813832 0.38749677 0.12755954 0.38714761 0.12741809
		 0.5637936 0.12418373 0.592839 0.13681012 0.57170165 0.12476993 0.37186393 0.13613498
		 0.36632335 0.1577985 0.37161893 0.16388375 0.36967829 0.17853951 0.5638535 0.13091733
		 0.6373105 0.40488827 0.63918281 0.37588352 0.60346019 0.18272495 0.48654556 0.083228372
		 0.49126789 0.069940299 0.49409199 0.16879612 0.43734625 0.11027147 0.36887911 0.18403327
		 0.56167603 0.1756548 0.56117332 0.18140301 0.55764616 0.49920309 0.46706945 0.4905594
		 0.36797899 0.19523007 0.48431963 0.40719178 0.47330797 0.44194597 0.56048304 0.1873036
		 0.56020623 0.18966974 0.55359429 0.24618997 0.54759467 0.29747593 0.50517344 0.3413747
		 0.67715955 0.64510119 0.68546009 0.68088949 0.39209998 0.27973315 0.39345422 0.26033747
		 0.38811713 0.2466974 0.37410161 0.47746706 0.38713399 0.33801138 0.44902265 0.51859331
		 0.56696165 0.58640254 0.62192845 0.60859835 0.43764895 0.55531621 0.3695074 0.50377214
		 0.43180507 0.57293409 0.52600932 1 0.53731465 0.61067426 0.64921808 0.78852904 0.35000181
		 0.70863342 0.34956241 0.70432603 0.35040957 0.69643563 0.37007141 0.54451001 0.37049627
		 0.50934649 0.42488509 0.59477437 0.46438068 0.92195606 0.47237319 0.86523664 0.3496927
		 0.70662707 0.40983641 0.6399436 0.53962719 0.99140573 0.46853477 0.89707565 0.48005569
		 0.87964916 0.35047475 0.71109134 0.36645821 0.75304568 0.40091389 0.66493046 0.40193725
		 0.82103562 0.51301813 0.94148719 0.36752111 0.75657582 0.36762524 0.75599909 0.36666709
		 0.75359404 0.36683851 0.76035625 0.36959079 0.75264859 0.3678273 0.75758725 0.38147527
		 0.71936703;
	setAttr ".uvst[1].uvsn" -type "string" "uvSet1";
	setAttr -s 488 ".uvst[1].uvsp";
	setAttr ".uvst[1].uvsp[0:249]" -type "float2" 0.11892759 0.42510182 0.16404533
		 0.46593967 0.072862983 0.59106642 0.072915204 0.58514798 0.087656707 0.5610469 0.095613085
		 0.51601529 0.5283187 0.37721786 0.53403717 0.45027143 0.44051117 0.44145545 0.44054994
		 0.43824816 0.4902969 0.36652696 0.49033585 0.3663317 0.49034256 0.3662948 0.49037445
		 0.36610949 0.50514436 0.27653044 0.51894343 0.29809299 0.51862824 0.2998623 0.15161173
		 0.32780743 0.16099793 0.54072469 0.94210356 0.59106642 0.93885553 0.5921914 0.94215578
		 0.58514798 0.53084439 0.5070492 0.53227466 0.51263088 0.55736631 0.54478216 0.43209505
		 0.64555353 0.53470981 0.48557031 0.43733659 0.44093212 0.71879715 0.25043327 0.71184683
		 0.24684802 0.63772058 0.22608902 0.64073598 0.18257242 0.76091707 0.19451818 0.76694995
		 0.35966909 0.9120158 0.12809467 0.76712692 0.35992351 0.94769228 0.15514022 0.76714975
		 0.35997128 0.94392133 0.38505235 0.76720691 0.36021051 0.85348558 0.62175947 0.80783111
		 0.48372418 0.80668777 0.47554064 0.50939751 0.27069852 0.5636723 0.18174751 0.56525767
		 0.18176448 0.558029 0.19992083 0.15282834 0.32573378 0.19972599 0.20410937 0.33923593
		 0.33464259 0.18362859 0.5615409 0.98473847 0.89543867 0.88669753 0.69101059 0.90099651
		 0.68593109 0.92489469 0.63816381 0.36101109 0.49524608 0.59911722 0.57948387 0.61003518
		 0.77986139 0.36562297 0.42910996 0.38392919 0.4321278 0.40481997 0.45850605 0.56120038
		 0.25205055 0.51608437 0.27610788 0.50807148 0.28110448 0.44366527 0.18046293 0.73756504
		 0.14481416 0.042775333 0.12809467 0.13502851 0.14357483 0.078451753 0.15514022 0.074680865
		 0.38505235 0.94210356 0.59106642 0.83573484 0.61232841 0.83429527 0.60798723 0.8344022
		 0.60484916 0.56608212 0.17971919 0.21897742 0.18161567 0.21983579 0.17873777 0.22419816
		 0.17478922 0.24786234 0.15323627 0.24984194 0.14394227 0.34118012 0.1442346 0.30793545
		 0.49472329 0.28680244 0.54493868 0.25910211 0.82850581 0.11549795 0.89543867 0.78380251
		 0.71407455 0.78456509 0.71306419 0.60819328 0.5847953 0.65053314 0.60808241 0.65132821
		 0.60778022 0.68329692 0.54245245 0.73679328 0.55976051 0.37594944 0.67461628 0.30793545
		 0.49472329 0.37120718 0.41131839 0.33923593 0.33464259 0.33928388 0.33457181 0.36879432
		 0.40718767 0.44695792 0.36951104 0.44689682 0.36959636 0.47655094 0.44485265 0.44051117
		 0.44145545 0.64258683 0.060202688 0.73383474 0.060202688 0.16766384 0.10324752 0.16404533
		 0.46593967 0.072862983 0.59106642 0.9696455 0.78768921 0.94297254 0.76328075 0.90445173
		 0.72803038 0.84274465 0.63598901 0.90406525 0.72774833 0.90375799 0.72792858 0.8794865
		 0.70228004 0.8799206 0.68112504 0.87039787 0.66956323 0.84951663 0.64421099 0.26330632
		 0.11528456 0.3258504 0.10149115 0.44366527 0.18046293 0.36562297 0.42910996 0.43171167
		 0.80716747 0.79504251 0.80890715 0.7833727 0.71266365 0.61003518 0.77986139 0.69230223
		 0.63701403 0.69346094 0.63797385 0.68371654 0.54161245 0.6901387 0.5187546 0.76670164
		 0.65793866 0.75907522 0.66347766 0.77867115 0.70342022 0.78364575 0.71355993 0.78380251
		 0.71407455 0.33861339 0.74195319 0.33923739 0.33450121 0.22109613 0.22410446 0.23137002
		 0.17635734 0.23700503 0.19248682 0.28625429 0.28291965 0.29646516 0.29175639 0.48249906
		 0.46111912 0.36562297 0.42910996 0.45297062 0.047933519 0.89835119 0.044525564 0.02911073
		 0.044525564 0.3258504 0.10149115 0.33923593 0.33464259 0.16099793 0.54072469 0.25910211
		 0.82850581 0.20898439 0.85186529 0.22263554 0.83099824 0.23171642 0.81711715 0.14959912
		 0.79871404 0.10040494 0.78768921 0.61586648 0.08918494 0.64240468 0.072244793 0.64182401
		 0.11063426 0.63705593 0.10419619 0.63090533 0.095891275 0.61027789 0.11009973 0.27655229
		 0.094851956 0.30856359 0.087858871 0.26062602 0.10221536 0.38077879 0.078349009 0.39589748
		 0.088475764 0.40317693 0.090827927 0.44748855 0.12601073 0.37594944 0.67461628 0.36101109
		 0.49524608 0.33861339 0.74195319 0.57856035 0.93233442 0.67367995 0.84525621 0.61849725
		 0.79222196 0.59555268 0.51406407 0.66211611 0.53559971 0.67377937 0.61132127 0.70875943
		 0.46214753 0.72049421 0.42659301 0.72422153 0.38963738 0.72442311 0.388964 0.76696849
		 0.36017698 0.61849725 0.79222196 0.76443094 0.57444447 0.76601195 0.64775836 0.45262226
		 0.64142311 0.45442635 0.6275897 0.59555268 0.51406407 0.61003518 0.77986139 0.43413603
		 0.64709401 0.43979454 0.7033211 0.33861339 0.74195319 0.33895585 0.74133557 0.42918986
		 0.71825534 0.4298813 0.71759456 0.78382766 0.71404117 0.28680244 0.54493868 0.17475794
		 0.46808261 0.1911532 0.44562358 0.49386624 0.62194043 0.45712745 0.66444778 0.43209505
		 0.64555353 0.48998946 0.5989818 0.21636893 0.40888882 0.22794315 0.39202723 0.23450647
		 0.36018646 0.2329451 0.34434235 0.22906026 0.30492079 0.22358072 0.24931692 0.36101109
		 0.49524608 0.34118012 0.1442346 0.16217089 0.070026934 0.29514265 0.077275217 0.30793545
		 0.49472329 0.18362859 0.5615409 0.29500476 0.82406747 0.26282847 0.83446538 0.64897674
		 0.071510904 0.65340763 0.069842428 0.73756504 0.14481416 0.69164443 0.16272077 0.68758237
		 0.15332106 0.68107551 0.13826415 0.64434028 0.11240549 0.44051117 0.44145545 0.49732715
		 0.14802104 0.43209505 0.64555353 0.62161398 0.45852658 0.65518224 0.48803058 0.77816027
		 0.39401507 0.77195275 0.43178248 0.7641257 0.51562577 0.76183206 0.53306282 0.6482358
		 0.44051376 0.64807063 0.43963403 0.72991121 0.33107769 0.76091707 0.19451818 0.67367995
		 0.84525621 0.48737746 0.52811944 0.50556082 0.47191933 0.73679328 0.55976051 0.61849725
		 0.79222196 0.33843422 0.74127191 0.81121075 0.73424947 0.81155968 0.73422247 0.84662521
		 0.73151171 0.86870587 0.70657539 0.88077664 0.67866498 0.98473847 0.89543867 0.1725539
		 0.47141525;
	setAttr ".uvst[1].uvsp[250:487]" 0.43171167 0.80716747 0.25910211 0.82850581
		 0.44174856 0.70419955 0.37594944 0.67461628 0.28680244 0.54493868 0.33861339 0.74195319
		 0.3629061 0.7589699 0.30895552 0.79347652 0.30193809 0.79890996 0.30143926 0.80071992
		 0.73021168 0.060202688 0.73383474 0.060202688 0.6993593 0.18839946 0.6985867 0.17955366
		 0.49239999 0.16148643 0.50541848 0.18112394 0.78408813 0.36258361 0.58005595 0.28421086
		 0.58924484 0.23988302 0.5982008 0.1937284 0.60034776 0.1821401 0.64073598 0.18257242
		 0.62161398 0.45852658 0.54263604 0.33511519 0.51409036 0.44839117 0.62807894 0.36523014
		 0.88737762 0.13892569 0.89734381 0.15157051 0.84101373 0.24170123 0.83704233 0.23815861
		 0.82743955 0.251165 0.81280625 0.27098474 0.80139506 0.30509287 0.79504251 0.80890715
		 0.78380251 0.71407455 0.43171167 0.80716747 0.25910211 0.82850581 0.26824856 0.73487395
		 0.22323352 0.70163143 0.072862983 0.59106642 0.092098944 0.58593893 0.18168685 0.66550183
		 0.88941151 0.61735576 0.88981342 0.61448681 0.88849658 0.60966939 0.88848841 0.60963613
		 0.94210356 0.59106642 0.18362859 0.5615409 0.16485518 0.46989316 0.17131554 0.47328383
		 0.38196814 0.74800837 0.38253814 0.74984229 0.37232643 0.75441581 0.73491889 0.060099371
		 0.73466092 0.060517497 0.75718933 0.080939747 0.75890172 0.086017728 0.76470351 0.085822374
		 0.7801919 0.095140174 0.78594679 0.098650023 0.79819465 0.10563035 0.87178636 0.13195029
		 0.51231569 0.19192864 0.79365975 0.32989487 0.79497814 0.32169384 0.61402893 0.15845424
		 0.64183724 0.10976157 0.76091707 0.19451818 0.76696849 0.36017698 0.91710913 0.18983772
		 0.85584873 0.25933957 0.74466127 0.06708847 0.80000114 0.090936407 0.89248765 0.12996626
		 0.73756504 0.14481416 0.73392606 0.06227418 0.66603291 0.081089631 0.57856035 0.93233442
		 0.85348558 0.62175947 0.67367995 0.84525621 0.11549795 0.89543867 0.088357568 0.58221608
		 0.11549795 0.89543867 0.072862983 0.59106642 0.083678402 0.5762248 0.07422737 0.43644565
		 0.075595111 0.45482892 0.083636001 0.57618332 0.89139891 0.52252495 0.94392133 0.38505235
		 0.16099793 0.54072469 0.16390531 0.46937591 0.80630064 0.7536183 0.78791666 0.74878567
		 0.78725392 0.74319422 0.78235567 0.7481218 0.77414 0.75015712 0.89928913 0.13368934
		 0.9035657 0.14161515 0.94031799 0.28175879 0.94348466 0.29959527 0.94526839 0.30291775
		 0.87455928 0.37530172 0.87389386 0.33047941 0.87316513 0.29676202 0.87297153 0.29104763
		 0.87148035 0.28828639 0.98473847 0.89543867 0.79504251 0.80890715 0.57856035 0.93233442
		 0.94210356 0.59106642 0.9399268 0.39550766 0.94346792 0.43644565 0.89071167 0.50931585
		 0.88710564 0.47978544 0.88616788 0.47161672 0.074680865 0.38505235 0.12631503 0.4317885
		 0.12846212 0.43722355 0.12943771 0.43875384 0.13182072 0.44164586 0.16221191 0.46757162
		 0.16260915 0.4679105 0.91836542 0.1884124 0.076027989 0.30291775 0.089426801 0.32604739
		 0.92398483 0.25064558 0.93770725 0.38417879 0.77382356 0.81526238 0.79504251 0.80890715
		 0.82006669 0.82032216 0.79185128 0.78198218 0.16766384 0.10324752 0.16217089 0.070026934
		 0.29514265 0.077275217 0.3258504 0.10149115 0.02911073 0.044525564 0.45297062 0.047933519
		 0.15718678 0.11619397 0.23663075 0.12116758 0.094246864 0.098512948 0.11698643 0.11333004
		 0.042775333 0.12809467 0.13809279 0.10913081 0.27552205 0.12414712 0.34118012 0.1442346
		 0.29911864 0.14409998 0.12152641 0.12218447 0.12993115 0.14271949 0.89835119 0.044525564
		 0.9120158 0.12809467 0.73383474 0.060202688 0.64258683 0.060202688 0.34088489 0.17314754
		 0.34055835 0.17291574 0.37552941 0.15330446 0.3699632 0.15440936 0.44366527 0.18046293
		 0.4280245 0.17493396 0.43175247 0.17039321 0.42251411 0.17193896 0.4096798 0.14753786
		 0.40941703 0.14703825 0.40768903 0.14692083 0.13142523 0.14431141 0.078451753 0.15514022
		 0.73756504 0.14481416 0.36304039 0.15456122 0.34121683 0.17314053 0.42707276 0.17835943
		 0.43657658 0.19092867 0.13340122 0.15008636 0.074680865 0.38505235 0.94769228 0.15514022
		 0.76696849 0.36017698 0.76091707 0.19451818 0.62529987 0.10918687 0.6324445 0.097790614
		 0.64073598 0.18257242 0.54667282 0.13237987 0.43890157 0.19564031 0.13860993 0.18845463
		 0.139512 0.19338447 0.16404533 0.46593967 0.94392133 0.38505235 0.62161398 0.45852658
		 0.44336581 0.20524302 0.21813788 0.38702792 0.22956705 0.41683424 0.14048176 0.19844498
		 0.14087066 0.20047426 0.15015979 0.24894775 0.15858872 0.29293221 0.19649345 0.33058113
		 0.072862983 0.59106642 0.85348558 0.62175947 0.48905456 0.27771547 0.48721987 0.26108113
		 0.47803241 0.24938299 0.50249499 0.44729817 0.4934411 0.32769668 0.24717733 0.48256928
		 0.94210356 0.59106642 0.16099793 0.54072469 0.73679328 0.55976051 0.59555268 0.51406407
		 0.50115979 0.46985823 0.26230508 0.52917367 0.98473847 0.89543867 0.18362859 0.5615409
		 0.78380251 0.71407455 0.43209505 0.64555353 0.43224737 0.64185935 0.43505415 0.63509232
		 0.49422359 0.50479627 0.50160563 0.474639 0.26837081 0.54790461 0.25910211 0.82850581
		 0.11549795 0.89543867 0.61003518 0.77986139 0.4312813 0.6438328 0.28272852 0.5866431
		 0.79504251 0.80890715 0.43171167 0.80716747 0.61849725 0.79222196 0.42802259 0.64766157
		 0.39602652 0.68364292 0.3034054 0.60807258 0.33861339 0.74195319 0.67367995 0.84525621
		 0.57856035 0.93233442 0.38796708 0.68667048 0.39109412 0.68617588 0.39506006 0.68411326
		 0.36746812 0.68991268 0.36229372 0.68330246 0.36560914 0.68753791 0.33995062 0.65475917;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[207]" -type "float3"  -1.8626451e-09 -4.6566129e-10 -9.3132257e-10;
	setAttr -s 297 ".vt";
	setAttr ".vt[0:165]"  0.10904797 -0.12681276 0.11370387 0.15608516 -0.099724308 0.13912463
		 0.11956421 0.063573077 0.12971506 0.11793689 0.057340428 0.12853888 0.12274976 0.026874667 0.12927769
		 0.11631974 -0.023193333 0.12320487 0.015651785 -0.040247217 0.21130112 0.068016365 -0.14197679 0.14833875
		 0.068055227 -0.14225376 0.14826082 0.068061866 -0.14230609 0.14824671 0.068093292 -0.14256896 0.14817765
		 0.082588367 -0.2696282 0.11542483 0.097752213 -0.23904379 0.10649561 0.097440727 -0.23653418 0.10716523
		 0.015659533 -0.035697937 0.21199903 0.18064623 -0.022906169 0.15757251 0.11947464 0.06525749 0.12641114
		 0.0023535229 0.25379562 0.18246785 0.14763369 0.11086096 0.10075611 0.010166744 -0.036440235 0.21257584
		 -0.044720687 -0.011513296 0.21466921 -0.041660897 0.026169896 0.24446914 0.04065188 0.0054647923 0.25390297
		 0.026627347 0.019153893 0.37390631 0.029571153 -0.018680573 0.37989175 0.062736124 -0.24538933 0.2694003
		 0.10112981 -0.42925644 0.071416013 0.083700486 -0.27790022 0.1118363 0.093744516 -0.40406862 0.065069541
		 0.094784409 -0.40404454 0.06387876 0.095247619 -0.37829152 0.070530325 0.25918007 -0.29050344 0.083448209
		 0.21002185 -0.010142937 0.15911758 0.34218311 0.33908534 0.084221669 0.17406975 0.16761574 0.050871186
		 0.17437591 0.16008194 0.065451384 -0.11788633 0.040598869 0.21531668 0.12064126 0.44429827 0.033607088
		 -0.1139161 -0.053208828 0.22560608 -0.082241736 -0.048928346 0.22227988 -0.13572654 -0.011418849 0.31292468
		 -0.10468963 -0.078444436 0.22056879 -0.10870344 -0.084303468 0.21975215 0.016582057 0.051683217 0.28253844
		 0.0054483041 -0.020726055 0.40831602 0.092453793 -0.44853294 0.17039378 0.094244801 -0.41170752 0.061923686
		 0.093695208 -0.40694559 0.063191786 0.093123816 -0.44683844 0.052879374 0.15191352 -0.46898246 0.043603189
		 0.097149938 -0.43766415 0.055016909 0.29948553 -0.1213791 0.12489084 0.29881954 -0.063237451 0.1400107
		 0.363534 0.24752654 0.12530896 0.17305166 0.2006463 -0.017035639 0.17367053 0.20165451 -0.01766202
		 0.17323597 0.20021763 -0.018256284 0.19527605 0.10755655 -0.063415185 0.19732261 0.1321063 -0.14832193
		 -0.072345331 0.2950182 0.17453647 -0.19363242 0.039857388 0.15858617 -0.15792495 -0.18720174 0.20419067
		 -0.15784553 -0.18730216 0.20416817 -0.1710313 -0.2567865 0.16711475 -0.15789425 -0.18740229 0.2041543
		 -0.14914763 -0.24803163 0.14490266 -0.039788317 0.11124015 0.36379254 -0.017067276 0.1109502 0.36428547
		 -0.017976219 0.020515859 0.42518637 0.0011839867 -0.34688592 0.26748168 0.019577792 -0.61312318 0.026099034
		 0.033642802 -0.58143699 0.024877978 0.053955391 -0.53567612 0.023114543 0.054114033 -0.53531009 0.023100812
		 0.054086376 -0.53535974 0.022796189 0.067064419 -0.50569409 0.027685363 0.075047858 -0.48802802 0.043282535
		 0.080709398 -0.4751271 0.046288341 0.11068755 -0.50249135 0.037389584 0.15877266 -0.4214341 -0.033627555
		 0.3069503 -0.1959829 0.063868001 0.34466505 0.23742794 0.046590172 0.32406801 0.34319264 0.026184402
		 0.32392624 0.22076561 -0.029485537 0.19556151 0.106365 -0.063996173 0.20269142 0.073943466 -0.072016262
		 0.1205996 0.350986 -0.18151879 0.14850967 0.2713626 -0.16944253 0.1473296 0.27921912 -0.15961577
		 0.12621543 0.3358739 -0.17699599 0.12085548 0.350256 -0.18140808 -0.093122154 0.39052916 0.11929008
		 -0.13539892 -0.3439894 0.042555511 -0.12491349 -0.41171405 0.041201659 -0.1283434 -0.38883594 0.051828146
		 -0.14735627 -0.26056573 0.13112514 -0.18152049 -0.28589156 0.24322617 -0.063141465 0.10925984 0.3913098
		 -0.017958704 0.10777164 0.40350533 -0.11225661 0.024024248 0.42301026 -0.16889265 -0.21088879 0.31947988
		 0.0079711266 -0.42269406 0.23505242 -0.068352908 -0.6673671 0.030278236 -0.05160284 -0.67991418 0.0012230773
		 -0.051756244 -0.66462183 0.020234754 -0.051858284 -0.65444916 0.032881539 -0.0071848291 -0.62860543 0.028640011
		 0.057825644 -0.55938768 0.0022954501 0.08791253 -0.50493592 0.0039974595 0.079716787 -0.51406771 0.0073682014
		 0.069144562 -0.52584743 0.011716314 0.089300692 -0.50242358 0.0016260176 0.10956684 -0.46574557 -0.032995246
		 0.37396711 0.067193672 0.066706784 0.3278895 -0.12710619 0.073647887 0.37051034 0.14581701 0.090729117
		 0.32401204 0.29475456 0.0041585835 0.32394248 0.23475064 -0.023126306 0.18477364 -0.0063482127 -0.0933173
		 0.23703641 -0.051667973 -0.10281673 0.144972 -0.15098357 -0.16931123 0.17350765 -0.056778878 -0.10675615
		 0.16438167 -0.10919682 -0.10780554 0.16417462 -0.11015198 -0.10802841 0.11354068 0.46183062 0.02426162
		 0.15501904 0.15293413 -0.16662605 0.14992715 0.25692278 -0.1688292 0.14024624 0.39671677 -0.27522683
		 0.16582343 0.12463339 -0.23553252 0.097472914 0.38021821 -0.16411918 0.09768828 0.37960219 -0.16389939
		 0.12056283 0.35093874 -0.18153471 -0.20508891 0.11108303 0.12112197 -0.19010895 0.002070142 -0.053097151
		 -0.18488945 -0.029785803 -0.027678866 -0.15287635 -0.45360291 0.06148386 -0.13959394 -0.46633309 0.042371515
		 -0.1763522 -0.081890583 0.013896236 -0.17243354 -0.10580711 0.032979541 -0.16528302 -0.15097019 0.046414062
		 -0.16180362 -0.17344348 0.045964815 -0.15314649 -0.22935919 0.044847019 -0.14093567 -0.30822793 0.043270405
		 -0.17518443 -0.34956616 0.20882416 -0.13778654 -0.018764108 0.40355736 -0.03197059 0.10658357 0.42001572
		 -0.063778237 0.10698947 0.41932565 -0.14109352 -0.37340334 0.25047779 -0.014520118 -0.44334748 0.22526489
		 -0.067290545 -0.65495795 0.01875479 -0.061422493 -0.66429293 0.012196985 0.055942848 -0.56279516 -0.0083763627
		 0.11470029 -0.45645499 -0.087222621 0.12873419 -0.43105617 -0.042449512 0.12136737 -0.44438878 -0.038815852
		 0.05725047 -0.56042862 -0.0040578796 0.29648554 -0.16977194 -0.013291249 0.36244503 0.042206302 0.017348103
		 0.19299079 -0.098435231 -0.11666742 0.12863851 -0.10298745 -0.17659348 0.13931383 -0.049418092 -0.17229097
		 0.15380968 0.069505498 -0.16669717 0.15785366 0.094238199 -0.16509122 0.1176827 -0.38595462 -0.12585595
		 0.15035126 -0.19225816 -0.11110114 0.083074927 0.53705454 -0.01583606;
	setAttr ".vt[166:296]" 0.089017451 0.16021886 -0.3209548 0.13511986 0.40935594 -0.27820238
		 0.097310305 0.37956393 -0.16385074 -0.037200987 0.60823345 -0.031639457 0.059330292 0.37571895 -0.15896203
		 0.028355008 0.34034923 -0.17026088 0.0070825452 0.30076101 -0.18527497 -0.19088347 0.0067971926 -0.056868929
		 0.00038761646 0.48302937 0.038276382 -0.12517735 0.51329565 0.04332976 -0.1236317 -0.51570892 0.04057138
		 -0.14911354 -0.50461054 0.085514411 -0.11797669 -0.42464644 0.22928205 -0.11508518 -0.57507229 0.060061119
		 -0.10155829 -0.583588 0.037833448 -0.085345492 -0.62575084 0.035084352 -0.082631968 -0.63203347 0.034045469
		 -0.081528224 -0.63368279 0.032945376 0.048387915 -0.57646823 -0.033326942 0.048387915 -0.57646823 -0.034777775
		 0.13131244 -0.39463344 -0.057710275 0.12997468 -0.40718037 -0.054489441 0.12056616 -0.14757001 -0.16909088
		 0.10805769 -0.20870768 -0.17843612 0.1563186 0.065469503 -0.24345177 0.11219314 -0.19393583 -0.16098504
		 0.11009619 -0.20556819 -0.15890099 -0.019464284 -0.44687179 -0.11350054 0.051582217 -0.31903005 -0.13761416
		 0.054619998 -0.32405487 -0.1367152 0.06626185 -0.3056066 -0.14020656 0.084002286 -0.27749419 -0.14552689
		 0.10155136 -0.22911508 -0.15457399 -0.012588723 -0.46480724 -0.11025861 0.058481306 0.5977788 -0.048205167
		 0.059169013 0.3207514 -0.3344475 0.1029525 0.43452233 -0.23652551 0.063708425 0.46677202 -0.19468704
		 -0.045050375 0.2165408 -0.23249468 -0.039081682 0.21379977 -0.21700312 -0.13446277 0.17651081 -0.2155087
		 -0.041238595 0.20973046 -0.21848848 -0.04178746 0.20289735 -0.22159657 -0.04179265 0.20285024 -0.22161771
		 -0.21057695 0.13463163 -0.045392066 -0.19068369 0.0046382295 -0.069101863 -0.19131774 0.0094475849 -0.058983713
		 -0.10604029 -0.57012409 0.038587514 -0.10530386 -0.57240206 0.038504463 -0.10346737 -0.57808292 0.038297355
		 0.048012558 -0.5766148 -0.034777775 -0.0027627505 -0.47470117 -0.10260832 0.047987483 -0.57602173 -0.035113681
		 0.046762727 -0.54705471 -0.051520202 0.049556635 -0.53985208 -0.054925654 0.044774551 -0.54012918 -0.055811528
		 0.04006533 -0.52691275 -0.064199984 0.038354676 -0.52193439 -0.067346022 0.034313064 -0.51203346 -0.07374189
		 0.051685177 -0.20039396 -0.21573775 0.053637829 -0.037585571 -0.2714496 -0.03941166 -0.39259338 -0.12247579
		 0.035820607 -0.29401168 -0.14158559 0.009392323 -0.25295344 -0.14765839 0.062091 -0.24853207 -0.19231461
		 0.0043058917 0.23421979 -0.29566383 0.11312456 0.46358538 -0.29096931 0.069601029 0.52354276 -0.26345542
		 -0.032981809 0.060555547 -0.19804159 -0.034115322 0.079291388 -0.2010508 -0.10729232 -0.11570024 -0.16703373
		 -0.20639694 0.10510588 -0.081456631 -0.19058697 0.0039045827 -0.07064534 0.044611592 -0.55061454 -0.058756571
		 0.045739856 -0.54417455 -0.056773875 0.0057142111 -0.24093156 -0.14956911 0.0068713091 -0.24903689 -0.14823769
		 -0.0084095504 -0.12953062 -0.16792646 -0.00053203007 -0.19310668 -0.15744403 -0.086232461 -0.26221219 -0.14297169
		 -0.093441039 -0.23691289 -0.14701003 -0.096459858 -0.23220022 -0.14770752 0.095368713 0.50736195 -0.30127543
		 -0.027500616 0.018669533 -0.19140776 -0.026069462 0.0070830071 -0.18956999 -0.18895353 0.001826026 -0.072414555
		 -0.15497944 -0.049409568 -0.11104035 -0.15744747 -0.04170043 -0.10949392 -0.15843841 -0.039529901 -0.10858089
		 -0.16074137 -0.035427831 -0.10616133 -0.18858954 0.0013453779 -0.072849959 -0.1101502 -0.19939312 -0.14459404
		 -0.012011674 -0.65788132 -0.098179296 -0.0085598249 -0.66633749 -0.099948376 -0.010116249 -0.67121595 -0.093751721
		 0.015252586 -0.61451185 -0.08150094 -0.038213357 -0.66508257 0.031496063 0.0060732365 -0.73352742 -0.015483633
		 0.038051978 -0.71955168 -0.018157065 0.057385206 -0.62565953 0.022342332 -0.011397496 -0.73419607 -0.031592358
		 0.031771466 -0.71068299 -0.046920046 -0.095409542 -0.6631366 -0.016064242 0.062956691 -0.56848633 0.02207531
		 -0.020189598 -0.72178078 -0.07185822 0.0026536584 -0.7117976 -0.07376793 0.042639092 -0.53979599 -0.070974663
		 -0.11079394 -0.63311136 0.0080789328 -0.094532624 -0.65124249 -0.12254392 -0.25238559 -0.40168968 0.0088372529
		 -0.24823795 -0.44739538 -0.16007926 -0.14221697 -0.60927868 -0.12745583 -0.054055348 -0.58757573 -0.15132006
		 -0.22795942 -0.28326982 0.051898539 -0.16536908 -0.29069474 -0.22532301 -0.37925956 -0.19432303 0.0095167235
		 -0.40380424 -0.17586124 -0.097108975 -0.26993519 -0.20578519 0.056378037 -0.33059463 -0.23376442 -0.21645442
		 -0.16875081 -0.22060446 -0.21998914 -0.41034463 0.1716722 -0.096240021 -0.25711119 -0.1735343 0.055281073
		 -0.42230436 -0.073410392 -0.17778704 -0.15951928 -0.037908837 -0.10966671 -0.32973415 0.12765148 -0.033748437
		 -0.318865 0.055168211 -0.19554907 -0.4195621 0.1522367 -0.15969202 -0.32589293 0.094326794 -0.11673842
		 -0.33036774 0.066256523 -0.1914531 -0.24217936 0.054190993 -0.050970685 -0.37972134 0.11383182 -0.17387891;
	setAttr -s 620 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 0 3 4 0 4 5 0 5 0 0 3 16 0 16 18 0
		 18 17 1 17 14 0 14 4 0 6 19 0 19 20 0 20 21 0 21 22 1 22 7 0 7 6 0 11 27 0 27 28 0
		 28 29 0 29 30 0 30 12 0 12 11 1 2 33 0 33 34 1 34 35 0 35 18 0 16 2 0 14 36 1 36 38 0
		 38 39 0 39 20 0 19 14 0 39 41 0 41 42 0 42 40 1 40 21 0 133 173 0 173 212 0 212 295 0
		 295 137 1 137 134 0 134 133 0 74 107 0 107 108 0 108 109 0 109 110 0 110 75 0 75 74 0
		 89 127 1 127 129 1 129 130 0 130 131 0 131 90 0 90 89 0 234 249 0 249 250 0 250 243 0
		 243 236 1 236 235 1 235 234 0 103 150 0 150 268 1 268 266 0 266 262 1 262 104 1 104 103 0
		 151 155 0 155 269 0 269 267 1 267 272 0 272 240 0 240 239 0 239 219 0 219 218 0 218 216 0
		 216 184 0 184 151 0 227 245 0 245 246 0 246 247 0 247 236 0 243 244 0 244 241 0 241 242 0
		 242 229 0 229 228 0 228 227 1 0 13 0 13 1 0 1 15 0 15 2 0 293 295 1 295 294 1 294 293 1
		 6 14 0 1 32 1 32 15 0 32 2 1 17 36 1 21 43 0 43 22 0 43 23 1 23 22 0 23 44 1 44 24 0
		 24 23 0 44 25 1 25 24 0 25 45 0 45 26 0 26 25 1 28 47 0 47 29 0 1 31 1 31 51 0 51 1 1
		 1 52 1 52 32 0 32 53 0 53 2 1 53 33 0 17 59 0 59 36 0 17 37 0 37 59 1 36 60 1 60 38 1
		 38 41 1 40 66 1 66 21 0 66 43 1 43 67 0 67 23 1 23 68 1 68 44 0 44 69 0 69 25 1 69 45 1
		 26 50 0 50 46 0 46 26 1 31 49 0 49 79 0 79 31 1 51 52 0 31 80 0 80 51 1 52 53 0 53 81 1
		 81 33 1 33 82 0 82 55 0 55 33 1 54 55 0 55 56 0 56 54 0 59 60 1 37 91 1 91 59 0 60 61 0
		 61 38 0 61 64 0 64 62 0 62 61 1 294 296 0;
	setAttr ".ed[166:331]" 296 293 1 40 63 0 63 96 0 96 40 1 40 97 0 97 66 0 66 67 0
		 67 98 0 98 23 0 98 68 1 68 99 0 99 44 1 44 100 1 100 69 1 69 101 0 101 45 0 76 78 0
		 78 77 1 77 76 0 79 80 1 51 113 1 113 52 1 80 114 0 114 51 1 52 115 1 115 53 0 81 116 1
		 116 33 1 115 81 1 116 82 0 116 55 1 55 117 1 117 83 0 83 55 1 37 86 1 86 124 1 124 37 0
		 88 127 0 89 88 0 86 90 0 131 86 0 59 132 1 132 60 0 124 91 1 91 132 1 96 100 0 100 40 1
		 63 143 1 143 96 0 40 144 0 144 97 1 97 98 1 98 66 1 98 145 0 145 68 0 99 144 0 144 44 1
		 68 146 1 146 99 0 144 100 0 100 147 0 147 69 1 101 148 0 148 45 1 69 148 1 148 102 0
		 102 45 1 78 110 0 109 78 1 79 156 0 156 80 0 79 112 0 112 154 0 154 79 1 114 113 0
		 113 115 0 156 114 1 81 117 1 117 116 0 115 117 1 115 83 1 83 157 0 157 119 1 119 83 0
		 121 158 0 158 122 1 122 121 0 288 296 1 294 288 1 86 165 1 165 124 0 127 128 0 128 166 0
		 166 127 0 127 167 0 167 129 1 129 168 1 168 130 0 124 174 1 174 91 1 91 175 0 175 132 0
		 63 135 0 135 143 1 96 147 1 143 147 1 99 97 1 97 145 1 145 146 0 146 97 0 147 178 0
		 178 69 1 178 148 0 178 102 0 286 293 1 296 286 1 114 157 1 157 113 0 113 83 1 156 157 0
		 156 119 0 290 295 0 293 290 1 120 188 1 188 159 0 159 120 0 296 292 0 292 286 0 291 294 0
		 295 291 1 288 292 0 86 200 0 200 165 0 165 174 1 128 190 0 190 166 0 166 201 0 201 127 1
		 201 167 1 167 202 1 202 129 1 86 169 1 169 200 0 170 203 0 203 171 0 171 170 0 174 175 1
		 175 210 0 210 132 0 135 177 0 177 143 0 177 147 1 177 178 1 178 179 1 179 102 0 216 185 0
		 185 184 0 120 191 1 191 188 0 195 230 0 230 196 1 196 195 0 169 165 1 169 174 1 190 226 1
		 226 166 0;
	setAttr ".ed[332:497]" 166 231 1 231 201 0 201 232 1 232 167 0 232 202 1 202 203 1
		 203 129 0 203 233 0 233 204 0 204 203 1 204 207 0 207 205 0 205 204 1 169 206 0 206 175 1
		 175 169 0 204 208 1 208 207 0 206 210 1 179 213 1 213 214 0 214 179 1 177 179 0 218 185 1
		 239 220 0 220 219 0 189 230 0 230 225 0 225 189 1 226 231 0 231 233 1 233 201 1 201 248 0
		 248 232 0 232 233 1 233 202 1 231 204 0 206 237 0 237 210 0 226 241 1 244 226 1 247 257 0
		 257 236 1 233 248 0 257 252 0 252 236 1 258 259 0 259 260 0 260 258 0 258 261 0 261 259 0
		 261 260 0 262 263 0 263 264 0 264 262 1 264 265 0 265 262 0 266 263 0 263 267 1 267 264 0
		 267 265 1 266 267 1 262 105 0 105 104 0 269 265 0 268 270 1 270 266 0 266 271 1 271 267 0
		 270 271 0 268 274 1 274 270 0 271 272 1 268 273 0 273 276 1 276 268 1 274 271 1 268 277 0
		 277 274 0 222 272 1 272 223 1 223 222 0 273 275 0 275 276 1 276 277 0 274 278 0 278 271 0
		 277 278 1 272 278 0 278 280 0 280 272 1 272 224 0 224 223 0 275 279 1 279 281 1 281 275 0
		 275 282 1 282 276 0 141 279 1 279 142 1 142 141 0 281 282 0 279 283 0 283 281 0 282 284 1
		 284 276 0 284 280 0 280 276 1 140 279 1 141 140 0 281 286 0 286 282 1 279 287 1 287 283 0
		 287 281 1 282 288 0 288 284 0 284 285 0 285 280 0 286 288 1 281 290 1 290 286 0 287 290 0
		 288 291 1 291 284 0 291 285 0 291 289 0 289 285 1 253 289 0 289 254 1 254 253 0 289 255 0
		 255 254 0 23 8 1 8 7 0 24 9 1 9 8 0 25 10 1 10 9 0 35 37 0 54 34 0 48 77 0 78 49 0
		 49 48 1 57 84 0 84 85 0 85 58 0 58 57 0 76 75 0 49 111 1 111 112 0 58 125 1 125 126 0
		 126 87 0 87 58 0 60 133 1 134 61 1 93 136 0 136 135 0 135 94 1 94 93 0 63 95 0 95 94 0
		 102 149 1 149 150 0 103 102 0;
	setAttr ".ed[498:619]" 118 119 0 119 158 0 121 118 0 291 256 1 256 255 0 125 162 0
		 162 128 0 128 126 1 132 173 1 136 176 0 176 177 1 185 152 0 152 151 1 154 153 0 153 187 0
		 187 79 0 290 138 0 138 137 0 170 168 0 176 213 0 214 215 0 215 180 0 180 179 1 152 217 1
		 217 199 0 199 163 0 163 152 0 120 198 1 198 192 0 192 191 0 189 192 0 198 197 0 197 189 0
		 225 226 0 190 189 0 193 227 0 228 194 0 194 193 1 197 196 0 206 209 0 209 235 0 236 206 0
		 237 238 0 238 211 0 211 210 1 240 221 0 221 220 0 225 242 0 230 229 1 231 249 1 234 204 0
		 206 251 1 251 238 0 250 226 1 265 106 1 106 105 0 149 183 0 183 268 1 71 269 1 269 73 0
		 73 72 0 72 71 0 182 273 0 183 182 0 222 221 0 181 275 1 182 181 0 287 139 0 139 138 0
		 140 139 0 158 164 0 164 123 0 123 122 0 79 158 1 26 27 0 11 10 0 13 12 0 30 31 1
		 46 47 0 62 42 0 45 70 0 70 71 0 72 26 1 83 84 0 57 56 0 108 111 0 118 85 0 88 87 0
		 163 186 1 186 187 0 153 152 0 205 172 0 172 171 0 211 212 0 186 164 0 195 194 0 209 208 0
		 70 106 0 155 107 0 74 73 0 215 279 0 181 180 0 162 161 0 161 160 0 160 190 1 163 120 0
		 120 123 1 50 48 0 172 169 1 252 253 0 256 251 0 58 37 0 61 92 1 92 93 0 95 65 0 65 64 0
		 120 58 0 159 160 0 246 285 0 142 92 0 199 193 0 224 217 0;
	setAttr -s 810 ".n";
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
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
	setAttr ".n[332:497]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
	setAttr ".n[498:663]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
	setAttr ".n[664:809]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
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
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 326 -ch 1240 ".fc[0:325]" -type "polyFaces" 
		f 6 0 1 2 3 4 5
		mu 0 6 0 1 2 3 4 5
		mu 1 6 0 1 2 3 4 5
		f 6 6 7 8 9 10 -4
		mu 0 6 20 21 22 23 8 24
		mu 1 6 22 23 24 25 8 26
		f 6 11 12 13 14 15 16
		mu 0 6 26 27 28 29 30 31
		mu 1 6 28 29 30 31 32 33
		f 6 17 18 19 20 21 22
		mu 0 6 14 41 42 43 44 15
		mu 1 6 14 43 44 45 46 15
		f 6 23 24 25 26 -8 27
		mu 0 6 2 49 50 51 52 19
		mu 1 6 19 51 52 53 54 20
		f 6 28 29 30 31 -13 32
		mu 0 6 8 53 56 57 58 25
		mu 1 6 8 55 58 59 60 27
		f 6 -32 33 34 35 36 -14
		mu 0 6 28 59 60 61 62 29
		mu 1 6 30 61 62 63 64 31
		f 6 37 38 39 40 41 42
		mu 0 6 459 460 458 453 452 461
		mu 1 6 485 486 484 478 477 487
		f 6 43 44 45 46 47 48
		mu 0 6 146 147 148 149 150 151
		mu 1 6 155 156 157 158 159 160
		f 6 49 50 51 52 53 54
		mu 0 6 180 178 181 182 183 184
		mu 1 6 190 188 191 192 193 194
		f 6 55 56 57 58 59 60
		mu 0 6 346 347 348 339 326 325
		mu 1 6 363 364 365 352 339 338
		f 6 61 62 63 64 65 66
		mu 0 6 371 372 373 367 363 374
		mu 1 6 390 391 392 386 382 393
		f 11 67 68 69 70 71 72 73 74 75 76 77
		mu 0 11 384 385 376 368 386 387 388 389 390 391 392
		mu 1 11 405 406 395 387 407 408 409 410 411 412 413
		f 11 78 79 80 81 -59 82 83 84 85 86 87
		mu 0 11 309 336 337 338 326 339 340 341 342 343 310
		mu 1 11 319 349 350 351 339 352 353 354 355 356 320
		f 3 88 89 -1
		mu 0 3 0 17 1
		mu 1 3 0 17 1
		f 3 90 91 -2
		mu 0 3 1 18 2
		mu 1 3 1 18 2
		f 3 -28 -7 -3
		mu 0 3 2 19 3
		mu 1 3 19 20 21
		f 3 92 93 94
		mu 0 3 448 453 449
		mu 1 3 473 478 474
		f 3 95 -33 -12
		mu 0 3 9 8 25
		mu 1 3 9 8 27
		f 3 96 97 -91
		mu 0 3 1 48 18
		mu 1 3 1 50 18
		f 3 -92 -98 98
		mu 0 3 2 18 48
		mu 1 3 2 18 50
		f 3 -10 99 -29
		mu 0 3 8 23 53
		mu 1 3 8 25 55
		f 3 100 101 -15
		mu 0 3 29 63 30
		mu 1 3 31 65 32
		f 3 -102 102 103
		mu 0 3 30 63 32
		mu 1 3 32 65 34
		f 3 104 105 106
		mu 0 3 32 64 34
		mu 1 3 66 67 68
		f 3 -106 107 108
		mu 0 3 34 64 36
		mu 1 3 68 67 69
		f 3 109 110 111
		mu 0 3 36 65 38
		mu 1 3 38 70 40
		f 3 112 113 -20
		mu 0 3 42 69 43
		mu 1 3 44 74 45
		f 3 114 115 116
		mu 0 3 1 47 76
		mu 1 3 1 49 81
		f 3 117 118 -97
		mu 0 3 1 77 48
		mu 1 3 1 82 50
		f 3 -99 119 120
		mu 0 3 2 48 78
		mu 1 3 2 50 83
		f 3 -121 121 -24
		mu 0 3 2 78 49
		mu 1 3 2 83 84
		f 3 122 123 -100
		mu 0 3 23 86 53
		mu 1 3 25 92 55
		f 3 124 125 -123
		mu 0 3 23 55 86
		mu 1 3 25 57 92
		f 3 126 127 -30
		mu 0 3 53 87 56
		mu 1 3 55 93 58
		f 3 128 -34 -31
		mu 0 3 56 88 57
		mu 1 3 58 94 59
		f 3 -37 129 130
		mu 0 3 29 62 96
		mu 1 3 31 64 102
		f 3 -131 131 -101
		mu 0 3 29 96 63
		mu 1 3 31 102 65
		f 3 -103 132 133
		mu 0 3 32 63 97
		mu 1 3 34 65 103
		f 3 134 135 -105
		mu 0 3 32 98 64
		mu 1 3 66 104 67
		f 3 -108 136 137
		mu 0 3 36 64 99
		mu 1 3 69 67 105
		f 3 -138 138 -110
		mu 0 3 36 99 65
		mu 1 3 69 105 106
		f 3 139 140 141
		mu 0 3 38 103 66
		mu 1 3 40 110 71
		f 3 142 143 144
		mu 0 3 47 75 112
		mu 1 3 49 80 119
		f 3 -117 145 -118
		mu 0 3 1 76 77
		mu 1 3 1 81 82
		f 3 146 147 -116
		mu 0 3 47 113 76
		mu 1 3 49 120 81
		f 3 -119 148 -120
		mu 0 3 48 77 78
		mu 1 3 50 82 83
		f 3 -122 149 150
		mu 0 3 49 78 114
		mu 1 3 84 83 121
		f 3 151 152 153
		mu 0 3 49 115 79
		mu 1 3 51 122 85
		f 3 154 155 156
		mu 0 3 80 79 116
		mu 1 3 86 85 123
		f 3 -124 157 -127
		mu 0 3 53 86 87
		mu 1 3 55 92 93
		f 3 158 159 -126
		mu 0 3 55 127 86
		mu 1 3 57 134 92
		f 3 -128 160 161
		mu 0 3 56 87 89
		mu 1 3 58 93 95
		f 3 162 163 164
		mu 0 3 89 128 90
		mu 1 3 95 135 96
		f 3 -95 165 166
		mu 0 3 448 449 454
		mu 1 3 473 474 479
		f 3 167 168 169
		mu 0 3 62 95 135
		mu 1 3 64 101 142
		f 3 170 171 -130
		mu 0 3 62 136 96
		mu 1 3 64 143 102
		f 3 -132 172 -133
		mu 0 3 63 96 97
		mu 1 3 65 102 103
		f 3 -134 173 174
		mu 0 3 32 97 137
		mu 1 3 34 103 144
		f 3 -175 175 -135
		mu 0 3 32 137 98
		mu 1 3 66 145 104
		f 3 -136 176 177
		mu 0 3 64 98 138
		mu 1 3 67 104 146
		f 3 178 179 -137
		mu 0 3 64 139 99
		mu 1 3 67 147 105
		f 3 -139 180 181
		mu 0 3 65 99 140
		mu 1 3 106 105 148
		f 3 182 183 184
		mu 0 3 154 111 110
		mu 1 3 163 118 117
		f 3 -145 185 -147
		mu 0 3 47 112 113
		mu 1 3 49 119 120
		f 3 186 187 -146
		mu 0 3 76 159 77
		mu 1 3 81 168 82
		f 3 -148 188 189
		mu 0 3 76 113 160
		mu 1 3 81 120 169
		f 3 190 191 -149
		mu 0 3 77 161 78
		mu 1 3 82 170 83
		f 3 -151 192 193
		mu 0 3 49 114 162
		mu 1 3 51 171 172
		f 3 -192 194 -150
		mu 0 3 78 161 114
		mu 1 3 83 170 121
		f 3 -194 195 -152
		mu 0 3 49 162 115
		mu 1 3 51 172 122
		f 3 -153 -196 196
		mu 0 3 79 115 162
		mu 1 3 85 122 172
		f 3 197 198 199
		mu 0 3 79 163 117
		mu 1 3 85 173 124
		f 3 200 201 202
		mu 0 3 55 126 172
		mu 1 3 57 133 182
		f 3 203 -50 204
		mu 0 3 179 178 180
		mu 1 3 189 188 190
		f 3 205 -54 206
		mu 0 3 126 125 185
		mu 1 3 133 132 195
		f 3 207 208 -158
		mu 0 3 86 186 87
		mu 1 3 92 196 93
		f 3 -203 209 -159
		mu 0 3 55 172 127
		mu 1 3 57 182 134
		f 3 -160 210 -208
		mu 0 3 86 127 186
		mu 1 3 92 134 196
		f 3 -170 211 212
		mu 0 3 62 135 139
		mu 1 3 64 142 147
		f 3 213 214 -169
		mu 0 3 95 199 135
		mu 1 3 101 209 142
		f 3 215 216 -171
		mu 0 3 62 200 136
		mu 1 3 64 210 143
		f 3 -172 217 218
		mu 0 3 96 136 137
		mu 1 3 102 143 144
		f 3 -219 -174 -173
		mu 0 3 96 137 97
		mu 1 3 102 144 103
		f 3 -176 219 220
		mu 0 3 98 137 201
		mu 1 3 104 145 211
		f 3 -178 221 222
		mu 0 3 64 138 200
		mu 1 3 67 146 210
		f 3 223 224 -177
		mu 0 3 98 202 138
		mu 1 3 104 212 146
		f 3 -223 225 -179
		mu 0 3 64 200 139
		mu 1 3 67 210 147
		f 3 -180 226 227
		mu 0 3 99 139 203
		mu 1 3 105 147 213
		f 3 -182 228 229
		mu 0 3 65 140 204
		mu 1 3 106 148 214
		f 3 230 -229 -181
		mu 0 3 99 204 140
		mu 1 3 105 214 148
		f 3 -230 231 232
		mu 0 3 65 204 141
		mu 1 3 106 214 149
		f 3 233 -47 234
		mu 0 3 111 153 155
		mu 1 3 118 162 164
		f 3 235 236 -186
		mu 0 3 112 214 113
		mu 1 3 119 224 120
		f 3 237 238 239
		mu 0 3 112 158 215
		mu 1 3 119 167 225
		f 3 -190 240 -187
		mu 0 3 76 160 159
		mu 1 3 81 169 168
		f 3 -188 241 -191
		mu 0 3 77 159 161
		mu 1 3 82 168 170
		f 3 -237 242 -189
		mu 0 3 113 214 160
		mu 1 3 120 224 169
		f 3 243 244 -193
		mu 0 3 114 163 162
		mu 1 3 121 173 172
		f 3 -195 245 -244
		mu 0 3 114 161 163
		mu 1 3 121 170 173
		f 3 -197 -245 -198
		mu 0 3 79 162 163
		mu 1 3 85 172 173
		f 3 -199 -246 246
		mu 0 3 117 163 161
		mu 1 3 124 173 170
		f 3 247 248 249
		mu 0 3 117 216 164
		mu 1 3 124 226 174
		f 3 250 251 252
		mu 0 3 218 217 223
		mu 1 3 228 227 233
		f 3 253 -166 254
		mu 0 3 436 454 449
		mu 1 3 460 479 474
		f 3 255 256 -202
		mu 0 3 126 227 172
		mu 1 3 133 237 182
		f 3 257 258 259
		mu 0 3 178 177 230
		mu 1 3 188 187 240
		f 3 260 261 -51
		mu 0 3 178 231 181
		mu 1 3 188 241 191
		f 3 262 263 -52
		mu 0 3 181 232 182
		mu 1 3 191 242 192
		f 3 -210 264 265
		mu 0 3 127 172 240
		mu 1 3 134 182 250
		f 3 266 267 -211
		mu 0 3 127 241 186
		mu 1 3 134 251 196
		f 3 268 269 -214
		mu 0 3 95 191 199
		mu 1 3 101 201 209
		f 3 -213 -226 -216
		mu 0 3 62 139 200
		mu 1 3 64 147 210
		f 3 270 -227 -212
		mu 0 3 135 203 139
		mu 1 3 142 213 147
		f 3 -215 271 -271
		mu 0 3 135 199 203
		mu 1 3 142 209 213
		f 3 -217 -222 272
		mu 0 3 136 200 138
		mu 1 3 143 210 146
		f 3 273 -220 -218
		mu 0 3 136 201 137
		mu 1 3 143 211 145
		f 3 -221 274 -224
		mu 0 3 98 201 202
		mu 1 3 104 211 212
		f 3 -273 -225 275
		mu 0 3 136 138 202
		mu 1 3 143 146 212
		f 3 -228 276 277
		mu 0 3 99 203 244
		mu 1 3 105 213 254
		f 3 -278 278 -231
		mu 0 3 99 244 204
		mu 1 3 105 254 214
		f 3 -232 -279 279
		mu 0 3 141 204 244
		mu 1 3 149 214 254
		f 3 280 -167 281
		mu 0 3 434 448 454
		mu 1 3 458 480 479
		f 3 -241 282 283
		mu 0 3 159 160 216
		mu 1 3 168 169 226
		f 3 -247 -242 284
		mu 0 3 117 161 159
		mu 1 3 124 170 168
		f 3 -243 285 -283
		mu 0 3 160 214 216
		mu 1 3 169 224 226
		f 3 -285 -284 -248
		mu 0 3 117 159 216
		mu 1 3 124 168 226
		f 3 -249 -286 286
		mu 0 3 164 216 214
		mu 1 3 174 226 224
		f 3 287 -93 288
		mu 0 3 443 453 448
		mu 1 3 467 478 473
		f 3 289 290 291
		mu 0 3 171 256 219
		mu 1 3 181 266 229
		f 3 -282 292 293
		mu 0 3 434 454 447
		mu 1 3 458 479 472
		f 3 294 -94 295
		mu 0 3 444 449 453
		mu 1 3 469 474 478
		f 3 296 -293 -254
		mu 0 3 436 447 454
		mu 1 3 460 472 479
		f 3 297 298 -256
		mu 0 3 126 273 227
		mu 1 3 133 283 237
		f 3 -257 299 -265
		mu 0 3 172 227 240
		mu 1 3 182 237 250
		f 3 300 301 -259
		mu 0 3 177 262 230
		mu 1 3 187 272 240
		f 3 -260 302 303
		mu 0 3 178 230 274
		mu 1 3 188 240 284
		f 3 -304 304 -261
		mu 0 3 178 274 231
		mu 1 3 188 284 241
		f 3 -262 305 306
		mu 0 3 181 231 275
		mu 1 3 191 241 285
		f 3 307 308 -298
		mu 0 3 126 238 273
		mu 1 3 133 248 283
		f 3 309 310 311
		mu 0 3 277 276 278
		mu 1 3 287 286 288
		f 3 -266 312 -267
		mu 0 3 127 240 241
		mu 1 3 134 250 251
		f 3 -268 313 314
		mu 0 3 186 241 287
		mu 1 3 196 251 297
		f 3 315 316 -270
		mu 0 3 191 243 199
		mu 1 3 201 253 209
		f 3 -317 317 -272
		mu 0 3 199 243 203
		mu 1 3 209 253 213
		f 3 -276 -275 -274
		mu 0 3 136 202 201
		mu 1 3 143 212 211
		f 3 -318 318 -277
		mu 0 3 203 243 244
		mu 1 3 213 253 254
		f 3 -280 319 320
		mu 0 3 141 244 245
		mu 1 3 149 254 255
		f 3 -77 321 322
		mu 0 3 250 293 251
		mu 1 3 260 303 261
		f 3 323 324 -290
		mu 0 3 171 303 256
		mu 1 3 181 313 266
		f 3 325 326 327
		mu 0 3 315 314 316
		mu 1 3 325 324 326
		f 3 -299 -309 328
		mu 0 3 227 273 238
		mu 1 3 237 283 248
		f 3 -329 329 -300
		mu 0 3 227 238 240
		mu 1 3 237 248 327
		f 3 -302 330 331
		mu 0 3 230 262 308
		mu 1 3 240 272 318
		f 3 332 333 -303
		mu 0 3 230 317 274
		mu 1 3 240 328 284
		f 3 -305 334 335
		mu 0 3 231 274 318
		mu 1 3 241 284 329
		f 3 -336 336 -306
		mu 0 3 231 318 275
		mu 1 3 241 329 285
		f 3 -307 337 338
		mu 0 3 181 275 276
		mu 1 3 191 285 286
		f 3 339 340 341
		mu 0 3 276 319 279
		mu 1 3 286 330 289
		f 3 342 343 344
		mu 0 3 279 320 280
		mu 1 3 289 331 290
		f 3 345 346 347
		mu 0 3 238 286 241
		mu 1 3 332 333 251
		f 3 348 349 -343
		mu 0 3 279 321 320
		mu 1 3 289 334 331
		f 3 -348 -313 -330
		mu 0 3 238 241 240
		mu 1 3 332 251 250
		f 3 -347 350 -314
		mu 0 3 241 286 287
		mu 1 3 251 333 297
		f 3 351 352 353
		mu 0 3 245 290 291
		mu 1 3 255 300 301
		f 3 354 -320 -319
		mu 0 3 243 245 244
		mu 1 3 253 255 254
		f 3 -322 -76 355
		mu 0 3 251 293 294
		mu 1 3 261 303 304
		f 3 -74 356 357
		mu 0 3 329 330 331
		mu 1 3 342 343 344
		f 3 358 359 360
		mu 0 3 261 314 307
		mu 1 3 271 324 317
		f 3 -332 361 -333
		mu 0 3 230 308 317
		mu 1 3 240 318 328
		f 3 -334 362 363
		mu 0 3 274 317 319
		mu 1 3 284 328 357
		f 3 364 365 -335
		mu 0 3 274 344 318
		mu 1 3 284 358 329
		f 3 -337 366 367
		mu 0 3 275 318 319
		mu 1 3 359 329 357
		f 3 -368 -340 -338
		mu 0 3 275 319 276
		mu 1 3 285 330 286
		f 3 -341 -363 368
		mu 0 3 279 319 317
		mu 1 3 360 357 328
		f 3 369 370 -351
		mu 0 3 286 327 287
		mu 1 3 333 340 297
		f 3 371 -84 372
		mu 0 3 308 335 355
		mu 1 3 318 348 373
		f 3 -82 373 374
		mu 0 3 326 338 356
		mu 1 3 366 374 375
		f 3 -364 375 -365
		mu 0 3 274 319 344
		mu 1 3 284 357 358
		f 3 -366 -376 -367
		mu 0 3 318 344 319
		mu 1 3 329 358 357
		f 3 -375 376 377
		mu 0 3 326 356 349
		mu 1 3 366 375 367
		f 3 378 379 380
		mu 0 3 359 360 361
		mu 1 3 378 379 380
		f 3 381 382 -379
		mu 0 3 359 362 360
		mu 1 3 378 381 379
		f 3 -383 383 -380
		mu 0 3 360 362 361
		mu 1 3 379 381 380
		f 3 384 385 386
		mu 0 3 363 364 365
		mu 1 3 382 383 384
		f 3 -387 387 388
		mu 0 3 363 365 366
		mu 1 3 382 384 385
		f 3 -65 389 -385
		mu 0 3 363 367 364
		mu 1 3 382 386 383
		f 3 390 391 -386
		mu 0 3 364 368 365
		mu 1 3 383 387 384
		f 3 -392 392 -388
		mu 0 3 365 368 366
		mu 1 3 384 387 385
		f 3 -390 393 -391
		mu 0 3 364 367 368
		mu 1 3 383 386 387
		f 3 -66 394 395
		mu 0 3 374 363 369
		mu 1 3 393 382 388
		f 3 -393 -70 396
		mu 0 3 366 368 376
		mu 1 3 385 387 395
		f 3 -64 397 398
		mu 0 3 367 373 380
		mu 1 3 399 400 401
		f 3 399 400 -394
		mu 0 3 367 381 368
		mu 1 3 399 402 387
		f 3 -399 401 -400
		mu 0 3 367 380 381
		mu 1 3 399 401 402
		f 3 402 403 -398
		mu 0 3 373 395 380
		mu 1 3 400 416 401
		f 3 -401 404 -71
		mu 0 3 368 381 386
		mu 1 3 387 402 407
		f 3 405 406 407
		mu 0 3 373 394 402
		mu 1 3 400 423 424
		f 3 -404 408 -402
		mu 0 3 380 395 381
		mu 1 3 401 416 402
		f 3 409 410 -403
		mu 0 3 373 403 395
		mu 1 3 400 425 416
		f 3 411 412 413
		mu 0 3 399 386 408
		mu 1 3 420 407 430
		f 3 414 415 -407
		mu 0 3 394 401 402
		mu 1 3 423 434 424
		f 3 -408 416 -410
		mu 0 3 373 402 403
		mu 1 3 400 424 425
		f 3 -409 417 418
		mu 0 3 381 395 406
		mu 1 3 402 416 428
		f 3 -411 419 -418
		mu 0 3 395 403 406
		mu 1 3 416 425 428
		f 3 420 421 422
		mu 0 3 386 406 412
		mu 1 3 407 428 435
		f 3 -413 423 424
		mu 0 3 408 386 413
		mu 1 3 430 407 436
		f 3 425 426 427
		mu 0 3 401 411 421
		mu 1 3 422 433 444
		f 3 428 429 -416
		mu 0 3 401 422 402
		mu 1 3 434 445 424
		f 3 430 431 432
		mu 0 3 428 411 415
		mu 1 3 451 433 438
		f 3 -428 433 -429
		mu 0 3 401 421 422
		mu 1 3 434 452 445
		f 3 434 435 -427
		mu 0 3 411 429 421
		mu 1 3 433 453 444
		f 3 -430 436 437
		mu 0 3 402 422 430
		mu 1 3 424 445 454
		f 3 -438 438 439
		mu 0 3 402 430 412
		mu 1 3 424 454 435
		f 3 440 -431 441
		mu 0 3 433 411 428
		mu 1 3 457 433 451
		f 3 442 443 -434
		mu 0 3 421 434 422
		mu 1 3 452 458 445
		f 3 444 445 -435
		mu 0 3 411 435 429
		mu 1 3 433 459 453
		f 3 -436 -446 446
		mu 0 3 421 429 435
		mu 1 3 444 453 459
		f 3 447 448 -437
		mu 0 3 422 436 430
		mu 1 3 445 460 454
		f 3 -439 449 450
		mu 0 3 412 430 431
		mu 1 3 435 454 455
		f 3 -444 451 -448
		mu 0 3 422 434 436
		mu 1 3 445 458 460
		f 3 452 453 -443
		mu 0 3 421 443 434
		mu 1 3 444 467 468
		f 3 -447 454 -453
		mu 0 3 421 435 443
		mu 1 3 444 459 467
		f 3 -449 455 456
		mu 0 3 430 436 444
		mu 1 3 454 460 469
		f 3 -457 457 -450
		mu 0 3 430 444 431
		mu 1 3 454 469 455
		f 3 -458 458 459
		mu 0 3 431 444 437
		mu 1 3 455 469 461
		f 3 460 461 462
		mu 0 3 438 437 445
		mu 1 3 462 461 470
		f 3 -294 -297 -452
		mu 0 3 434 447 436
		mu 1 3 458 472 460
		f 3 -454 -289 -281
		mu 0 3 434 443 448
		mu 1 3 468 467 473
		f 3 -255 -295 -456
		mu 0 3 436 449 444
		mu 1 3 460 474 469
		f 3 -462 463 464
		mu 0 3 445 437 450
		mu 1 3 470 461 475
		f 4 -16 -104 465 466
		mu 0 4 31 30 32 33
		mu 1 4 33 32 34 35
		f 4 -466 -107 467 468
		mu 0 4 33 32 34 35
		mu 1 4 35 34 36 37
		f 4 -468 -109 469 470
		mu 0 4 35 34 36 37
		mu 1 4 37 36 38 39
		f 4 -9 -27 471 -125
		mu 0 4 23 22 54 55
		mu 1 4 25 24 56 57
		f 4 -154 -155 472 -25
		mu 0 4 49 79 80 50
		mu 1 4 51 85 86 52
		f 4 473 -184 474 475
		mu 0 4 74 110 111 75
		mu 1 4 79 117 118 80
		f 4 476 477 478 479
		mu 0 4 84 120 121 85
		mu 1 4 90 127 128 91
		f 4 -48 -234 -183 480
		mu 0 4 152 153 111 154
		mu 1 4 161 162 118 163
		f 4 481 482 -238 -144
		mu 0 4 75 157 158 112
		mu 1 4 80 166 167 119
		f 4 483 484 485 486
		mu 0 4 85 173 174 122
		mu 1 4 91 183 184 129
		f 4 487 -43 488 -161
		mu 0 4 87 187 188 89
		mu 1 4 93 197 198 95
		f 4 489 490 491 492
		mu 0 4 189 190 191 192
		mu 1 4 199 200 201 202
		f 4 493 494 -492 -269
		mu 0 4 95 134 192 191
		mu 1 4 101 141 202 201
		f 4 495 496 -62 497
		mu 0 4 141 205 206 142
		mu 1 4 149 215 216 150
		f 4 498 499 -251 500
		mu 0 4 165 164 217 218
		mu 1 4 175 174 227 228
		f 4 -464 -459 501 502
		mu 0 4 450 437 444 451
		mu 1 4 475 461 469 476
		f 4 503 504 505 -485
		mu 0 4 228 229 177 176
		mu 1 4 238 239 187 186
		f 4 -209 506 -38 -488
		mu 0 4 87 186 239 187
		mu 1 4 93 196 249 197
		f 4 -491 507 508 -316
		mu 0 4 191 190 242 243
		mu 1 4 201 200 252 253
		f 4 -78 -323 509 510
		mu 0 4 208 250 251 209
		mu 1 4 218 260 261 219
		f 4 -240 511 512 513
		mu 0 4 112 215 254 255
		mu 1 4 119 225 264 265
		f 4 -41 -288 514 515
		mu 0 4 452 453 443 446
		mu 1 4 477 478 467 471
		f 4 -339 -310 516 -263
		mu 0 4 181 276 277 232
		mu 1 4 191 286 287 242
		f 4 517 -352 -355 -509
		mu 0 4 242 290 245 243
		mu 1 4 252 300 255 253
		f 4 -354 518 519 520
		mu 0 4 245 291 292 246
		mu 1 4 255 301 302 256
		f 4 521 522 523 524
		mu 0 4 209 301 266 226
		mu 1 4 219 311 276 236
		f 4 525 526 527 -324
		mu 0 4 171 272 304 303
		mu 1 4 181 282 314 313
		f 4 528 -527 529 530
		mu 0 4 261 260 305 306
		mu 1 4 271 270 315 316
		f 4 -361 531 -331 532
		mu 0 4 261 307 308 262
		mu 1 4 271 317 318 272
		f 4 533 -88 534 535
		mu 0 4 267 309 310 268
		mu 1 4 277 319 320 278
		f 4 -531 536 -327 -359
		mu 0 4 261 306 316 314
		mu 1 4 271 316 326 324
		f 4 537 538 -60 539
		mu 0 4 286 285 325 326
		mu 1 4 296 295 338 339
		f 4 -371 540 541 542
		mu 0 4 287 327 328 288
		mu 1 4 297 340 341 298
		f 4 -357 -73 543 544
		mu 0 4 331 330 332 333
		mu 1 4 344 343 345 346
		f 4 545 -85 -372 -532
		mu 0 4 307 334 335 308
		mu 1 4 317 347 348 318
		f 4 -360 546 -86 -546
		mu 0 4 307 314 313 334
		mu 1 4 317 324 323 347
		f 4 -369 547 -56 548
		mu 0 4 279 317 345 322
		mu 1 4 360 328 361 362
		f 4 549 550 -541 -370
		mu 0 4 286 354 328 327
		mu 1 4 333 372 341 340
		f 4 -373 -83 -58 551
		mu 0 4 308 355 357 358
		mu 1 4 318 373 376 377
		f 4 -552 -57 -548 -362
		mu 0 4 308 358 345 317
		mu 1 4 318 377 361 328
		f 4 -395 -389 552 553
		mu 0 4 369 363 366 370
		mu 1 4 388 382 385 389
		f 4 554 555 -63 -497
		mu 0 4 378 379 373 372
		mu 1 4 397 398 392 391
		f 4 556 557 558 559
		mu 0 4 377 376 382 383
		mu 1 4 396 395 403 404
		f 4 560 -406 -556 561
		mu 0 4 393 394 373 379
		mu 1 4 414 415 392 398
		f 4 -544 -72 -412 562
		mu 0 4 398 387 386 399
		mu 1 4 419 408 407 420
		f 4 563 -415 -561 564
		mu 0 4 400 401 394 393
		mu 1 4 421 422 415 414
		f 4 -440 -422 -420 -417
		mu 0 4 402 412 406 403
		mu 1 4 424 435 428 425
		f 4 -515 -455 565 566
		mu 0 4 446 443 435 442
		mu 1 4 471 467 459 466
		f 4 -566 -445 -441 567
		mu 0 4 442 435 411 433
		mu 1 4 466 459 433 457
		f 4 -252 568 569 570
		mu 0 4 223 217 265 224
		mu 1 4 233 227 275 234
		f 4 -236 571 -500 -287
		mu 0 4 214 112 217 164
		mu 1 4 224 119 227 174
		f 5 -470 -112 572 -18 573
		mu 0 5 37 36 38 39 40
		mu 1 5 39 38 40 41 42
		f 5 -90 574 -22 575 -115
		mu 0 5 1 17 45 46 47
		mu 1 5 1 17 47 48 49
		f 5 -142 576 -113 -19 -573
		mu 0 5 38 66 67 68 39
		mu 1 5 40 71 72 73 41
		f 5 -162 -165 577 -35 -129
		mu 0 5 56 89 90 91 88
		mu 1 5 58 95 96 97 94
		f 5 -111 578 579 -560 580
		mu 0 5 38 65 100 101 102
		mu 1 5 40 70 107 108 109
		f 5 -200 581 -477 582 -156
		mu 0 5 79 117 118 119 116
		mu 1 5 85 124 125 126 123
		f 5 -475 -235 -46 583 -482
		mu 0 5 75 111 155 156 157
		mu 1 5 80 118 164 165 166
		f 5 -250 -499 584 -478 -582
		mu 0 5 117 164 165 166 118
		mu 1 5 124 174 175 176 125
		f 5 -486 -506 -258 -204 585
		mu 0 5 175 176 177 178 179
		mu 1 5 185 186 187 188 189
		f 5 -525 586 587 -513 588
		mu 0 5 209 226 252 253 210
		mu 1 5 219 236 262 263 220
		f 5 -311 -342 -345 589 590
		mu 0 5 278 276 279 280 281
		mu 1 5 288 286 289 290 291
		f 5 -315 -543 591 -39 -507
		mu 0 5 186 287 288 289 239
		mu 1 5 196 297 298 299 249
		f 5 -514 -588 592 -569 -572
		mu 0 5 112 255 302 265 217
		mu 1 5 119 265 312 275 227
		f 5 -535 -87 -547 -326 593
		mu 0 5 311 312 313 314 315
		mu 1 5 321 322 323 324 325
		f 5 -549 -61 -539 594 -349
		mu 0 5 279 322 323 324 321
		mu 1 5 289 335 336 337 334
		f 5 595 -553 -397 -557 -580
		mu 0 5 375 370 366 376 377
		mu 1 5 394 389 385 395 396
		f 5 -558 -69 596 -44 597
		mu 0 5 382 376 385 396 397
		mu 1 5 403 395 406 417 418
		f 5 -520 598 -426 -564 599
		mu 0 5 409 410 411 401 400
		mu 1 5 431 432 433 422 421
		f 5 -505 600 601 602 -301
		mu 0 5 177 229 264 263 262
		mu 1 5 187 239 274 273 272
		f 5 -570 -593 -587 603 604
		mu 0 5 170 225 252 226 171
		mu 1 5 180 235 262 236 181
		f 8 -114 -577 -141 605 -476 -143 -576 -21
		mu 0 8 70 71 72 73 74 75 47 46
		mu 1 8 75 76 77 78 79 80 49 48
		f 8 -207 -53 -264 -517 -312 -591 606 -308
		mu 0 8 126 185 233 234 235 236 237 238
		mu 1 8 133 195 243 244 245 246 247 248
		f 8 -540 -378 607 -463 -465 -503 608 -550
		mu 0 8 286 326 349 350 351 352 353 354
		mu 1 8 333 366 367 368 369 370 371 372
		f 3 -419 -421 -405
		mu 0 3 381 406 386
		mu 1 3 402 428 407
		h 3 -384 -382 -381
		mu 0 3 405 407 404
		mu 1 3 427 429 426
		f 7 -473 -157 -583 -480 609 -472 -26
		mu 0 7 81 82 83 84 85 55 54
		mu 1 7 87 88 89 90 91 57 56
		f 7 -610 -487 -586 -205 -55 -206 -201
		mu 0 7 55 85 122 123 124 125 126
		mu 1 7 57 91 129 130 131 132 133
		f 7 610 611 -493 -495 612 613 -163
		mu 0 7 89 129 130 131 132 133 128
		mu 1 7 95 136 137 138 139 140 135
		f 7 -233 -498 -67 -396 -554 -596 -579
		mu 0 7 65 141 142 143 144 145 100
		mu 1 7 106 149 150 151 152 153 154
		f 7 -479 -585 -501 -253 -571 -605 614
		mu 0 7 85 121 167 168 169 170 171
		mu 1 7 91 128 177 178 179 180 181
		f 7 -615 -292 615 -602 -601 -504 -484
		mu 0 7 85 171 219 220 221 222 173
		mu 1 7 91 181 229 230 231 232 183
		f 7 -321 -521 -600 -565 -562 -555 -496
		mu 0 7 141 245 246 247 248 249 205
		mu 1 7 149 255 256 257 258 259 215
		f 7 -291 -325 -528 -529 -533 -603 -616
		mu 0 7 257 258 259 260 261 262 263
		mu 1 7 267 268 269 270 271 272 273
		f 7 -607 -590 -344 -350 -595 -538 -346
		mu 0 7 238 237 282 283 284 285 286
		mu 1 7 248 247 292 293 294 295 296
		f 7 616 -460 -461 -608 -377 -374 -81
		mu 0 7 432 431 437 438 439 440 441
		mu 1 7 456 455 461 462 463 464 465
		f 7 -542 -551 -609 -502 -296 -40 -592
		mu 0 7 455 456 457 451 444 453 458
		mu 1 7 481 482 483 476 469 478 484
		f 7 -614 -613 -494 -168 -36 -578 -164
		mu 0 7 93 94 134 95 62 61 92
		mu 1 7 99 100 141 101 64 63 98
		f 9 -581 -559 -598 -49 -481 -185 -474 -606 -140
		mu 0 9 38 102 104 105 106 107 108 109 103
		mu 1 9 40 109 111 112 113 114 115 116 110
		f 9 -489 -42 -516 -567 -568 -442 -433 617 -611
		mu 0 9 89 188 193 194 195 196 197 198 129
		mu 1 9 95 198 203 204 205 206 207 208 136
		f 9 -597 -68 -511 -589 -512 -239 -483 -584 -45
		mu 0 9 147 207 208 209 210 211 212 213 148
		mu 1 9 156 217 218 219 220 221 222 223 157
		f 9 -604 -524 618 -536 -594 -328 -537 -530 -526
		mu 0 9 171 226 266 267 268 269 270 271 272
		mu 1 9 181 236 276 277 278 279 280 281 282
		f 9 -618 -432 -599 -519 -353 -518 -508 -490 -612
		mu 0 9 414 415 411 410 416 417 418 419 420
		mu 1 9 437 438 433 432 439 440 441 442 443
		f 10 -510 -356 -75 -358 -545 -563 -414 -425 619 -522
		mu 0 10 209 251 294 295 296 297 298 299 300 301
		mu 1 10 219 261 304 305 306 307 308 309 310 311
		f 10 -423 -451 -617 -80 -79 -534 -619 -523 -620 -424
		mu 0 10 386 412 431 432 426 427 423 424 425 413
		mu 1 10 407 435 455 456 449 450 446 447 448 436
		f 12 -5 -11 -96 -17 -467 -469 -471 -574 -23 -575 -89 -6
		mu 0 12 7 24 8 9 10 11 12 13 14 15 16 6
		mu 1 12 7 26 8 9 10 11 12 13 14 15 16 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr -s 2 ".pd";
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd[1]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vs" 5;
createNode transform -n "pCylinder1";
	rename -uid "8F1B5C6D-4357-2BD2-12AC-398FD8F6F02E";
	setAttr ".s" -type "double3" 1.9595956400882792 2.3598523952957611 1.9595956400882792 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "B511D756-44CB-83F5-7A63-BD84C3AA9E93";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[98:109]" -type "float3"  0.021452278 0 -0.012385478 
		0.012385478 0 -0.021452278 0 0 -0.024770956 -0.012385478 0 -0.021452278 -0.021452278 
		0 -0.012385478 -0.024770956 0 0 -0.021452278 0 0.012385478 -0.012385478 0 0.021452278 
		0 0 0.024770956 0.012385478 0 0.021452278 0.021452278 0 0.012385478 0.024770956 0 
		0;
	setAttr ".vs" 5;
createNode transform -n "imagePlane1";
	rename -uid "B08E82FC-4E27-E7B7-1032-89AE9D5B6EA0";
	setAttr ".t" -type "double3" 0 5.6819873116917474 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 4.2509871931551775 4.2509871931551775 4.2509871931551775 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "D0C6848E-4BDF-C513-5A41-6FB9114E242D";
	setAttr -k off ".v";
	setAttr ".fc" 151;
	setAttr ".imn" -type "string" "C:/Projects/Repositories/IdleMiner/Maya//images/TallShipRef.png";
	setAttr ".cov" -type "short2" 1024 1024 ;
	setAttr ".cof" -type "float3" 0.12385321 0.12385321 0.12385321 ;
	setAttr ".dlc" no;
	setAttr ".w" 10.24;
	setAttr ".h" 10.24;
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "951D7681-4670-FBB7-0953-7EBD7A39FFB4";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "837C8B03-434D-9FA0-C0A3-1288A790526A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4EC628C4-4056-B1E4-95C4-7FA100298893";
createNode displayLayerManager -n "layerManager";
	rename -uid "5E6DD41E-4F3F-303C-1B18-70B0274451C5";
createNode displayLayer -n "defaultLayer";
	rename -uid "50503853-48D0-B36F-FF88-278D4F7653B3";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "374FB211-4152-1D30-2B9F-C9842115ABED";
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
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1279\n            -height 1028\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1279\\n    -height 1028\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1279\\n    -height 1028\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "D5D35BEB-414B-9677-611E-E8A1F72DC5FC";
createNode lambert -n "lambert6";
	rename -uid "DA8213F1-4DEA-BC46-61F4-7A99CDD0D026";
createNode shadingEngine -n "lambert6SG";
	rename -uid "134D2DB5-42F1-75B8-38A4-CD966C8B7C07";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "0334376C-4877-D383-4414-C7B81A9692F7";
createNode file -n "file1";
	rename -uid "DAD2D922-4D6F-C4A8-F7A0-AD80DA3CF460";
	setAttr ".ftn" -type "string" "C:/Projects/Repositories/IdleMiner/Maya//images/TallShipRef.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "54191DCB-4251-1F96-D8EB-8CA3FC9A5DDE";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "0A90F54C-4B7A-48F2-C7BB-138EABE7872F";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyConnectComponents -n "polyConnectComponents1";
	rename -uid "F7215652-4FC5-88C3-D1BC-FC9F0CB99055";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
createNode polyTweak -n "polyTweak1";
	rename -uid "55F33F7F-405D-22B4-923D-C1ACFB568E23";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 6.47087717 0 0 6.47087717 0 0 6.47087717
		 0 0 6.47087717 0 0 6.47087717 0 0 6.47087717 0 0 6.47087717 0 0 6.47087717 0 0 6.47087717
		 0 0 6.47087717 0 0 6.47087717 0 0 6.47087717 0 0 1 0 0 6.47087717 0;
createNode polyConnectComponents -n "polyConnectComponents2";
	rename -uid "9A2D159D-44B4-72E0-75CC-04BD3BB0D3C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60:71]";
createNode polyTweak -n "polyTweak2";
	rename -uid "E42ABA86-4F55-BBAA-E26D-ACA8A1048605";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[26]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[27]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[28]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[29]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[30]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[31]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[32]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[33]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[34]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[35]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[36]" -type "float3" 0 1.0930598 0 ;
	setAttr ".tk[37]" -type "float3" 0 1.0930598 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "1A1E4EDA-415E-EEF3-005D-F99C11DE1FFB";
	setAttr ".ics" -type "componentList" 1 "f[24:35]";
	setAttr ".ix" -type "matrix" 1.9595956400882792 0 0 0 0 2.3598523952957611 0 0 0 0 1.9595956400882792 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 17.630167 0 ;
	setAttr ".rs" 54854;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6160940548026788 17.630167385912909 -1.6160940548026788 ;
	setAttr ".cbx" -type "double3" 1.6160940548026788 17.630167385912909 1.6160940548026788 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "AFFD5421-4FB0-B677-B8B8-629C4AC0905E";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[12]" -type "float3" -0.1518074 0 0.087646045 ;
	setAttr ".tk[13]" -type "float3" -0.087646045 0 0.1518074 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.17529209 ;
	setAttr ".tk[15]" -type "float3" 0.087646045 0 0.1518074 ;
	setAttr ".tk[16]" -type "float3" 0.1518074 0 0.087646045 ;
	setAttr ".tk[17]" -type "float3" 0.17529209 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.1518074 0 -0.087646045 ;
	setAttr ".tk[19]" -type "float3" 0.087646045 0 -0.1518074 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.17529209 ;
	setAttr ".tk[21]" -type "float3" -0.087646045 0 -0.1518074 ;
	setAttr ".tk[22]" -type "float3" -0.1518074 0 -0.087646045 ;
	setAttr ".tk[23]" -type "float3" -0.17529209 0 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.88942331 0 ;
	setAttr ".tk[38]" -type "float3" -0.1518074 -0.43176657 0.087646045 ;
	setAttr ".tk[39]" -type "float3" -0.087646045 -0.43176657 0.1518074 ;
	setAttr ".tk[40]" -type "float3" 0 -0.43176657 0.17529209 ;
	setAttr ".tk[41]" -type "float3" 0.087646045 -0.43176657 0.1518074 ;
	setAttr ".tk[42]" -type "float3" 0.1518074 -0.43176657 0.087646045 ;
	setAttr ".tk[43]" -type "float3" 0.17529209 -0.43176657 0 ;
	setAttr ".tk[44]" -type "float3" 0.1518074 -0.43176657 -0.087646045 ;
	setAttr ".tk[45]" -type "float3" 0.087646045 -0.43176657 -0.1518074 ;
	setAttr ".tk[46]" -type "float3" 0 -0.43176657 -0.17529209 ;
	setAttr ".tk[47]" -type "float3" -0.087646045 -0.43176657 -0.1518074 ;
	setAttr ".tk[48]" -type "float3" -0.1518074 -0.43176657 -0.087646045 ;
	setAttr ".tk[49]" -type "float3" -0.17529209 -0.43176657 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "87A84B8E-4F6C-263D-3CD4-6D800756C9A3";
	setAttr ".ics" -type "componentList" 1 "f[24:35]";
	setAttr ".ix" -type "matrix" 1.9595956400882792 0 0 0 0 2.3598523952957611 0 0 0 0 1.9595956400882792 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 17.630167 0 ;
	setAttr ".rs" 38419;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2974923407320222 17.630167385912909 -1.2974923407320222 ;
	setAttr ".cbx" -type "double3" 1.2974923407320222 17.630167385912909 1.2974923407320222 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "60FBB92A-4D52-C945-A3B3-EDA72D3D2EC2";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk[49:61]" -type "float3"  -0.14080311 0 0.081292704
		 -0.081292704 0 0.14080311 0 0 0 0 0 0.16258541 0.081292704 0 0.14080311 0.14080311
		 0 0.081292704 0.16258541 0 0 0.14080311 0 -0.081292704 0.081292704 0 -0.14080311
		 0 0 -0.16258541 -0.081292704 0 -0.14080311 -0.14080311 0 -0.081292704 -0.16258541
		 0 0;
createNode polyConnectComponents -n "polyConnectComponents3";
	rename -uid "ADB51230-4C56-78A2-A572-A9867785D674";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[120:121]" "e[125]" "e[128]" "e[131]" "e[134]" "e[137]" "e[140]" "e[143]" "e[146]" "e[149]" "e[152]";
createNode polyTweak -n "polyTweak5";
	rename -uid "D3D8AA79-4536-5B98-7662-B69833061CAD";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[61]" -type "float3" -0.46263027 1.8823184 0.26709968 ;
	setAttr ".tk[62]" -type "float3" -0.26709968 1.8823184 0.46263027 ;
	setAttr ".tk[63]" -type "float3" 0 1.8823184 0 ;
	setAttr ".tk[64]" -type "float3" 0 1.8823184 0.53419936 ;
	setAttr ".tk[65]" -type "float3" 0.26709968 1.8823184 0.46263027 ;
	setAttr ".tk[66]" -type "float3" 0.46263027 1.8823184 0.26709968 ;
	setAttr ".tk[67]" -type "float3" 0.53419936 1.8823184 0 ;
	setAttr ".tk[68]" -type "float3" 0.46263027 1.8823184 -0.26709968 ;
	setAttr ".tk[69]" -type "float3" 0.26709968 1.8823184 -0.46263027 ;
	setAttr ".tk[70]" -type "float3" 0 1.8823184 -0.53419936 ;
	setAttr ".tk[71]" -type "float3" -0.26709968 1.8823184 -0.46263027 ;
	setAttr ".tk[72]" -type "float3" -0.46263027 1.8823184 -0.26709968 ;
	setAttr ".tk[73]" -type "float3" -0.53419936 1.8823184 0 ;
createNode polyConnectComponents -n "polyConnectComponents4";
	rename -uid "2581B18C-44AA-9C13-02D0-BB9B4A2D0390";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[156:167]";
createNode polyTweak -n "polyTweak6";
	rename -uid "7CA6C82E-460D-3C4A-0EE7-F5A8F0DBE357";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[74]" -type "float3" 0.1052452 0 -0.060763352 ;
	setAttr ".tk[75]" -type "float3" 0.060763352 0 -0.1052452 ;
	setAttr ".tk[76]" -type "float3" 0 0 -0.1215267 ;
	setAttr ".tk[77]" -type "float3" -0.060763352 0 -0.1052452 ;
	setAttr ".tk[78]" -type "float3" -0.1052452 0 -0.060763352 ;
	setAttr ".tk[79]" -type "float3" -0.1215267 0 0 ;
	setAttr ".tk[80]" -type "float3" -0.1052452 0 0.060763352 ;
	setAttr ".tk[81]" -type "float3" -0.060763352 0 0.1052452 ;
	setAttr ".tk[82]" -type "float3" 0 0 0.1215267 ;
	setAttr ".tk[83]" -type "float3" 0.060763352 0 0.1052452 ;
	setAttr ".tk[84]" -type "float3" 0.1052452 0 0.060763352 ;
	setAttr ".tk[85]" -type "float3" 0.1215267 0 0 ;
createNode polyConnectComponents -n "polyConnectComponents5";
	rename -uid "589C301E-4E49-1C06-3EF8-C8B1E46B4ADC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[120:121]" "e[125]" "e[128]" "e[131]" "e[134]" "e[137]" "e[140]" "e[143]" "e[146]" "e[149]" "e[152]";
createNode polyTweak -n "polyTweak7";
	rename -uid "32A4FAF3-4189-BA8D-6A68-FB860FB70901";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[86]" -type "float3" 0.06114734 0 -0.03530344 ;
	setAttr ".tk[87]" -type "float3" 0.03530344 0 -0.06114734 ;
	setAttr ".tk[88]" -type "float3" 0 0 -0.07060688 ;
	setAttr ".tk[89]" -type "float3" -0.03530344 0 -0.06114734 ;
	setAttr ".tk[90]" -type "float3" -0.06114734 0 -0.03530344 ;
	setAttr ".tk[91]" -type "float3" -0.07060688 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.06114734 0 0.03530344 ;
	setAttr ".tk[93]" -type "float3" -0.03530344 0 0.06114734 ;
	setAttr ".tk[94]" -type "float3" 0 0 0.07060688 ;
	setAttr ".tk[95]" -type "float3" 0.03530344 0 0.06114734 ;
	setAttr ".tk[96]" -type "float3" 0.06114734 0 0.03530344 ;
	setAttr ".tk[97]" -type "float3" 0.07060688 0 0 ;
createNode reference -n "Rock_001RN";
	rename -uid "F81B8217-4568-C0B5-9D0D-65A818513238";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Rock_001RN"
		"Rock_001RN" 0
		"Rock_001RN" 3
		0 "|Rock_001:Rock_001" "|Ground|Inner_001_RbRocks" "-s -r "
		2 "|Ground|Inner_001_RbRocks|Rock_001:Rock_001" "translate" " -type \"double3\" 0.27862288139843316 0.15130447991662666 -0.65051947339927452"
		
		2 "|Ground|Inner_001_RbRocks|Rock_001:Rock_001" "scale" " -type \"double3\" 2.06917402718242771 2.06917402718242771 2.06917402718242771";
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
		0 "|Rock_002:Rock_002" "|Ground|Inner_001_RbRocks" "-s -r "
		2 "|Ground|Inner_001_RbRocks|Rock_002:Rock_002" "translate" " -type \"double3\" 0.48212578744480866 0.15130447991662666 -0.49697050080687127"
		
		2 "|Ground|Inner_001_RbRocks|Rock_002:Rock_002" "scale" " -type \"double3\" 1.34783110061681022 1.34783110061681022 1.34783110061681022"
		
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
		0 "|Rock_003:Rock_003" "|Ground|Inner_001_RbRocks" "-s -r "
		2 "|Ground|Inner_001_RbRocks|Rock_003:Rock_003" "translate" " -type \"double3\" -0.46960753103571007 0.15130447991662635 -0.61400429760297903"
		
		2 "|Ground|Inner_001_RbRocks|Rock_003:Rock_003" "scale" " -type \"double3\" 2.83488402476107559 2.83488402476107559 2.83488402476107559"
		
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
	setAttr -s 11 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 15 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
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
connectAttr "groupId34.id" "|Crystal_03|geo|geoShape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|geo|geoShape.iog.og[0].gco";
connectAttr "groupId35.id" "|Crystal_03|geo|geoShape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|geo|geoShape.iog.og[1].gco";
connectAttr "groupId36.id" "|Crystal_03|geo|geoShape.iog.og[2].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|geo|geoShape.iog.og[2].gco";
connectAttr "groupId37.id" "|Crystal_03|geo|geoShape.iog.og[3].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|geo|geoShape.iog.og[3].gco";
connectAttr "groupId38.id" "|Crystal_03|geo|geoShape.iog.og[4].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|geo|geoShape.iog.og[4].gco";
connectAttr "groupId33.id" "|Crystal_03|geo|geoShape.ciog.cog[0].cgid";
connectAttr "groupId39.id" "|Crystal_03|coll|collShape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|coll|collShape.iog.og[0].gco";
connectAttr "groupId40.id" "|Crystal_03|coll|collShape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|coll|collShape.iog.og[1].gco";
connectAttr "groupId41.id" "|Crystal_03|coll|collShape.iog.og[2].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|coll|collShape.iog.og[2].gco";
connectAttr "groupId42.id" "|Crystal_03|coll|collShape.iog.og[3].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|coll|collShape.iog.og[3].gco";
connectAttr "groupId43.id" "|Crystal_03|coll|collShape.iog.og[4].gid";
connectAttr "lambert5SG.mwc" "|Crystal_03|coll|collShape.iog.og[4].gco";
connectAttr "groupId44.id" "|Crystal_03|coll|collShape.ciog.cog[1].cgid";
connectAttr "polyConnectComponents5.out" "pCylinderShape1.i";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "phong1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
connectAttr "aiUtility1.out" "lambert2SG.ss";
connectAttr "|Crystal_01|coll|collShape.iog" "lambert2SG.dsm" -na;
connectAttr "|Crystal_01|geo|geoShape.iog" "lambert2SG.dsm" -na;
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
connectAttr "|Crystal_03|geo|geoShape.ciog.cog[0]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|geo|geoShape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|geo|geoShape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|geo|geoShape.iog.og[2]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|geo|geoShape.iog.og[3]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|geo|geoShape.iog.og[4]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|coll|collShape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|coll|collShape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|coll|collShape.iog.og[2]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|coll|collShape.iog.og[3]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|coll|collShape.iog.og[4]" "lambert5SG.dsm" -na;
connectAttr "|Crystal_03|coll|collShape.ciog.cog[1]" "lambert5SG.dsm" -na;
connectAttr "groupId34.msg" "lambert5SG.gn" -na;
connectAttr "groupId35.msg" "lambert5SG.gn" -na;
connectAttr "groupId36.msg" "lambert5SG.gn" -na;
connectAttr "groupId37.msg" "lambert5SG.gn" -na;
connectAttr "groupId38.msg" "lambert5SG.gn" -na;
connectAttr "groupId39.msg" "lambert5SG.gn" -na;
connectAttr "groupId40.msg" "lambert5SG.gn" -na;
connectAttr "groupId41.msg" "lambert5SG.gn" -na;
connectAttr "groupId42.msg" "lambert5SG.gn" -na;
connectAttr "groupId43.msg" "lambert5SG.gn" -na;
connectAttr "groupId44.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "mat_Crystal.msg" "materialInfo5.m";
connectAttr "file1.oc" "lambert6.c";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "lambert6SG.msg" "materialInfo6.sg";
connectAttr "lambert6.msg" "materialInfo6.m";
connectAttr "file1.msg" "materialInfo6.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyTweak1.out" "polyConnectComponents1.ip";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyConnectComponents2.ip";
connectAttr "polyConnectComponents1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyConnectComponents2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyConnectComponents3.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyConnectComponents4.ip";
connectAttr "polyConnectComponents3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyConnectComponents5.ip";
connectAttr "polyConnectComponents4.out" "polyTweak7.ip";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiUtility1.msg" ":defaultShaderList1.s" -na;
connectAttr "mat_Ground.msg" ":defaultShaderList1.s" -na;
connectAttr "mat_Rock.msg" ":defaultShaderList1.s" -na;
connectAttr "mat_Crystal.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiCurvature1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Environment_001.0017.ma
