//Maya ASCII 2024 scene
//Name: Anya.ma
//Last modified: Sat, Sep 02, 2023 04:19:36 PM
//Codeset: 1252
file -rdi 1 -ns "Ultimate_Pendulum_v1_0_0" -rfn "Ultimate_Pendulum_v1_0_0RN"
		 -op "v=0;" -typ "mayaAscii" "C:/Users/PC 403/Desktop/GDM321/Week3//scenes/Ultimate_Pendulum_v1.0.0.ma";
file -r -ns "Ultimate_Pendulum_v1_0_0" -dr 1 -rfn "Ultimate_Pendulum_v1_0_0RN" -op
		 "v=0;" -typ "mayaAscii" "C:/Users/PC 403/Desktop/GDM321/Week3//scenes/Ultimate_Pendulum_v1.0.0.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "5691D30C-4DB9-4380-1D20-1683E90C837A";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "9D6EAC49-4807-4941-0788-FF80548AF9A1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 35.502493203646786 11.44380006213467 5.6321505813346526 ;
	setAttr ".r" -type "double3" 5.0616472704179811 76.999999999994046 -1.7673592877454461e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D8FC8FF8-42E1-20EF-009C-A59C64547643";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 32.201459524800534;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -7.4505805969238281e-09 18.019551386945352 24.046326410364578 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A114116C-49DE-ACA0-E369-44A8B5EFCF1F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C654DFA4-4B11-3B90-2DC8-3897083CCFA8";
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
	rename -uid "2AD7D78B-4293-9D2F-20CD-2AACB92ED44C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0CC27AFD-47E5-1812-8627-E780C5E553EC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 107.57743685629097;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "20BE9E9C-4251-FFD0-516C-C09BED989F4E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "93F14E0C-417D-CD50-0169-1F86CE53F184";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "3E08D58B-4F63-9A56-7067-5F8CB61AB1C2";
	setAttr ".t" -type "double3" 1.5968357120608245 1.3647453821760536 -9.0651402352904817 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "46702EA6-4CA5-ABCD-EFD0-5D925CECE76E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[3]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[4]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[6]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[8]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[11]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[14]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[15]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[18]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[19]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[21]" -type "float3" 0 0 -3.1288397 ;
	setAttr ".pt[23]" -type "float3" 0 0 -3.1288397 ;
createNode transform -n "pCube2";
	rename -uid "F1CBB0BC-4D81-16E0-20FE-9487263704DE";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr -k on ".blendParent1";
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "CE118B0A-4276-0EF8-359D-828ADF197188";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "pCube2_parentConstraint1" -p "pCube2";
	rename -uid "CABE9416-4D3B-2332-D1A6-CB8D23F0733C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_Pend_MainW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0.50915429839350423 0.036655591022045186 ;
	setAttr ".lr" -type "double3" 6.9082985772553105 0 0 ;
	setAttr ".rst" -type "double3" 0 16.202245434387635 6.6361703872680664 ;
	setAttr -k on ".w0";
createNode transform -n "camera1";
	rename -uid "82974A83-4D0D-C359-7EF9-C89C2B4529B6";
	setAttr ".t" -type "double3" 0 10.27961453155614 -0.42796835815695911 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "ADBA2C27-487F-5B4A-F4DF-5AB9CAAD28F9";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 36.29760183346248;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "EFA96244-4DF8-C532-BD18-948468C2C654";
	setAttr ".t" -type "double3" 0 22.735542437122916 6.636170215417617 ;
	setAttr ".s" -type "double3" 1.7201198839146341 1.7201198839146341 1.7201198839146341 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "4AB00EFB-4A70-131E-03CA-5097EA10A62E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube3";
	rename -uid "00FD9D73-4483-C866-BF35-BC9D00EF3645";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr -k on ".blendParent1";
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "48FDE15D-405A-C374-8650-5FA41F0EF259";
	setAttr -k off ".v";
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
createNode parentConstraint -n "pCube2_parentConstraint1" -p "pCube3";
	rename -uid "0AD15A95-4462-820C-58AF-3A824B07832A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_Pend_MainW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tpm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.627776868131633 17.833032778276738 1;
	setAttr ".tg[0].tt" -type "double3" 0 -2.2247258608613514 -11.233517982030717 ;
	setAttr ".tg[0].trp" -type "double3" 0 5.2900401287238488 0 ;
	setAttr ".tg[0].tot" -type "double3" 0 0.50915429839350423 0.036655591022045186 ;
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".rst" -type "double3" 0 16.202245434387635 6.6361703872680664 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2EEC9682-4723-0524-4265-EA8C50B2CB5D";
	setAttr -s 23 ".lnk";
	setAttr -s 23 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0AF392EA-4358-C17A-0064-CE8A7A158F18";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "349FCC63-4C2B-EF75-F2D6-7E899B07D61E";
createNode displayLayerManager -n "layerManager";
	rename -uid "AF328222-409C-4F72-C273-41B37FD89C92";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
createNode displayLayer -n "defaultLayer";
	rename -uid "6B5B5AA6-454A-F12D-432C-6D8FA60AE780";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "748DB169-4B7A-CF02-E972-13B91AE4179E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BE95B465-4909-9AD2-F526-F59239F9EBAD";
	setAttr ".g" yes;
createNode phong -n "rem";
	rename -uid "66862EBF-4354-000F-7331-919A48307F89";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "boySG";
	rename -uid "B4FB0B0B-4956-4272-A72E-528D8E591EDB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E9F9F2AC-4A21-BFD0-5027-41B92C69C24C";
createNode phong -n "eyes";
	rename -uid "E86F7508-4797-B5FB-6540-3EB0648798C6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "boySG1";
	rename -uid "A1D9D0E6-47C8-0943-FCE6-0086B8DE8618";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "7F22981D-4C1F-75BE-7208-FD969F9C0E7B";
createNode phong -n "remFBXASC046001";
	rename -uid "FC5BB5F8-43F8-CAD5-9B50-51AB1A4C8AB8";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "boySG2";
	rename -uid "B8273364-4F56-8C99-27F4-429006457F88";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "6E3007E6-4468-C275-FD1D-489155C5A861";
createNode phong -n "outine";
	rename -uid "B2DE39A4-4D4D-B7F0-4F6C-8AA9133FD022";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "boySG3";
	rename -uid "57D0D868-4D03-F427-7B5E-2EBFFA709C30";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "DFAEB9D7-40C1-6D54-0D93-2E88BA722461";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "F06264F7-424C-D4A6-AABC-11A43613D560";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "570B8D24-4A27-80C5-5ED9-4F8C7008CD64";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "CCE0D9A2-40C0-3550-7DAE-B19362C9426D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "5EEB7292-4A99-A65B-EE34-F1967B957BF7";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode phong -n "hand1";
	rename -uid "86F9A81C-422E-3CEE-1681-0A91270BEBF2";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 32;
createNode shadingEngine -n "hand_2SG";
	rename -uid "0E41DA9B-41EB-9D94-999B-AEA4A1CF8063";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "5E27FB17-4F52-CC0A-1019-92AD7F65E536";
createNode file -n "hand_BaseColorFBXASC046png";
	rename -uid "BAC832A6-4C27-27D3-694F-6C877B10130A";
	setAttr ".ftn" -type "string" "D:\\間諜家家酒\\tex\\hand_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "429DDA72-434A-9266-ECFF-E4BC8C3C7FFE";
	setAttr ".of" -type "float2" 0 -1 ;
createNode phong -n "outline";
	rename -uid "92882DCA-4F6C-A8A1-D696-2983972949A5";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 32;
createNode shadingEngine -n "hand_1SG";
	rename -uid "A6D95E4A-4321-8230-10F3-FEB6CB23FBB9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "449B28C1-4350-F85C-29F5-46BBBFD1E720";
createNode phong -n "body1";
	rename -uid "601F3AE1-4F77-A028-84D6-D2A34E556D8B";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 32;
createNode shadingEngine -n "body_2SG";
	rename -uid "63335678-4D34-8A04-FE48-DFA7D4C331EB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "61121122-4DE7-A2C9-D2C1-529B5CD45D93";
createNode file -n "body_BaseColorFBXASC046png";
	rename -uid "5D2EA9ED-48BF-3850-8A39-1BAFA270889D";
	setAttr ".ftn" -type "string" "D:\\間諜家家酒\\tex\\body_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "B2DDAF33-42B4-B3EC-C05C-2183DD1C4CAF";
	setAttr ".of" -type "float2" 0 -1 ;
createNode phong -n "headobject1";
	rename -uid "3F05E471-493D-B72D-4D06-DB928CCEB091";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 32;
createNode shadingEngine -n "headobject_2SG";
	rename -uid "53DA25BA-440D-51E4-CED9-9BA53540ED2F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "7A3B96BF-428A-0857-7CCB-CFA4EC564465";
createNode file -n "headobject_BaseColorFBXASC046png";
	rename -uid "03E5A24B-44F4-FFCF-8D8D-799739F734D5";
	setAttr ".ftn" -type "string" "D:\\間諜家家酒\\tex\\headobject_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "E4D11CD0-4AA0-4385-EB28-B2814804DB2A";
	setAttr ".of" -type "float2" 0 -1 ;
createNode phong -n "Leg1";
	rename -uid "06340505-4E2C-C198-63AC-F7A452A08D05";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 32;
createNode shadingEngine -n "Leg_2SG";
	rename -uid "6EE99A55-4157-F4C4-C65D-578DCF265D59";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "0034036B-4487-5170-09F8-F681223B1256";
createNode file -n "Leg_BaseColorFBXASC046png";
	rename -uid "7EB8907B-4C67-2E6C-D65D-11BBAE849F8E";
	setAttr ".ftn" -type "string" "D:\\間諜家家酒\\tex\\Leg_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "5094D6E2-4F99-EE15-3653-619D2B1DEFAF";
	setAttr ".of" -type "float2" 0 -1 ;
createNode phong -n "hair1";
	rename -uid "CDDE951A-436B-BF8E-A3C8-B4B0E840383D";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 32;
createNode shadingEngine -n "hair_2SG";
	rename -uid "79591F84-4CFE-F751-E69E-D28E70CD5EED";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "E0970219-4407-82FE-A038-4E8D531E8747";
createNode file -n "hair_BaseColorFBXASC046png";
	rename -uid "CBDED668-4511-FF40-70B4-D18756A21FD7";
	setAttr ".ftn" -type "string" "D:\\間諜家家酒\\tex\\hair_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "5F00E547-46A7-D442-EA31-9E8FB2C9532E";
	setAttr ".of" -type "float2" 0 -1 ;
createNode phong -n "face1";
	rename -uid "B1F5E9BD-4532-1853-5C6D-3EB2EFC3A2C7";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 32;
createNode shadingEngine -n "face_2SG";
	rename -uid "5674856A-4B18-76E2-9818-08AB9FA6226D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "F3D44FBF-4568-BE4F-9A35-548DFD96EB7D";
createNode file -n "face_BaseColorFBXASC046png";
	rename -uid "71DAD125-4948-7A3A-D329-33A0F507BBC3";
	setAttr ".ftn" -type "string" "D:\\間諜家家酒\\tex\\face_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "D0E2A95C-43D9-BBFC-6446-5198F4A1A918";
	setAttr ".of" -type "float2" 0 -1 ;
createNode lambert -n "eye1";
	rename -uid "5410068F-44DD-7D20-E215-8DBA7550CEA9";
	setAttr ".dc" 1;
createNode shadingEngine -n "eyeSG";
	rename -uid "D5951680-483B-964F-C238-75B153A844AE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "8F710EBB-4963-689B-A117-4D9421DF16F9";
createNode file -n "eyeFBXASC046psd";
	rename -uid "D3154576-4380-BA34-917A-27A7B5CEE61C";
	setAttr ".ftn" -type "string" "D:\\間諜家家酒\\eye.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "F7F69726-4DC3-D4B9-E636-88BA21ABF179";
	setAttr ".of" -type "float2" 0 -1 ;
createNode lambert -n "lambert2";
	rename -uid "5D276BD3-4142-D2E6-2035-29ABAB5091AB";
createNode shadingEngine -n "lambert2SG";
	rename -uid "5ECA6094-4E8B-5644-E546-0EA7170EABD0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "9481F037-429E-CF9A-13E8-9AAAE1DC3F8B";
createNode file -n "file1";
	rename -uid "578E1928-462C-91C5-7F1B-709ACF84D2C4";
	setAttr ".ftn" -type "string" "C:/Users/PC 403/Desktop/GDM321/Week3//sourceimages/eye.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "EC978EFC-4B71-AB4F-86C8-E9B30CA4A510";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0B90A515-47E3-2A03-7C8E-1BBF86430E3D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 416\n            -height 247\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 416\n            -height 246\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 416\n            -height 246\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 839\n            -height 538\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 839\\n    -height 538\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 839\\n    -height 538\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CD8DA5BA-4BFC-5BCE-9853-99A4DC84FDBD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 130 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "611601FE-4938-150F-4B8A-7FAB2EA3EBB0";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "507EF415-4A3A-74E2-0FCA-09B310BC5014";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 4.9636943273255776 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5 0 4.9636941 ;
	setAttr ".rs" 65516;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.5 -0.5 4.4636943273255776 ;
	setAttr ".cbx" -type "double3" 0.5 0.5 5.4636943273255776 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "592A7A9F-40D0-6258-BD6C-2798770B74CE";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  -2.5 0 0 -0.5 0 0 -2.5 0 0
		 -0.5 0 0 -2.5 0 0 -0.5 0 0 -2.5 0 0 -0.5 0 0 2.5 0 0 2.5 0 0 2.5 0 0 2.5 0 0;
createNode polySplit -n "polySplit1";
	rename -uid "89E903DF-4136-F360-15C7-9E8082CEF413";
	setAttr -s 5 ".e[0:4]"  0.69999999 0.69999999 0.69999999 0.69999999
		 0.69999999;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483631 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "62F052DA-45A2-B030-1EE7-3984847B2CE0";
	setAttr -s 5 ".e[0:4]"  0.30000001 0.30000001 0.30000001 0.30000001
		 0.30000001;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "E269D23E-4911-7225-C236-62A9B96D31DA";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 4.9636943273255776 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.55 0.5 4.9636941 ;
	setAttr ".rs" 57898;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3 0.5 4.4636943273255776 ;
	setAttr ".cbx" -type "double3" -2.0999999046325684 0.5 5.4636943273255776 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "A349F2F2-4C74-657F-5C54-E6928B41DE4F";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 4.9636943273255776 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.55 0.5 4.9636941 ;
	setAttr ".rs" 49141;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0999999046325684 0.5 4.4636943273255776 ;
	setAttr ".cbx" -type "double3" 3 0.5 5.4636943273255776 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "FB52EBAD-4FC9-C688-5001-4FA84DF33E75";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[20]" -type "float3" 0 5.5 0 ;
	setAttr ".tk[21]" -type "float3" 0 5.5 0 ;
	setAttr ".tk[22]" -type "float3" 0 5.5 0 ;
	setAttr ".tk[23]" -type "float3" 0 5.5 0 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "F14F4779-41F5-1E84-EE1C-A19A5B92CDCB";
	setAttr ".ics" -type "componentList" 4 "e[5]" "e[7]" "e[9]" "e[11]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "21A6AC84-4876-8EF9-9967-439317523C88";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[24]" -type "float3" 0 5.5 0 ;
	setAttr ".tk[25]" -type "float3" 0 5.5 0 ;
	setAttr ".tk[26]" -type "float3" 0 5.5 0 ;
	setAttr ".tk[27]" -type "float3" 0 5.5 0 ;
createNode polyCube -n "polyCube2";
	rename -uid "7B85476D-4158-EDFE-BB60-93ABBA41FD6C";
	setAttr ".cuv" 4;
createNode reference -n "Ultimate_Pendulum_v1_0_0RN";
	rename -uid "CC6A7F46-44E3-7D4D-5843-CB99938B9B2C";
	setAttr -s 13 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ultimate_Pendulum_v1_0_0RN"
		"Ultimate_Pendulum_v1_0_0RN" 0
		"Ultimate_Pendulum_v1_0_0RN" 17
		2 "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:CTRL_Root" 
		"translate" " -type \"double3\" 0 12.62777686813163314 17.83303277827673838"
		2 "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:CTRL_Root" 
		"translateX" " -k 0 -cb 1"
		2 "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:CTRL_Root" 
		"translateY" " -k 0 -cb 1"
		2 "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:CTRL_Root" 
		"translateZ" " -k 0 -cb 1"
		5 3 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.translate" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[1]" ""
		5 4 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.translateY" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[2]" ""
		5 4 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.translateZ" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[3]" ""
		5 3 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.rotate" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[4]" ""
		5 4 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.rotateX" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[5]" ""
		5 3 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.scale" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[6]" ""
		5 3 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.rotatePivot" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[7]" ""
		5 3 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.rotatePivotTranslate" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[8]" ""
		5 3 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.rotateOrder" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[9]" ""
		5 3 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_Main.parentMatrix" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[10]" ""
		5 4 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_03_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_03.rotateX" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[11]" ""
		5 4 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_02_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_02.rotateX" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[12]" ""
		5 4 "Ultimate_Pendulum_v1_0_0RN" "|Ultimate_Pendulum_v1_0_0:AniM_pendulum_Main|Ultimate_Pendulum_v1_0_0:pendulum_Grp|Ultimate_Pendulum_v1_0_0:CNT_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Main_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_01_Grp|Ultimate_Pendulum_v1_0_0:CTRL_Pend_01.rotateX" 
		"Ultimate_Pendulum_v1_0_0RN.placeHolderList[13]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "8F6E84EA-4A01-0483-4B38-33A54AE60942";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "58548BC2-4472-6371-9B59-72AE685F282C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 21.121269193134907 6.7549317172835694 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 20.121269 6.7549314 ;
	setAttr ".rs" 58234;
	setAttr ".lt" -type "double3" 1.6653345369377348e-16 -0.65103125090292846 5.2180482157382357e-15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000002384185791 20.121269193134907 5.7549312404464112 ;
	setAttr ".cbx" -type "double3" 1 20.121269193134907 7.754931836492859 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "5E27CFDE-4597-960D-1F3F-31BA2E900944";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 21.121269193134907 6.7549317172835694 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 3.705769144237564e-22 -0.94925853246406788 0 ;
	setAttr ".pvt" -type "float3" 8.9406967e-08 18.71166 6.7549319 ;
	setAttr ".rs" 60364;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5453188419342041 19.660919156513813 6.2096126369307862 ;
	setAttr ".cbx" -type "double3" 0.54531902074813843 19.660921063862446 7.3002512744735109 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "15F9C8D6-4229-E474-CF9C-068F53C64867";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[142]" "e[144]" "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178:179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 21.121269193134907 6.7549317172835694 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.9406967e-08 18.71166 6.7549319 ;
	setAttr ".rs" 54342;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5453188419342041 18.711660352192524 6.2096126369307862 ;
	setAttr ".cbx" -type "double3" 0.54531902074813843 18.711662259541157 7.3002512744735109 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "BD4C0CFD-4E8A-11A9-C6D2-C7AA63622D8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[182]" "e[184]" "e[186]" "e[188]" "e[190]" "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218:219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 21.121269193134907 6.7549317172835694 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.2605868445232602 0 ;
	setAttr ".pvt" -type "float3" 8.9406967e-08 18.2682 6.7549319 ;
	setAttr ".rs" 34582;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.32348236441612244 18.528786149464253 6.4314492634604798 ;
	setAttr ".cbx" -type "double3" 0.32348254323005676 18.528787341557148 7.0784146479438173 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "1483E995-42FB-5742-D917-5F9C5479F652";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[1]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[2]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[5]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[6]" -type "float3" -7.4505806e-09 0 -1.4901161e-08 ;
	setAttr ".tk[7]" -type "float3" -1.4901161e-08 0 7.4505806e-09 ;
	setAttr ".tk[8]" -type "float3" 1.4901161e-08 0 -7.4505806e-09 ;
	setAttr ".tk[9]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[10]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[11]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[12]" -type "float3" 7.4505806e-09 0 1.4901161e-08 ;
	setAttr ".tk[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[15]" -type "float3" -3.7252903e-09 0 -1.4901161e-08 ;
	setAttr ".tk[16]" -type "float3" 7.4505806e-09 0 1.4901161e-08 ;
	setAttr ".tk[17]" -type "float3" 1.4901161e-08 0 7.4505806e-09 ;
	setAttr ".tk[18]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[19]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[82]" -type "float3" -0.21097928 -0.18287411 0.06855154 ;
	setAttr ".tk[83]" -type "float3" -0.17946972 -0.18287411 0.13039249 ;
	setAttr ".tk[84]" -type "float3" -0.13039249 -0.18287411 0.17946991 ;
	setAttr ".tk[85]" -type "float3" -0.068551421 -0.18287411 0.21097933 ;
	setAttr ".tk[86]" -type "float3" 3.6370878e-08 -0.18287411 0.22183664 ;
	setAttr ".tk[87]" -type "float3" 0.068551309 -0.18287411 0.21097933 ;
	setAttr ".tk[88]" -type "float3" 0.1303923 -0.18287411 0.17946972 ;
	setAttr ".tk[89]" -type "float3" 0.17946967 -0.18287411 0.13039233 ;
	setAttr ".tk[90]" -type "float3" 0.21097915 -0.18287411 0.068551347 ;
	setAttr ".tk[91]" -type "float3" 0.22183648 -0.18287411 9.6989005e-08 ;
	setAttr ".tk[92]" -type "float3" 0.21097915 -0.18287411 -0.068551145 ;
	setAttr ".tk[93]" -type "float3" 0.17946979 -0.18287411 -0.13039233 ;
	setAttr ".tk[94]" -type "float3" 0.13039252 -0.18287411 -0.17946972 ;
	setAttr ".tk[95]" -type "float3" 0.068551376 -0.18287411 -0.21097912 ;
	setAttr ".tk[96]" -type "float3" 3.3339973e-08 -0.18287411 -0.22183664 ;
	setAttr ".tk[97]" -type "float3" -0.06855116 -0.18287489 -0.21097873 ;
	setAttr ".tk[98]" -type "float3" -0.1303924 -0.18287489 -0.17946954 ;
	setAttr ".tk[99]" -type "float3" -0.17946957 -0.18287489 -0.13039233 ;
	setAttr ".tk[100]" -type "float3" -0.21097885 -0.18287489 -0.068551145 ;
	setAttr ".tk[101]" -type "float3" -0.22183648 -0.18287411 9.6989005e-08 ;
createNode polySplit -n "polySplit3";
	rename -uid "BFF2B316-4CEA-A64F-0945-159316DE58BA";
	setAttr -s 21 ".e[0:20]"  0.89999998 0.89999998 0.89999998 0.89999998
		 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998
		 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998 0.89999998
		 0.89999998;
	setAttr -s 21 ".d[0:20]"  -2147483608 -2147483589 -2147483590 -2147483591 -2147483592 -2147483593 
		-2147483594 -2147483595 -2147483596 -2147483597 -2147483598 -2147483599 -2147483600 -2147483601 -2147483602 -2147483603 -2147483604 -2147483605 
		-2147483606 -2147483607 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "B90A7918-4314-FA05-3FCA-16A095E3BFD1";
	setAttr -s 21 ".e[0:20]"  0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1
		 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1;
	setAttr -s 21 ".d[0:20]"  -2147483608 -2147483589 -2147483590 -2147483591 -2147483592 -2147483593 
		-2147483594 -2147483595 -2147483596 -2147483597 -2147483598 -2147483599 -2147483600 -2147483601 -2147483602 -2147483603 -2147483604 -2147483605 
		-2147483606 -2147483607 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode animCurveTL -n "CTRL_Pend_Main_translateY";
	rename -uid "95202DE3-48EB-9348-E71E-D1ACF51D29EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0.60244120161141979 18 -2.2247258608613514
		 23 -2.2247258608613514 25 -2.2247258608613514 28 -2.2247258608613514 30 -2.5008532116921707
		 32 -2.2247258608613514 34 -2.3055783866554078 47 -5.3585647015432407 50 -5.8719392085470616
		 53 -6.262320939929074 56 -5.471525417331228 59 -5.8719392085470616 69 -5.8719392085470616
		 76 -5.8719392085470616;
createNode animCurveTL -n "CTRL_Pend_Main_translateZ";
	rename -uid "7DDA0E7B-48FB-97E9-7768-519BDE55A62D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 3.8019244494023319 18 -11.233517982030717
		 23 -11.233517982030717 25 -11.233517982030717 28 -11.233517982030717 30 -11.233517982030717
		 32 -11.233517982030717 34 -11.994270578476954 47 -20.878056313988758 50 -22.509307946802707
		 53 -21.966309198455388 56 -22.652351486313432 59 -22.509307946802707 69 -22.509307946802707
		 76 -22.509307946802707;
createNode animCurveTA -n "CTRL_Pend_Main_rotateX";
	rename -uid "864532BA-4EE2-27CC-2D2B-509A1AEF5582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 -36.787696775077286 18 -12.28723214165672
		 23 12.761473316889738 25 0 28 0 30 0 32 0 34 -2.6768870576879209 47 0 50 -40.653980757086579
		 53 -40.653980757086579 56 -40.653980757086579 59 -40.653980757086579 69 6.9082985772553114
		 76 0;
createNode animCurveTL -n "pCube2_translateX";
	rename -uid "F424BEBF-4EDD-49C5-674E-B7B2E570D9E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 28 0 52 0 53 0 65 0 74 0 78 0 81 0 84 0
		 89 0 91 0;
createNode animCurveTL -n "pCube2_translateY";
	rename -uid "41059815-4A5C-7D4F-2DF0-84939393276C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 18.394969446058607 28 16.202245434387635
		 52 12.456032417240765 53 12.456032417240765 65 15.463323112386476 74 4.8032734281552507
		 78 2.2208472682492824 81 3.0007056541709352 84 2.2645126117988861 89 2.2645126117988861
		 91 2.152421780123253;
createNode animCurveTL -n "pCube2_translateZ";
	rename -uid "094FB586-4ED6-B9A1-B01E-F0872F7B5E4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 17.651629161594997 28 6.6361703872680664
		 52 -4.9801746787117009 53 -4.9801746787117009 65 -8.5652358361259573 74 -10.8316657087267
		 78 -9.6209124727850863 81 -7.3903272458973532 84 -7.9660110586370569 89 -9.4055910270376977
		 91 -9.4055910270376977;
createNode animCurveTU -n "pCube2_visibility";
	rename -uid "092F7AF9-4E2B-B73D-6283-70BB3376228C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 28 1 52 1 53 1 65 1 74 1 78 1 81 1 84 1
		 89 1 91 1;
	setAttr -s 11 ".kot[0:10]"  5 5 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTA -n "pCube2_rotateX";
	rename -uid "344A7DA1-4398-F777-0D11-7CB06D22136D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -24.933577066234619 28 0 52 -40.653980757086579
		 53 -40.653980757086579 65 -150.67328300697361 74 -333.5380071934452 78 -163.71946196432751
		 81 303.64750901347406 84 70.951806255386174 89 -195.87795970176475 91 -180;
createNode animCurveTA -n "pCube2_rotateY";
	rename -uid "5F43D010-49EE-3C6F-52AE-F8B3BA556193";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 28 0 52 0 53 0 65 0 74 0 78 0 81 0 84 0
		 89 0 91 0;
createNode animCurveTA -n "pCube2_rotateZ";
	rename -uid "F2D38A7A-4996-A136-4712-91AF3FF0512A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 28 0 52 0 53 0 65 0 74 0 78 0 81 0 84 0
		 89 0 91 0;
createNode animCurveTU -n "pCube2_scaleX";
	rename -uid "20C27A08-4CBB-4F07-D100-1681C907161C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.65322147118083385 28 0.65322147118083385
		 52 0.65322147118083385 53 0.65322147118083385 65 0.65322147118083385 74 0.65322147118083385
		 78 0.65322147118083385 81 0.65322147118083385 84 0.65322147118083385 89 0.65322147118083385
		 91 0.65322147118083385;
createNode animCurveTU -n "pCube2_scaleY";
	rename -uid "BEC5CDDE-4A22-D718-7B03-FE89BBB7B873";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.65322147118083385 28 0.65322147118083385
		 52 0.65322147118083385 53 0.65322147118083385 65 0.65322147118083385 74 0.65322147118083385
		 78 0.65322147118083385 81 0.65322147118083385 84 0.65322147118083385 89 0.65322147118083385
		 91 0.65322147118083385;
createNode animCurveTU -n "pCube2_scaleZ";
	rename -uid "00976D2D-4C27-0698-2B45-0B9EC8076206";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.65322147118083385 28 0.65322147118083385
		 52 0.65322147118083385 53 0.65322147118083385 65 0.65322147118083385 74 0.65322147118083385
		 78 0.65322147118083385 81 0.65322147118083385 84 0.65322147118083385 89 0.65322147118083385
		 91 0.65322147118083385;
createNode pairBlend -n "pairBlend1";
	rename -uid "5F4F5921-470D-B97C-1B5E-87AA77BD9F9E";
createNode animCurveTU -n "pCube2_blendParent1";
	rename -uid "FB2A7458-4B77-071A-A619-72A1269F3E7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 52 1 53 0 65 0 74 0 78 0 81 0 84 0 89 0
		 91 0;
createNode animCurveTL -n "pCube3_translateX";
	rename -uid "16CD1A2B-485B-5ABA-719D-7FA9AE30C677";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 21 0 28 0;
createNode animCurveTL -n "pCube3_translateY";
	rename -uid "815EA1F5-4570-2198-DFBE-AD9AF81BF4A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 18.336189543846558 21 17.297845487045741
		 28 16.194612457480925;
createNode animCurveTL -n "pCube3_translateZ";
	rename -uid "8505002A-45F0-4E46-22EA-9C810B433C6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.6361703872680664 21 6.6361703872680664
		 28 6.6361703872680664;
createNode animCurveTU -n "pCube3_visibility";
	rename -uid "ACF75984-4C32-03AC-9227-1A9910857BEF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 21 1 28 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "pCube3_rotateX";
	rename -uid "2D284A4F-4B1A-B7A8-90E1-B787CB108BA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 21 0 28 0;
createNode animCurveTA -n "pCube3_rotateY";
	rename -uid "1C02561F-4B1B-1A76-D270-5CBC4EED585A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 21 0 28 0;
createNode animCurveTA -n "pCube3_rotateZ";
	rename -uid "3C96887B-4E2F-70E0-CFD0-E99B0A6048F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 21 0 28 0;
createNode animCurveTU -n "pCube3_scaleX";
	rename -uid "6ACE74CB-4070-073B-8922-FEABAA8D6804";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.65322147118083385 21 0.65322147118083385
		 28 0.65322147118083385;
createNode animCurveTU -n "pCube3_scaleY";
	rename -uid "1F2EE3A2-40F4-76C1-F962-5E9B5994F9B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.65322147118083385 21 0.65322147118083385
		 28 0.65322147118083385;
createNode animCurveTU -n "pCube3_scaleZ";
	rename -uid "BE31BDEF-4E01-C288-89B9-62AE5F3889C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.65322147118083385 21 0.65322147118083385
		 28 0.65322147118083385;
createNode animCurveTU -n "pCube3_blendParent1";
	rename -uid "C27A4255-4C44-9789-FEA5-D5BB5F77BFAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 21 1 28 1;
createNode animCurveTA -n "CTRL_Pend_01_rotateX";
	rename -uid "824AFBA4-49ED-41FC-4DAB-6AB536A797F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -36.424462084355675 20 -22.858698010973622
		 24 9.7178219170990854 28 -5.3552923079230457 31 14.978682684467316 34 -6.2477539540753213
		 52 -7.8844179846271665 55 24.405929211426667 59 15.265784987028312 67 6.1263048521962506
		 70 0;
createNode animCurveTA -n "CTRL_Pend_02_rotateX";
	rename -uid "E787204B-4495-9C92-E27B-3D98DEFEAE78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  4 -36.424462084355675 23 -22.858698010973622
		 27 9.7178219170990854 31 -5.3552923079230457 34 14.978682684467316 37 -6.2477539540753213
		 55 -7.8844179846271665 58 24.405929211426667 62 15.265784987028312 70 6.1263048521962506
		 73 0;
createNode animCurveTA -n "CTRL_Pend_03_rotateX";
	rename -uid "F9671087-4007-1102-7042-858F2C77BD1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  8 -36.424462084355675 27 -22.858698010973622
		 31 9.7178219170990854 35 -5.3552923079230457 38 14.978682684467316 41 -6.2477539540753213
		 59 -7.8844179846271665 62 24.405929211426667 66 15.265784987028312 74 6.1263048521962506
		 77 0;
select -ne :time1;
	setAttr ".o" 122;
	setAttr ".unw" 122;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 19 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 22 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 9 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
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
connectAttr "Ultimate_Pendulum_v1_0_0RN.phl[1]" "|pCube2|pCube2_parentConstraint1.tg[0].tt"
		;
connectAttr "CTRL_Pend_Main_translateY.o" "Ultimate_Pendulum_v1_0_0RN.phl[2]";
connectAttr "CTRL_Pend_Main_translateZ.o" "Ultimate_Pendulum_v1_0_0RN.phl[3]";
connectAttr "Ultimate_Pendulum_v1_0_0RN.phl[4]" "|pCube2|pCube2_parentConstraint1.tg[0].tr"
		;
connectAttr "CTRL_Pend_Main_rotateX.o" "Ultimate_Pendulum_v1_0_0RN.phl[5]";
connectAttr "Ultimate_Pendulum_v1_0_0RN.phl[6]" "|pCube2|pCube2_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Pendulum_v1_0_0RN.phl[7]" "|pCube2|pCube2_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Pendulum_v1_0_0RN.phl[8]" "|pCube2|pCube2_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Pendulum_v1_0_0RN.phl[9]" "|pCube2|pCube2_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Pendulum_v1_0_0RN.phl[10]" "|pCube2|pCube2_parentConstraint1.tg[0].tpm"
		;
connectAttr "CTRL_Pend_03_rotateX.o" "Ultimate_Pendulum_v1_0_0RN.phl[11]";
connectAttr "CTRL_Pend_02_rotateX.o" "Ultimate_Pendulum_v1_0_0RN.phl[12]";
connectAttr "CTRL_Pend_01_rotateX.o" "Ultimate_Pendulum_v1_0_0RN.phl[13]";
connectAttr "polyDelEdge1.out" "pCubeShape1.i";
connectAttr "pairBlend1.otx" "pCube2.tx";
connectAttr "pairBlend1.oty" "pCube2.ty";
connectAttr "pairBlend1.otz" "pCube2.tz";
connectAttr "pCube2_visibility.o" "pCube2.v";
connectAttr "pairBlend1.orx" "pCube2.rx";
connectAttr "pairBlend1.ory" "pCube2.ry";
connectAttr "pairBlend1.orz" "pCube2.rz";
connectAttr "pCube2_scaleX.o" "pCube2.sx";
connectAttr "pCube2_scaleY.o" "pCube2.sy";
connectAttr "pCube2_scaleZ.o" "pCube2.sz";
connectAttr "pCube2_blendParent1.o" "pCube2.blendParent1";
connectAttr "polyCube2.out" "pCubeShape2.i";
connectAttr "pCube2.ro" "|pCube2|pCube2_parentConstraint1.cro";
connectAttr "pCube2.pim" "|pCube2|pCube2_parentConstraint1.cpim";
connectAttr "pCube2.rp" "|pCube2|pCube2_parentConstraint1.crp";
connectAttr "pCube2.rpt" "|pCube2|pCube2_parentConstraint1.crt";
connectAttr "|pCube2|pCube2_parentConstraint1.w0" "|pCube2|pCube2_parentConstraint1.tg[0].tw"
		;
connectAttr "polySplit4.out" "pCylinderShape1.i";
connectAttr "pCube3_translateX.o" "pCube3.tx";
connectAttr "pCube3_translateY.o" "pCube3.ty";
connectAttr "pCube3_translateZ.o" "pCube3.tz";
connectAttr "pCube3_visibility.o" "pCube3.v";
connectAttr "pCube3_rotateX.o" "pCube3.rx";
connectAttr "pCube3_rotateY.o" "pCube3.ry";
connectAttr "pCube3_rotateZ.o" "pCube3.rz";
connectAttr "pCube3_scaleX.o" "pCube3.sx";
connectAttr "pCube3_scaleY.o" "pCube3.sy";
connectAttr "pCube3_scaleZ.o" "pCube3.sz";
connectAttr "pCube3_blendParent1.o" "pCube3.blendParent1";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "boySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "boySG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "boySG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "boySG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hand_2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hand_1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "body_2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "headobject_2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Leg_2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hair_2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "face_2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "eyeSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "boySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "boySG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "boySG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "boySG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hand_2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hand_1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "body_2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "headobject_2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Leg_2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hair_2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "face_2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "eyeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "rem.oc" "boySG.ss";
connectAttr "boySG.msg" "materialInfo1.sg";
connectAttr "rem.msg" "materialInfo1.m";
connectAttr "eyes.oc" "boySG1.ss";
connectAttr "boySG1.msg" "materialInfo2.sg";
connectAttr "eyes.msg" "materialInfo2.m";
connectAttr "remFBXASC046001.oc" "boySG2.ss";
connectAttr "boySG2.msg" "materialInfo3.sg";
connectAttr "remFBXASC046001.msg" "materialInfo3.m";
connectAttr "outine.oc" "boySG3.ss";
connectAttr "boySG3.msg" "materialInfo4.sg";
connectAttr "outine.msg" "materialInfo4.m";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "hand_BaseColorFBXASC046png.oc" "hand1.c";
connectAttr "hand1.oc" "hand_2SG.ss";
connectAttr "hand_2SG.msg" "materialInfo5.sg";
connectAttr "hand1.msg" "materialInfo5.m";
connectAttr "hand_BaseColorFBXASC046png.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture1.o" "hand_BaseColorFBXASC046png.uv";
connectAttr "place2dTexture1.ofu" "hand_BaseColorFBXASC046png.ofu";
connectAttr "place2dTexture1.ofv" "hand_BaseColorFBXASC046png.ofv";
connectAttr "place2dTexture1.rf" "hand_BaseColorFBXASC046png.rf";
connectAttr "place2dTexture1.reu" "hand_BaseColorFBXASC046png.reu";
connectAttr "place2dTexture1.rev" "hand_BaseColorFBXASC046png.rev";
connectAttr "place2dTexture1.vt1" "hand_BaseColorFBXASC046png.vt1";
connectAttr "place2dTexture1.vt2" "hand_BaseColorFBXASC046png.vt2";
connectAttr "place2dTexture1.vt3" "hand_BaseColorFBXASC046png.vt3";
connectAttr "place2dTexture1.vc1" "hand_BaseColorFBXASC046png.vc1";
connectAttr "place2dTexture1.ofs" "hand_BaseColorFBXASC046png.fs";
connectAttr ":defaultColorMgtGlobals.cme" "hand_BaseColorFBXASC046png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "hand_BaseColorFBXASC046png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "hand_BaseColorFBXASC046png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "hand_BaseColorFBXASC046png.ws";
connectAttr "outline.oc" "hand_1SG.ss";
connectAttr "hand_1SG.msg" "materialInfo6.sg";
connectAttr "outline.msg" "materialInfo6.m";
connectAttr "body_BaseColorFBXASC046png.oc" "body1.c";
connectAttr "body1.oc" "body_2SG.ss";
connectAttr "body_2SG.msg" "materialInfo7.sg";
connectAttr "body1.msg" "materialInfo7.m";
connectAttr "body_BaseColorFBXASC046png.msg" "materialInfo7.t" -na;
connectAttr "place2dTexture2.o" "body_BaseColorFBXASC046png.uv";
connectAttr "place2dTexture2.ofu" "body_BaseColorFBXASC046png.ofu";
connectAttr "place2dTexture2.ofv" "body_BaseColorFBXASC046png.ofv";
connectAttr "place2dTexture2.rf" "body_BaseColorFBXASC046png.rf";
connectAttr "place2dTexture2.reu" "body_BaseColorFBXASC046png.reu";
connectAttr "place2dTexture2.rev" "body_BaseColorFBXASC046png.rev";
connectAttr "place2dTexture2.vt1" "body_BaseColorFBXASC046png.vt1";
connectAttr "place2dTexture2.vt2" "body_BaseColorFBXASC046png.vt2";
connectAttr "place2dTexture2.vt3" "body_BaseColorFBXASC046png.vt3";
connectAttr "place2dTexture2.vc1" "body_BaseColorFBXASC046png.vc1";
connectAttr "place2dTexture2.ofs" "body_BaseColorFBXASC046png.fs";
connectAttr ":defaultColorMgtGlobals.cme" "body_BaseColorFBXASC046png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "body_BaseColorFBXASC046png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "body_BaseColorFBXASC046png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "body_BaseColorFBXASC046png.ws";
connectAttr "headobject_BaseColorFBXASC046png.oc" "headobject1.c";
connectAttr "headobject1.oc" "headobject_2SG.ss";
connectAttr "headobject_2SG.msg" "materialInfo8.sg";
connectAttr "headobject1.msg" "materialInfo8.m";
connectAttr "headobject_BaseColorFBXASC046png.msg" "materialInfo8.t" -na;
connectAttr "place2dTexture3.o" "headobject_BaseColorFBXASC046png.uv";
connectAttr "place2dTexture3.ofu" "headobject_BaseColorFBXASC046png.ofu";
connectAttr "place2dTexture3.ofv" "headobject_BaseColorFBXASC046png.ofv";
connectAttr "place2dTexture3.rf" "headobject_BaseColorFBXASC046png.rf";
connectAttr "place2dTexture3.reu" "headobject_BaseColorFBXASC046png.reu";
connectAttr "place2dTexture3.rev" "headobject_BaseColorFBXASC046png.rev";
connectAttr "place2dTexture3.vt1" "headobject_BaseColorFBXASC046png.vt1";
connectAttr "place2dTexture3.vt2" "headobject_BaseColorFBXASC046png.vt2";
connectAttr "place2dTexture3.vt3" "headobject_BaseColorFBXASC046png.vt3";
connectAttr "place2dTexture3.vc1" "headobject_BaseColorFBXASC046png.vc1";
connectAttr "place2dTexture3.ofs" "headobject_BaseColorFBXASC046png.fs";
connectAttr ":defaultColorMgtGlobals.cme" "headobject_BaseColorFBXASC046png.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "headobject_BaseColorFBXASC046png.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "headobject_BaseColorFBXASC046png.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "headobject_BaseColorFBXASC046png.ws";
connectAttr "Leg_BaseColorFBXASC046png.oc" "Leg1.c";
connectAttr "Leg1.oc" "Leg_2SG.ss";
connectAttr "Leg_2SG.msg" "materialInfo9.sg";
connectAttr "Leg1.msg" "materialInfo9.m";
connectAttr "Leg_BaseColorFBXASC046png.msg" "materialInfo9.t" -na;
connectAttr "place2dTexture4.o" "Leg_BaseColorFBXASC046png.uv";
connectAttr "place2dTexture4.ofu" "Leg_BaseColorFBXASC046png.ofu";
connectAttr "place2dTexture4.ofv" "Leg_BaseColorFBXASC046png.ofv";
connectAttr "place2dTexture4.rf" "Leg_BaseColorFBXASC046png.rf";
connectAttr "place2dTexture4.reu" "Leg_BaseColorFBXASC046png.reu";
connectAttr "place2dTexture4.rev" "Leg_BaseColorFBXASC046png.rev";
connectAttr "place2dTexture4.vt1" "Leg_BaseColorFBXASC046png.vt1";
connectAttr "place2dTexture4.vt2" "Leg_BaseColorFBXASC046png.vt2";
connectAttr "place2dTexture4.vt3" "Leg_BaseColorFBXASC046png.vt3";
connectAttr "place2dTexture4.vc1" "Leg_BaseColorFBXASC046png.vc1";
connectAttr "place2dTexture4.ofs" "Leg_BaseColorFBXASC046png.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Leg_BaseColorFBXASC046png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Leg_BaseColorFBXASC046png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Leg_BaseColorFBXASC046png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Leg_BaseColorFBXASC046png.ws";
connectAttr "hair_BaseColorFBXASC046png.oc" "hair1.c";
connectAttr "hair1.oc" "hair_2SG.ss";
connectAttr "hair_2SG.msg" "materialInfo10.sg";
connectAttr "hair1.msg" "materialInfo10.m";
connectAttr "hair_BaseColorFBXASC046png.msg" "materialInfo10.t" -na;
connectAttr "place2dTexture5.o" "hair_BaseColorFBXASC046png.uv";
connectAttr "place2dTexture5.ofu" "hair_BaseColorFBXASC046png.ofu";
connectAttr "place2dTexture5.ofv" "hair_BaseColorFBXASC046png.ofv";
connectAttr "place2dTexture5.rf" "hair_BaseColorFBXASC046png.rf";
connectAttr "place2dTexture5.reu" "hair_BaseColorFBXASC046png.reu";
connectAttr "place2dTexture5.rev" "hair_BaseColorFBXASC046png.rev";
connectAttr "place2dTexture5.vt1" "hair_BaseColorFBXASC046png.vt1";
connectAttr "place2dTexture5.vt2" "hair_BaseColorFBXASC046png.vt2";
connectAttr "place2dTexture5.vt3" "hair_BaseColorFBXASC046png.vt3";
connectAttr "place2dTexture5.vc1" "hair_BaseColorFBXASC046png.vc1";
connectAttr "place2dTexture5.ofs" "hair_BaseColorFBXASC046png.fs";
connectAttr ":defaultColorMgtGlobals.cme" "hair_BaseColorFBXASC046png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "hair_BaseColorFBXASC046png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "hair_BaseColorFBXASC046png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "hair_BaseColorFBXASC046png.ws";
connectAttr "face_BaseColorFBXASC046png.oc" "face1.c";
connectAttr "face1.oc" "face_2SG.ss";
connectAttr "face_2SG.msg" "materialInfo11.sg";
connectAttr "face1.msg" "materialInfo11.m";
connectAttr "face_BaseColorFBXASC046png.msg" "materialInfo11.t" -na;
connectAttr "place2dTexture6.o" "face_BaseColorFBXASC046png.uv";
connectAttr "place2dTexture6.ofu" "face_BaseColorFBXASC046png.ofu";
connectAttr "place2dTexture6.ofv" "face_BaseColorFBXASC046png.ofv";
connectAttr "place2dTexture6.rf" "face_BaseColorFBXASC046png.rf";
connectAttr "place2dTexture6.reu" "face_BaseColorFBXASC046png.reu";
connectAttr "place2dTexture6.rev" "face_BaseColorFBXASC046png.rev";
connectAttr "place2dTexture6.vt1" "face_BaseColorFBXASC046png.vt1";
connectAttr "place2dTexture6.vt2" "face_BaseColorFBXASC046png.vt2";
connectAttr "place2dTexture6.vt3" "face_BaseColorFBXASC046png.vt3";
connectAttr "place2dTexture6.vc1" "face_BaseColorFBXASC046png.vc1";
connectAttr "place2dTexture6.ofs" "face_BaseColorFBXASC046png.fs";
connectAttr ":defaultColorMgtGlobals.cme" "face_BaseColorFBXASC046png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "face_BaseColorFBXASC046png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "face_BaseColorFBXASC046png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "face_BaseColorFBXASC046png.ws";
connectAttr "eyeFBXASC046psd.oc" "eye1.c";
connectAttr "eye1.oc" "eyeSG.ss";
connectAttr "eyeSG.msg" "materialInfo12.sg";
connectAttr "eye1.msg" "materialInfo12.m";
connectAttr "eyeFBXASC046psd.msg" "materialInfo12.t" -na;
connectAttr "place2dTexture7.o" "eyeFBXASC046psd.uv";
connectAttr "place2dTexture7.ofu" "eyeFBXASC046psd.ofu";
connectAttr "place2dTexture7.ofv" "eyeFBXASC046psd.ofv";
connectAttr "place2dTexture7.rf" "eyeFBXASC046psd.rf";
connectAttr "place2dTexture7.reu" "eyeFBXASC046psd.reu";
connectAttr "place2dTexture7.rev" "eyeFBXASC046psd.rev";
connectAttr "place2dTexture7.vt1" "eyeFBXASC046psd.vt1";
connectAttr "place2dTexture7.vt2" "eyeFBXASC046psd.vt2";
connectAttr "place2dTexture7.vt3" "eyeFBXASC046psd.vt3";
connectAttr "place2dTexture7.vc1" "eyeFBXASC046psd.vc1";
connectAttr "place2dTexture7.ofs" "eyeFBXASC046psd.fs";
connectAttr ":defaultColorMgtGlobals.cme" "eyeFBXASC046psd.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "eyeFBXASC046psd.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "eyeFBXASC046psd.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "eyeFBXASC046psd.ws";
connectAttr "file1.oc" "lambert2.c";
connectAttr "file1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo13.sg";
connectAttr "lambert2.msg" "materialInfo13.m";
connectAttr "file1.msg" "materialInfo13.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture8.c" "file1.c";
connectAttr "place2dTexture8.tf" "file1.tf";
connectAttr "place2dTexture8.rf" "file1.rf";
connectAttr "place2dTexture8.mu" "file1.mu";
connectAttr "place2dTexture8.mv" "file1.mv";
connectAttr "place2dTexture8.s" "file1.s";
connectAttr "place2dTexture8.wu" "file1.wu";
connectAttr "place2dTexture8.wv" "file1.wv";
connectAttr "place2dTexture8.re" "file1.re";
connectAttr "place2dTexture8.of" "file1.of";
connectAttr "place2dTexture8.r" "file1.ro";
connectAttr "place2dTexture8.n" "file1.n";
connectAttr "place2dTexture8.vt1" "file1.vt1";
connectAttr "place2dTexture8.vt2" "file1.vt2";
connectAttr "place2dTexture8.vt3" "file1.vt3";
connectAttr "place2dTexture8.vc1" "file1.vc1";
connectAttr "place2dTexture8.o" "file1.uv";
connectAttr "place2dTexture8.ofs" "file1.fs";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyDelEdge1.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyCylinder1.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyTweak4.out" "polyExtrudeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak4.ip";
connectAttr "polyExtrudeEdge4.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "pCube2_translateX.o" "pairBlend1.itx1";
connectAttr "pCube2_translateY.o" "pairBlend1.ity1";
connectAttr "pCube2_translateZ.o" "pairBlend1.itz1";
connectAttr "pCube2_rotateX.o" "pairBlend1.irx1";
connectAttr "pCube2_rotateY.o" "pairBlend1.iry1";
connectAttr "pCube2_rotateZ.o" "pairBlend1.irz1";
connectAttr "pCube2.blendParent1" "pairBlend1.w";
connectAttr "pCube2.ro" "pairBlend1.ro";
connectAttr "|pCube2|pCube2_parentConstraint1.ctx" "pairBlend1.itx2";
connectAttr "|pCube2|pCube2_parentConstraint1.cty" "pairBlend1.ity2";
connectAttr "|pCube2|pCube2_parentConstraint1.ctz" "pairBlend1.itz2";
connectAttr "|pCube2|pCube2_parentConstraint1.crx" "pairBlend1.irx2";
connectAttr "|pCube2|pCube2_parentConstraint1.cry" "pairBlend1.iry2";
connectAttr "|pCube2|pCube2_parentConstraint1.crz" "pairBlend1.irz2";
connectAttr "boySG.pa" ":renderPartition.st" -na;
connectAttr "boySG1.pa" ":renderPartition.st" -na;
connectAttr "boySG2.pa" ":renderPartition.st" -na;
connectAttr "boySG3.pa" ":renderPartition.st" -na;
connectAttr "hand_2SG.pa" ":renderPartition.st" -na;
connectAttr "hand_1SG.pa" ":renderPartition.st" -na;
connectAttr "body_2SG.pa" ":renderPartition.st" -na;
connectAttr "headobject_2SG.pa" ":renderPartition.st" -na;
connectAttr "Leg_2SG.pa" ":renderPartition.st" -na;
connectAttr "hair_2SG.pa" ":renderPartition.st" -na;
connectAttr "face_2SG.pa" ":renderPartition.st" -na;
connectAttr "eyeSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "rem.msg" ":defaultShaderList1.s" -na;
connectAttr "eyes.msg" ":defaultShaderList1.s" -na;
connectAttr "remFBXASC046001.msg" ":defaultShaderList1.s" -na;
connectAttr "outine.msg" ":defaultShaderList1.s" -na;
connectAttr "hand1.msg" ":defaultShaderList1.s" -na;
connectAttr "outline.msg" ":defaultShaderList1.s" -na;
connectAttr "body1.msg" ":defaultShaderList1.s" -na;
connectAttr "headobject1.msg" ":defaultShaderList1.s" -na;
connectAttr "Leg1.msg" ":defaultShaderList1.s" -na;
connectAttr "hair1.msg" ":defaultShaderList1.s" -na;
connectAttr "face1.msg" ":defaultShaderList1.s" -na;
connectAttr "eye1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "hand_BaseColorFBXASC046png.msg" ":defaultTextureList1.tx" -na;
connectAttr "body_BaseColorFBXASC046png.msg" ":defaultTextureList1.tx" -na;
connectAttr "headobject_BaseColorFBXASC046png.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "Leg_BaseColorFBXASC046png.msg" ":defaultTextureList1.tx" -na;
connectAttr "hair_BaseColorFBXASC046png.msg" ":defaultTextureList1.tx" -na;
connectAttr "face_BaseColorFBXASC046png.msg" ":defaultTextureList1.tx" -na;
connectAttr "eyeFBXASC046psd.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
// End of Anya.ma
