//Maya ASCII 2026 scene
//Name: Rock_002.ma
//Last modified: Fri, Aug 07, 2026 10:16:46 AM
//Codeset: 1252
requires maya "2026";
requires "mtoa" "5.5.4.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202510291147-60ec9eda33";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26200)";
fileInfo "UUID" "3B97929E-48CF-5E3D-81EB-A0887B34F1FC";
createNode transform -n "Rock_002";
	rename -uid "5AC79F46-4111-5F31-CD8C-F193E378AE78";
	setAttr ".rp" -type "double3" 0 -0.15130447991662666 0 ;
	setAttr ".sp" -type "double3" 0 -0.15130447991662666 0 ;
createNode mesh -n "Rock_Shape2" -p "Rock_002";
	rename -uid "E10610EF-4B96-F3EC-317F-D585BE0CDAAA";
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
// End of Rock_002.ma
