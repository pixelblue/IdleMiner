//Maya ASCII 2026 scene
//Name: Rock_003.ma
//Last modified: Fri, Aug 07, 2026 10:16:57 AM
//Codeset: 1252
requires maya "2026";
requires "mtoa" "5.5.4.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202510291147-60ec9eda33";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26200)";
fileInfo "UUID" "87B2F2E2-454D-DB7E-EB71-F5B71E7539E2";
createNode transform -n "Rock_003";
	rename -uid "19B69EB0-4247-3553-FD3A-84B2D2073872";
	setAttr ".rp" -type "double3" 0 -0.15130447991662666 0 ;
	setAttr ".sp" -type "double3" 0 -0.15130447991662666 0 ;
createNode mesh -n "Rock_Shape3" -p "Rock_003";
	rename -uid "05A99079-4836-8CD8-6C20-7589D5EDA4BB";
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
createNode mesh -n "polySurfaceShape2" -p "Rock_003";
	rename -uid "04B58B36-4281-4056-5862-A9A4E0285F72";
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
createNode materialInfo -n "materialInfo4";
	rename -uid "2840B351-4FD3-885D-890E-678F8502CE2A";
createNode shadingEngine -n "lambert4SG";
	rename -uid "6294A9E5-4FE5-BC86-FF0C-33B15693C6F1";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "mat_Rock";
	rename -uid "78AB8FFB-4F90-CB74-202B-4D891813D4BA";
	setAttr ".c" -type "float3" 0.12723215 0.12723215 0.12723215 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AFE64226-4D21-78A1-520F-69AFE0168379";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
select -ne :modelPanel4ViewSelectedSet;
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "mat_Rock.msg" "materialInfo4.m";
connectAttr "mat_Rock.oc" "lambert4SG.ss";
connectAttr "Rock_Shape3.iog" "lambert4SG.dsm" -na;
connectAttr "Rock_Shape2.iog" "lambert4SG.dsm" -na;
connectAttr "Rock_Shape1.iog" "lambert4SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "mat_Rock.msg" ":defaultShaderList1.s" -na;
// End of Rock_003.ma
