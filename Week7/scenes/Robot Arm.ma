//Maya ASCII 2024 scene
//Name: Robot Arm.ma
//Last modified: Sat, Oct 07, 2023 12:16:03 PM
//Codeset: 1252
file -rdi 1 -ns "Robot_arm" -rfn "Robot_armRN" -op "v=0;" -typ "mayaAscii" "C:/Users/PC 403/Desktop/GDM321/robot-arm_for Rig/Robot_arm.ma";
file -r -ns "Robot_arm" -dr 1 -rfn "Robot_armRN" -op "v=0;" -typ "mayaAscii" "C:/Users/PC 403/Desktop/GDM321/robot-arm_for Rig/Robot_arm.ma";
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
fileInfo "UUID" "7CA081E4-48DA-2BB0-7113-C4B2C7B0B777";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "960D4302-4E5B-E20E-E68C-2AA4498A3A65";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -72.063012653096649 31.087107132402 -11.027017399040695 ;
	setAttr ".r" -type "double3" -17.738352729566536 -462.59999999991811 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "11AB5AA3-4767-CEFC-3ACC-22A9F054A64B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 78.646865277788706;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 7.6324561168068605 -0.39979872637453839 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DC884DB4-419A-2058-145F-16A57A020B1C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "19EDD471-4169-9EDA-063D-F5AFD6395CB3";
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
	rename -uid "E58AD2D3-4447-457C-78D9-1DBC7C753C4D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0300E834-40BB-582E-DA02-BCB77D37A9BD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "14CB0241-4281-FD03-7A27-3EB3C7F5FA31";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1005272260577 9.6806683752277909 -2.1867359537481952 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E1595235-4663-A6D3-69D5-6CB9239D24F8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.49796946172569;
	setAttr ".ow" 12.600231573172836;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0.60255776433196928 6.5481678874465814 -0.62354057441288724 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Arm";
	rename -uid "9920EAF7-4038-902B-8DFF-1FB49DA66B54";
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.18369563040732348 0.18369563040732348 0.18369563040732348 ;
	setAttr ".rp" -type "double3" 0.60255807638168335 0 0.12303754687309265 ;
	setAttr ".sp" -type "double3" 0.60255807638168335 0 0.12303754687309265 ;
createNode joint -n "Root_JNT";
	rename -uid "6471BAE8-477F-3913-EDBE-BA8E84030B06";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.60255807638168335 0 0.12303754687309265 1;
	setAttr ".radi" 0.8364398522431693;
createNode joint -n "ArmRotation01_JNT" -p "Root_JNT";
	rename -uid "0A373A23-409F-386E-A85E-BCAA2B5FA99E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zyx";
	setAttr ".jo" -type "double3" 150.05748574417629 -0.20992730413126254 179.99999999999963 ;
	setAttr ".pa" -type "double3" 1.3470173028717525e-36 2.4848083448933725e-17 6.2120208622334312e-18 ;
	setAttr ".bps" -type "matrix" -0.99999328784292763 7.2277253626573683e-15 0.0036639144493142558 0
		 0.001828772739892566 0.86652662556595117 0.4991275015219574 0 -0.0031748794241230052 0.49913085176663419 -0.86652080930313313 0
		 -0.57860369709976012 6.5591297149655157 3.0413527488708496 1;
	setAttr ".radi" 0.95518108641393962;
createNode joint -n "ArmRotation02_JNT" -p "ArmRotation01_JNT";
	rename -uid "8810156B-452D-E448-A8C3-9580A588FD92";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -89.752433726079914 -29.94328398337672 88.833267598656917 ;
	setAttr ".pa" -type "double3" -9.5416640443905503e-15 -3.180554681463516e-15 6.3611093629270335e-15 ;
	setAttr ".bps" -type "matrix" -0.01764426394221276 0.99984432711847304 -3.8457061214747235e-05 0
		 -0.0021795734860218375 -2.2204460492503131e-16 0.9999976247268888 0 0.99984195221512728 0.017644305852258117 0.0021792341855367955 0
		 -0.60971595649407717 11.45036697387668 -5.4501256942748704 1;
	setAttr ".radi" 0.64689147558330051;
createNode joint -n "ArmRoration03_JNT" -p "ArmRotation02_JNT";
	rename -uid "5A8068FE-431C-2065-FDD5-8F9A686CDE96";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 77.595237211961589 -88.9640114568694 -167.21440842891258 ;
	setAttr ".pa" -type "double3" 6.3611093629270304e-15 -1.2722218725854064e-14 6.3611093629270304e-15 ;
	setAttr ".bps" -type "matrix" 0.9999983406456957 1.2044109045757784e-05 -0.0018216917398875387 0
		 2.4286128663675299e-17 0.99997814477175895 0.0066113522695126796 0 0.0018217315542464379 -0.0066113412989371005 0.99997648545372009 0
		 1.6241948010332909 11.489789009094489 -5.4452567100524565 1;
	setAttr ".radi" 0.81587453920006614;
	setAttr ".liw" yes;
createNode joint -n "HandRotation_JNT" -p "ArmRoration03_JNT";
	rename -uid "99CAF349-4BA5-55DC-E2F1-36ADCF37DFFF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".pa" -type "double3" 9.9392475977608878e-17 1.2423283421138953e-17 -4.8531412986198669e-20 ;
	setAttr ".bps" -type "matrix" 0.9999983406456957 1.2044109045757784e-05 -0.0018216917398875387 0
		 2.4286128663675299e-17 0.99997814477175895 0.0066113522695126796 0 0.0018217315542464379 -0.0066113412989371005 0.99997648545372009 0
		 1.6360428333275647 11.446790695190488 1.0583105502025392 1;
	setAttr ".radi" 0.3;
createNode joint -n "FInger01_JNT" -p "HandRotation_JNT";
	rename -uid "DE8176B1-469C-4A13-5774-80A8341C5557";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".pa" -type "double3" 9.9392475977608878e-17 1.2423283421138953e-17 -4.8531412986198669e-20 ;
	setAttr ".bps" -type "matrix" 0.9999983406456957 1.2044109045757784e-05 -0.0018216917398875387 0
		 2.4286128663675299e-17 0.99997814477175895 0.0066113522695126796 0 0.0018217315542464379 -0.0066113412989371005 0.99997648545372009 0
		 1.6314139199719147 11.905415534973191 1.4987912178040157 1;
	setAttr ".radi" 0.2;
createNode parentConstraint -n "FInger01_JNT_parentConstraint1" -p "FInger01_JNT";
	rename -uid "CEE8DC82-485D-0C83-8631-DB93A3E16D42";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FingerRotation02_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.6643074696176541e-08 3.730349362740526e-14 
		6.3726801613483985e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0.37880597010205613 0.10437530599875389 0.0006900777613589121 ;
	setAttr ".lr" -type "double3" -2.2263864097025167e-14 6.3611781789540415e-15 -4.0766386908408128e-17 ;
	setAttr ".rst" -type "double3" -0.0054258019408108815 0.46152698929357072 0.43742975191693645 ;
	setAttr ".rsrr" -type "double3" 9.9392475977608878e-17 1.2423472996970931e-17 -4.8531412986198669e-20 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "FInger01_JNT_scaleConstraint1" -p "FInger01_JNT";
	rename -uid "73028D0D-4906-AFF0-B549-ED842B1E27C9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FingerRotation02_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode joint -n "Finger02_JNT" -p "HandRotation_JNT";
	rename -uid "50AD77EA-4757-6111-276D-21BF67F0B920";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".pa" -type "double3" 9.9392475977608878e-17 1.2423283421138953e-17 -4.8531412986198669e-20 ;
	setAttr ".bps" -type "matrix" 0.9999983406456957 1.2044109045757784e-05 -0.0018216917398875387 0
		 2.4286128663675299e-17 0.99997814477175895 0.0066113522695126796 0 0.0018217315542464379 -0.0066113412989371005 0.99997648545372009 0
		 1.6314139199719278 10.97365093231206 1.4987912178039815 1;
	setAttr ".radi" 0.2;
createNode parentConstraint -n "Finger02_JNT_parentConstraint1" -p "Finger02_JNT";
	rename -uid "20A64473-46AE-C0D2-1A8C-F7A62162E8D1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FingerRotation01_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.6643061817589455e-08 3.907985046680551e-14 
		2.9309887850104133e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0.37880597010205613 0.10437530599875389 0.0006900777613589121 ;
	setAttr ".lr" -type "double3" -2.2263864097025167e-14 6.3611781789540415e-15 -4.0766386908408128e-17 ;
	setAttr ".rst" -type "double3" -0.0054370242152776971 -0.47021724943950183 0.44358996571536291 ;
	setAttr ".rsrr" -type "double3" 9.9392475977608878e-17 1.2423472996970931e-17 -4.8531412986198669e-20 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Finger02_JNT_scaleConstraint1" -p "Finger02_JNT";
	rename -uid "41498055-4D1F-4AD8-EBCE-39AE44CDAD47";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FingerRotation01_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "HandRotation_JNT_parentConstraint1" -p "HandRotation_JNT";
	rename -uid "E69373E9-437B-DE66-133D-E1BA9723E2F2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "HandRotation04_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -6.8167693711984612e-13 5.5067062021407764e-14 
		4.1474513823303027e-08 ;
	setAttr ".tg[0].tor" -type "double3" 0.37880597010205613 0.10437530599875389 0.0006900777613589121 ;
	setAttr ".lr" -type "double3" -2.2263864097025167e-14 6.3611781789540415e-15 -4.0766386908408128e-17 ;
	setAttr ".rst" -type "double3" -6.6613381477509392e-16 -2.6645352591003757e-14 6.503720192284451 ;
	setAttr ".rsrr" -type "double3" 9.9392475977608878e-17 1.2423472996970931e-17 -4.8531412986198669e-20 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "HandRotation_JNT_scaleConstraint1" -p "HandRotation_JNT";
	rename -uid "E2C73E66-4B72-5DD5-1CDC-DAA83E81CD0D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "HandRotation04_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "ArmRoration03_JNT_parentConstraint1" -p "ArmRoration03_JNT";
	rename -uid "1443E542-45C7-8BDE-350E-76A5544F271C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmRotation03_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.942508263245827e-08 0.039422035217533846 
		0.0048689842224476365 ;
	setAttr ".tg[0].tor" -type "double3" 0.37880597010203154 0.1043753059987591 0.00069007776139880239 ;
	setAttr ".lr" -type "double3" -44.999913082081633 -0.030571421298245791 -0.073806089805583494 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 2.6645352591003757e-15 2.2342638779841053 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "ArmRoration03_JNT_scaleConstraint1" -p "ArmRoration03_JNT";
	rename -uid "E869970F-47A2-E27A-F2B2-068CDBA5BF90";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmRotation03_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "ArmRotation02_JNT_parentConstraint1" -p "ArmRotation02_JNT";
	rename -uid "29945A9A-49C9-9AFF-F990-0FADCEDE3F12";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmRotation02_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7925961715015148e-08 -2.7355895326763857e-13 
		3.1974423109204508e-14 ;
	setAttr ".tg[0].tor" -type "double3" 89.875138979676876 0.0022034273006275723 91.010994319012823 ;
	setAttr ".lr" -type "double3" 0.67830411805029489 0.38435785024566588 -44.991321494571281 ;
	setAttr ".rst" -type "double3" 9.5923269327613525e-14 2.6645352591003757e-15 9.79950896963995 ;
	setAttr ".rsrr" -type "double3" 0 1.5902773407317584e-14 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "ArmRotation02_JNT_scaleConstraint1" -p "ArmRotation02_JNT";
	rename -uid "B6EC4145-42BC-5859-9E95-B78EAF823A36";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmRotation02_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "ArmRotation01_JNT_parentConstraint1" -p "ArmRotation01_JNT";
	rename -uid "6AF0867D-45B2-E1FE-6756-D2AFF04BF2AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmRotation01_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.219756884385248e-08 -0.043628692627258658 
		-0.099872827529907227 ;
	setAttr ".tg[0].tor" -type "double3" 150.05748574417629 -0.20992730413126257 179.99999999999963 ;
	setAttr ".lr" -type "double3" -89.983471328026937 -0.077074395033058463 -0.28665972500223885 ;
	setAttr ".rst" -type "double3" -1.1811617734814435 6.5591297149655157 2.918315201997757 ;
	setAttr ".rsrr" -type "double3" 1.1786401400127834e-36 2.1742073017817009e-17 6.2120208622334312e-18 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "ArmRotation01_JNT_scaleConstraint1" -p "ArmRotation01_JNT";
	rename -uid "2B26BD89-4AFB-5BCB-08A9-7A9AC3D1CCD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmRotation01_CTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Root_JNT_parentConstraint1" -p "Root_JNT";
	rename -uid "071F9855-40DC-7F4F-6DED-189CD3A1C6B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Main_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.60255807638168335 0 0.12303754687309265 ;
	setAttr ".rst" -type "double3" 0.60255807638168335 0 0.12303754687309265 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Root_JNT_scaleConstraint1" -p "Root_JNT";
	rename -uid "8E06E9CD-456F-1159-5AE0-A8A09433724D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Main_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Main_CTRL_GRP";
	rename -uid "21A065B0-458B-4507-0307-CBBC36DF2086";
createNode transform -n "Main_CTRL" -p "Main_CTRL_GRP";
	rename -uid "C723D645-41CC-CF30-7EEE-1F926143192F";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".ry";
	setAttr ".rp" -type "double3" -0.57860368490219116 0 0 ;
	setAttr ".sp" -type "double3" -0.57860368490219116 0 0 ;
createNode nurbsCurve -n "Main_CTRLShape" -p "Main_CTRL";
	rename -uid "0B95D913-4A8C-41FA-0EF0-B8B6E101C017";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.3826938636097106 3.2959494054298656e-16 -5.3826938636097141
		4.6611763500544551e-16 4.6611763500544551e-16 -7.6122786640192839
		-5.3826938636097106 3.2959494054298651e-16 -5.3826938636097106
		-7.6122786640192839 1.6884770502448637e-31 -2.3494194375031049e-15
		-5.3826938636097106 -3.2959494054298656e-16 5.382693863609707
		-7.6252716005057753e-16 -4.661176350054457e-16 7.6122786640192883
		5.3826938636097106 -3.2959494054298642e-16 5.3826938636097088
		7.6122786640192839 8.1119787205707179e-32 -9.1671381364716682e-16
		5.3826938636097106 3.2959494054298656e-16 -5.3826938636097141
		4.6611763500544551e-16 4.6611763500544551e-16 -7.6122786640192839
		-5.3826938636097106 3.2959494054298651e-16 -5.3826938636097106
		;
createNode transform -n "ArmRotation01_CTRL_GRP" -p "Main_CTRL";
	rename -uid "BCC33487-4198-333D-2433-ABB47562B15F";
createNode transform -n "ArmRotation01_CTRL" -p "ArmRotation01_CTRL_GRP";
	rename -uid "66970751-4FBC-35C0-6E33-B3BEA3B86917";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 8.8817841970012523e-16 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.984048715617604 -6.0349782676597791e-15 1.0479679194587798e-14 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.57860368490219116 6.6027584075927734 3.1412255764007568 ;
	setAttr ".sp" -type "double3" -0.57860368490219116 6.6027584075927734 3.1412255764007568 ;
	setAttr ".mxrl" -type "double3" 207 45 45 ;
	setAttr ".mrxe" yes;
	setAttr ".xrxe" yes;
createNode nurbsCurve -n "ArmRotation01_CTRLShape" -p "ArmRotation01_CTRL";
	rename -uid "B5CE35E9-4B16-B575-01D1-26A118890EED";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.57860368490219127 8.6970322155200268 1.0469517684735046
		-0.57860368490219127 6.6027584075927734 0.17947515390729368
		-0.57860368490219127 4.508484599665521 1.0469517684735059
		-0.57860368490219116 3.6410079850993089 3.1412255764007568
		-0.57860368490219094 4.508484599665521 5.2354993843280075
		-0.57860368490219094 6.6027584075927717 6.1029759988942249
		-0.57860368490219094 8.6970322155200268 5.2354993843280093
		-0.57860368490219116 9.5645088300862362 3.1412255764007577
		-0.57860368490219127 8.6970322155200268 1.0469517684735046
		-0.57860368490219127 6.6027584075927734 0.17947515390729368
		-0.57860368490219127 4.508484599665521 1.0469517684735059
		;
createNode transform -n "ArmRotation02_CTRL_GRP" -p "ArmRotation01_CTRL";
	rename -uid "9B6065D5-409B-E7CF-9304-5C97619B578C";
createNode transform -n "ArmRotation02_CTRL" -p "ArmRotation02_CTRL_GRP";
	rename -uid "EC01F1FE-4A67-53B4-421A-3E9631FD6DC5";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.60971593856811523 11.450366973876951 -5.4501256942749023 ;
	setAttr ".sp" -type "double3" -0.60971593856811523 11.450366973876951 -5.4501256942749023 ;
	setAttr ".mxrl" -type "double3" 207 45 45 ;
	setAttr ".mrxe" yes;
	setAttr ".xrxe" yes;
createNode nurbsCurve -n "ArmRotation02_CTRLShape" -p "ArmRotation02_CTRL";
	rename -uid "BDD9FBC6-4282-9793-16B2-DAABD1141184";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.60971593856811535 13.544640781804206 -7.5443995022021548
		-0.60971593856811535 11.450366973876953 -8.4118761167683651
		-0.60971593856811535 9.3560931659497015 -7.5443995022021531
		-0.60971593856811523 8.4886165513834886 -5.4501256942749023
		-0.60971593856811501 9.3560931659497015 -3.3558518863476516
		-0.60971593856811501 11.450366973876951 -2.4883752717814343
		-0.60971593856811501 13.544640781804206 -3.3558518863476499
		-0.60971593856811523 14.412117396370416 -5.4501256942749015
		-0.60971593856811535 13.544640781804206 -7.5443995022021548
		-0.60971593856811535 11.450366973876953 -8.4118761167683651
		-0.60971593856811535 9.3560931659497015 -7.5443995022021531
		;
createNode transform -n "ArmRotation03_CTRL_GRP" -p "ArmRotation02_CTRL";
	rename -uid "C119703F-4850-A973-0331-3DBC920799F1";
createNode transform -n "ArmRotation03_CTRL" -p "ArmRotation03_CTRL_GRP";
	rename -uid "32E0CF6B-4EEB-2A95-418F-41B90FAB8416";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 1.624194860458374 11.450366973876951 -5.4501256942749023 ;
	setAttr ".sp" -type "double3" 1.624194860458374 11.450366973876951 -5.4501256942749023 ;
	setAttr ".mxrl" -type "double3" 207 45 45 ;
	setAttr ".mrxe" yes;
	setAttr ".xrxe" yes;
createNode nurbsCurve -n "ArmRotation03_CTRLShape" -p "ArmRotation03_CTRL";
	rename -uid "5A07AB45-47CB-1034-1F5C-48A8A04E7909";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.624194860458374 13.544640781804206 -7.5443995022021548
		1.624194860458374 11.450366973876953 -8.4118761167683651
		1.624194860458374 9.3560931659497015 -7.5443995022021531
		1.624194860458374 8.4886165513834886 -5.4501256942749023
		1.6241948604583742 9.3560931659497015 -3.3558518863476516
		1.6241948604583742 11.450366973876951 -2.4883752717814343
		1.6241948604583742 13.544640781804206 -3.3558518863476499
		1.624194860458374 14.412117396370416 -5.4501256942749015
		1.624194860458374 13.544640781804206 -7.5443995022021548
		1.624194860458374 11.450366973876953 -8.4118761167683651
		1.624194860458374 9.3560931659497015 -7.5443995022021531
		;
createNode transform -n "HandRotation04_CTRL_GRP1" -p "ArmRotation03_CTRL";
	rename -uid "5FB6017B-4949-8528-C5C5-95879AA06E94";
createNode transform -n "HandRotation04_CTRL" -p "HandRotation04_CTRL_GRP1";
	rename -uid "95B63042-4F98-2CB6-7D88-FB8B52B005C0";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 1.6360428333282471 11.44679069519043 1.0583105087280278 ;
	setAttr ".sp" -type "double3" 1.6360428333282471 11.44679069519043 1.0583105087280278 ;
createNode nurbsCurve -n "HandRotation04_CTRLShape" -p "HandRotation04_CTRL";
	rename -uid "20DC3969-4FFC-04B4-C40A-758804CD7D17";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.075780150386504264 13.007053378132172 1.0583105087280273
		-0.5705018137525959 11.44679069519043 1.0583105087280273
		0.07578015038650518 9.8865280122486876 1.0583105087280273
		1.6360428333282477 9.2402460481095829 1.0583105087280273
		3.1963055162699883 9.8865280122486876 1.0583105087280271
		3.8425874804090938 11.446790695190428 1.0583105087280271
		3.1963055162699892 13.007053378132172 1.0583105087280271
		1.6360428333282482 13.653335342271275 1.0583105087280273
		0.075780150386504264 13.007053378132172 1.0583105087280273
		-0.5705018137525959 11.44679069519043 1.0583105087280273
		0.07578015038650518 9.8865280122486876 1.0583105087280273
		;
createNode transform -n "FingerRotation02_CTRL_GRP" -p "HandRotation04_CTRL";
	rename -uid "C8A72F93-4330-9D12-6427-29A55583D603";
createNode transform -n "FingerRotation02_CTRL" -p "FingerRotation02_CTRL_GRP";
	rename -uid "A5AFB0D8-4611-D1B4-CCCE-D395B876E539";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 1.6314139366149902 11.905415534973143 1.4987912178039537 ;
	setAttr ".sp" -type "double3" 1.6314139366149902 11.905415534973143 1.4987912178039537 ;
	setAttr ".mxrl" -type "double3" 0 45 45 ;
	setAttr ".mrxe" yes;
	setAttr ".xrxe" yes;
createNode nurbsCurve -n "FingerRotation02_CTRLShape" -p "FingerRotation02_CTRL";
	rename -uid "34AF98B4-4C44-6763-55F5-9F9CBB90E4AB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6314139366149902 12.689027159864368 0.71517959291273048
		1.6314139366149902 11.905415534973145 0.39059703024956738
		1.6314139366149902 11.121803910081921 0.7151795929127307
		1.6314139366149902 10.797221347418755 1.4987912178039551
		1.6314139366149902 11.121803910081921 2.2824028426951797
		1.6314139366149902 11.905415534973145 2.6069854053583432
		1.6314139366149902 12.689027159864368 2.2824028426951797
		1.6314139366149902 13.013609722527534 1.4987912178039553
		1.6314139366149902 12.689027159864368 0.71517959291273048
		1.6314139366149902 11.905415534973145 0.39059703024956738
		1.6314139366149902 11.121803910081921 0.7151795929127307
		;
createNode transform -n "FingerRotation01_CTRL_GRP" -p "HandRotation04_CTRL";
	rename -uid "1C404085-472B-7173-D539-649CB7F18E02";
createNode transform -n "FingerRotation01_CTRL" -p "FingerRotation01_CTRL_GRP";
	rename -uid "60CF2F75-4725-B75E-E487-A5A43FDEB7DC";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 1.6314139366149902 10.973650932312012 1.4987912178039564 ;
	setAttr ".sp" -type "double3" 1.6314139366149902 10.973650932312012 1.4987912178039564 ;
	setAttr ".mxrl" -type "double3" 0 45 45 ;
	setAttr ".mrxe" yes;
	setAttr ".xrxe" yes;
createNode nurbsCurve -n "FingerRotation01_CTRLShape" -p "FingerRotation01_CTRL";
	rename -uid "41DBAAFC-4113-A184-EB68-85833E788A41";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6314139366149902 11.757262557203235 0.71517959291273048
		1.6314139366149902 10.973650932312012 0.39059703024956738
		1.6314139366149902 10.190039307420788 0.7151795929127307
		1.6314139366149902 9.8654567447576227 1.4987912178039551
		1.6314139366149902 10.190039307420788 2.2824028426951797
		1.6314139366149902 10.973650932312012 2.6069854053583432
		1.6314139366149902 11.757262557203235 2.2824028426951797
		1.6314139366149902 12.081845119866401 1.4987912178039553
		1.6314139366149902 11.757262557203235 0.71517959291273048
		1.6314139366149902 10.973650932312012 0.39059703024956738
		1.6314139366149902 10.190039307420788 0.7151795929127307
		;
createNode fosterParent -n "Robot_armRNfosterParent1";
	rename -uid "3F4C2FD5-4AA7-A93A-96A5-35B1E30EFF81";
createNode mesh -n "BaseShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "FFCE57F4-4999-10D6-73F7-9C9B17D51336";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "RobotArm_01ShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "44454FAB-48DA-EEAC-42C4-F78D7FD23CE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "RobotArm_02ShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "55313940-4F94-8D4D-9F22-228A21004C59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "ForehandShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "327D3933-431F-1394-ADDA-1ABEAF5CBC5F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "wireShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "6ED80340-4CEF-018E-16E2-D08D18175D89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "LaserShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "94B5D64A-4820-9DFD-CA4D-9A975A4BD28E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Pinch01ShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "23533BDA-4965-6C07-CC51-8C84842D7146";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "Pinch02ShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "7865FBF6-48D7-8AED-9ACC-CF9AF4CE751C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "HandRotaterShapeDeformed" -p "Robot_armRNfosterParent1";
	rename -uid "D5029075-4771-0DC1-AA33-639513F1804B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3D58D4D5-4F79-8CA4-5761-2FB7716BCB38";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B7C78474-4109-78FC-43C5-428F3FC4FF5B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3D96CDB7-46D4-3342-72C7-F2BA4DCB7F1D";
createNode displayLayerManager -n "layerManager";
	rename -uid "7E67B247-43D8-658A-AC0E-948B633263AC";
createNode displayLayer -n "defaultLayer";
	rename -uid "AC53A669-41F1-1AB6-860E-B48E9CA9A5E3";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7F564DCC-40CF-7CB4-4D8A-61B97B5A8DF6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8ECB9EB2-4C82-84A6-7E95-15BA947199C9";
	setAttr ".g" yes;
createNode reference -n "Robot_armRN";
	rename -uid "EFB95100-4523-CCE0-0892-628E4D71607B";
	setAttr ".fn[0]" -type "string" "C:/Users/PC 403/Desktop/GDM321/robot-arm_for Rig/Robot_arm.ma";
	setAttr -s 27 ".phl";
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
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Robot_armRN"
		"Robot_armRN" 0
		"Robot_armRN" 181
		0 "|Robot_arm:HandRotater" "|Arm" "-s -r "
		0 "|Robot_arm:Pinch02" "|Arm" "-s -r "
		0 "|Robot_arm:Pinch01" "|Arm" "-s -r "
		0 "|Robot_arm:Laser" "|Arm" "-s -r "
		0 "|Robot_arm:wire" "|Arm" "-s -r "
		0 "|Robot_arm:Forehand" "|Arm" "-s -r "
		0 "|Robot_arm:RobotArm_02" "|Arm" "-s -r "
		0 "|Robot_arm:RobotArm_01" "|Arm" "-s -r "
		0 "|Robot_arm:Base" "|Arm" "-s -r "
		0 "|Robot_armRNfosterParent1|HandRotaterShapeDeformed" "|Arm|Robot_arm:HandRotater" 
		"-s -r "
		0 "|Robot_armRNfosterParent1|Pinch02ShapeDeformed" "|Arm|Robot_arm:Pinch02" 
		"-s -r "
		0 "|Robot_armRNfosterParent1|Pinch01ShapeDeformed" "|Arm|Robot_arm:Pinch01" 
		"-s -r "
		0 "|Robot_armRNfosterParent1|LaserShapeDeformed" "|Arm|Robot_arm:Laser" "-s -r "
		
		0 "|Robot_armRNfosterParent1|wireShapeDeformed" "|Arm|Robot_arm:wire" "-s -r "
		
		0 "|Robot_armRNfosterParent1|ForehandShapeDeformed" "|Arm|Robot_arm:Forehand" 
		"-s -r "
		0 "|Robot_armRNfosterParent1|RobotArm_02ShapeDeformed" "|Arm|Robot_arm:RobotArm_02" 
		"-s -r "
		0 "|Robot_armRNfosterParent1|RobotArm_01ShapeDeformed" "|Arm|Robot_arm:RobotArm_01" 
		"-s -r "
		0 "|Robot_armRNfosterParent1|BaseShapeDeformed" "|Arm|Robot_arm:Base" "-s -r "
		
		2 "|Arm|Robot_arm:Base" "rotatePivot" " -type \"double3\" 0.60255765914916992 -8.44053077697753906 0.12303935736417815"
		
		2 "|Arm|Robot_arm:Base" "scalePivot" " -type \"double3\" 0.60255765914916992 -8.44053077697753906 0.12303935736417815"
		
		2 "|Arm|Robot_arm:Base|Robot_arm:BaseShape" "intermediateObject" " 1"
		2 "|Arm|Robot_arm:Base|Robot_arm:BaseShape" "dispResolution" " 1"
		2 "|Arm|Robot_arm:Base|Robot_arm:BaseShape" "displaySmoothMesh" " 0"
		2 "|Arm|Robot_arm:Base|Robot_arm:BaseShape" "vertexColorSource" " 2"
		2 "|Arm|Robot_arm:RobotArm_01" "rotatePivot" " -type \"double3\" 16.49415731430054777 35.89649772644042969 0.51952206343412488"
		
		2 "|Arm|Robot_arm:RobotArm_01" "scalePivot" " -type \"double3\" 16.49415731430054777 35.89649772644042969 0.51952206343412488"
		
		2 "|Arm|Robot_arm:RobotArm_01|Robot_arm:RobotArm_01Shape" "intermediateObject" 
		" 1"
		2 "|Arm|Robot_arm:RobotArm_01|Robot_arm:RobotArm_01Shape" "uvSet[0].uvSetName" 
		" -type \"string\" \"UVChannel_1\""
		2 "|Arm|Robot_arm:RobotArm_01|Robot_arm:RobotArm_01Shape" "dispResolution" 
		" 1"
		2 "|Arm|Robot_arm:RobotArm_01|Robot_arm:RobotArm_01Shape" "displaySmoothMesh" 
		" 0"
		2 "|Arm|Robot_arm:RobotArm_01|Robot_arm:RobotArm_01Shape" "vertexColorSource" 
		" 2"
		2 "|Arm|Robot_arm:RobotArm_02" "rotatePivot" " -type \"double3\" -29.71005165848384877 62.54798580489025994 -10.20194240325334789"
		
		2 "|Arm|Robot_arm:RobotArm_02" "scalePivot" " -type \"double3\" -29.71005165848384877 62.54798580489025994 -10.20194240325334789"
		
		2 "|Arm|Robot_arm:RobotArm_02|Robot_arm:RobotArm_02Shape" "intermediateObject" 
		" 1"
		2 "|Arm|Robot_arm:RobotArm_02|Robot_arm:RobotArm_02Shape" "dispResolution" 
		" 1"
		2 "|Arm|Robot_arm:RobotArm_02|Robot_arm:RobotArm_02Shape" "displaySmoothMesh" 
		" 0"
		2 "|Arm|Robot_arm:RobotArm_02|Robot_arm:RobotArm_02Shape" "vertexColorSource" 
		" 2"
		2 "|Arm|Robot_arm:Forehand" "rotatePivot" " -type \"double3\" 2.42657957051119455 62.31389638541707399 -5.38271089599882302"
		
		2 "|Arm|Robot_arm:Forehand" "scalePivot" " -type \"double3\" 2.42657957051119455 62.31389638541707399 -5.38271089599882302"
		
		2 "|Arm|Robot_arm:Forehand|Robot_arm:ForehandShape" "intermediateObject" 
		" 1"
		2 "|Arm|Robot_arm:Forehand|Robot_arm:ForehandShape" "dispResolution" " 1"
		
		2 "|Arm|Robot_arm:Forehand|Robot_arm:ForehandShape" "displaySmoothMesh" " 0"
		
		2 "|Arm|Robot_arm:Forehand|Robot_arm:ForehandShape" "vertexColorSource" " 2"
		
		2 "|Arm|Robot_arm:wire" "rotatePivot" " -type \"double3\" -0.036646842956542969 28.10852622985840199 13.47571574896574553"
		
		2 "|Arm|Robot_arm:wire" "scalePivot" " -type \"double3\" -0.036646842956542969 28.10852622985840199 13.47571574896574553"
		
		2 "|Arm|Robot_arm:wire|Robot_arm:wireShape" "intermediateObject" " 1"
		2 "|Arm|Robot_arm:wire|Robot_arm:wireShape" "dispResolution" " 1"
		2 "|Arm|Robot_arm:wire|Robot_arm:wireShape" "displaySmoothMesh" " 0"
		2 "|Arm|Robot_arm:wire|Robot_arm:wireShape" "vertexColorSource" " 2"
		2 "|Arm|Robot_arm:Laser" "rotatePivot" " -type \"double3\" 11.16707795294747108 62.36497841145064314 1.20102975884426089"
		
		2 "|Arm|Robot_arm:Laser" "scalePivot" " -type \"double3\" 11.16707795294747108 62.36497841145064314 1.20102975884426089"
		
		2 "|Arm|Robot_arm:Laser|Robot_arm:LaserShape" "intermediateObject" " 1"
		2 "|Arm|Robot_arm:Laser|Robot_arm:LaserShape" "dispResolution" " 3"
		2 "|Arm|Robot_arm:Laser|Robot_arm:LaserShape" "displaySmoothMesh" " 2"
		2 "|Arm|Robot_arm:Laser|Robot_arm:LaserShape" "vertexColorSource" " 2"
		2 "|Arm|Robot_arm:Pinch01" "rotatePivot" " -type \"double3\" 8.09186935424804688 64.81055450439453125 -5.46365444411618917"
		
		2 "|Arm|Robot_arm:Pinch01" "scalePivot" " -type \"double3\" 8.09186935424804688 64.81055450439453125 -5.46365444411618917"
		
		2 "|Arm|Robot_arm:Pinch01|Robot_arm:Pinch01Shape" "intermediateObject" " 1"
		
		2 "|Arm|Robot_arm:Pinch01|Robot_arm:Pinch01Shape" "dispResolution" " 1"
		2 "|Arm|Robot_arm:Pinch01|Robot_arm:Pinch01Shape" "displaySmoothMesh" " 0"
		
		2 "|Arm|Robot_arm:Pinch01|Robot_arm:Pinch01Shape" "vertexColorSource" " 2"
		
		2 "|Arm|Robot_arm:Pinch02" "rotatePivot" " -type \"double3\" 8.09186935424804688 59.73822784423828125 -5.46365444411619983"
		
		2 "|Arm|Robot_arm:Pinch02" "scalePivot" " -type \"double3\" 8.09186935424804688 59.73822784423828125 -5.46365444411619983"
		
		2 "|Arm|Robot_arm:Pinch02|Robot_arm:Pinch02Shape" "intermediateObject" " 1"
		
		2 "|Arm|Robot_arm:Pinch02|Robot_arm:Pinch02Shape" "dispResolution" " 1"
		2 "|Arm|Robot_arm:Pinch02|Robot_arm:Pinch02Shape" "displaySmoothMesh" " 0"
		
		2 "|Arm|Robot_arm:Pinch02|Robot_arm:Pinch02Shape" "vertexColorSource" " 2"
		
		2 "|Arm|Robot_arm:HandRotater" "rotatePivot" " -type \"double3\" 6.72890217029170046 62.31389606872044595 -5.50303363800048828"
		
		2 "|Arm|Robot_arm:HandRotater" "scalePivot" " -type \"double3\" 6.72890217029170046 62.31389606872044595 -5.50303363800048828"
		
		2 "|Arm|Robot_arm:HandRotater|Robot_arm:HandRotaterShape" "intermediateObject" 
		" 1"
		2 "|Arm|Robot_arm:HandRotater|Robot_arm:HandRotaterShape" "dispResolution" 
		" 1"
		2 "|Arm|Robot_arm:HandRotater|Robot_arm:HandRotaterShape" "displaySmoothMesh" 
		" 0"
		2 "|Arm|Robot_arm:HandRotater|Robot_arm:HandRotaterShape" "vertexColorSource" 
		" 2"
		5 3 "Robot_armRN" "|Arm|Robot_arm:HandRotater|Robot_arm:HandRotaterShape.outMesh" 
		"Robot_armRN.placeHolderList[1]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:HandRotater|Robot_arm:HandRotaterShape.worldMesh" 
		"Robot_armRN.placeHolderList[2]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Pinch02|Robot_arm:Pinch02Shape.outMesh" 
		"Robot_armRN.placeHolderList[3]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Pinch02|Robot_arm:Pinch02Shape.worldMesh" 
		"Robot_armRN.placeHolderList[4]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Pinch01|Robot_arm:Pinch01Shape.outMesh" 
		"Robot_armRN.placeHolderList[5]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Pinch01|Robot_arm:Pinch01Shape.worldMesh" 
		"Robot_armRN.placeHolderList[6]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Laser|Robot_arm:LaserShape.outMesh" 
		"Robot_armRN.placeHolderList[7]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Laser|Robot_arm:LaserShape.worldMesh" 
		"Robot_armRN.placeHolderList[8]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:wire|Robot_arm:wireShape.outMesh" 
		"Robot_armRN.placeHolderList[9]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:wire|Robot_arm:wireShape.worldMesh" 
		"Robot_armRN.placeHolderList[10]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Forehand|Robot_arm:ForehandShape.outMesh" 
		"Robot_armRN.placeHolderList[11]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Forehand|Robot_arm:ForehandShape.worldMesh" 
		"Robot_armRN.placeHolderList[12]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:RobotArm_02|Robot_arm:RobotArm_02Shape.outMesh" 
		"Robot_armRN.placeHolderList[13]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:RobotArm_02|Robot_arm:RobotArm_02Shape.worldMesh" 
		"Robot_armRN.placeHolderList[14]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:RobotArm_01|Robot_arm:RobotArm_01Shape.outMesh" 
		"Robot_armRN.placeHolderList[15]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:RobotArm_01|Robot_arm:RobotArm_01Shape.worldMesh" 
		"Robot_armRN.placeHolderList[16]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Base|Robot_arm:BaseShape.outMesh" 
		"Robot_armRN.placeHolderList[17]" ""
		5 3 "Robot_armRN" "|Arm|Robot_arm:Base|Robot_arm:BaseShape.worldMesh" 
		"Robot_armRN.placeHolderList[18]" ""
		5 4 "Robot_armRN" "Robot_arm:ChamferCyl001SG.dagSetMembers" "Robot_armRN.placeHolderList[19]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Cylinder006SG.dagSetMembers" "Robot_armRN.placeHolderList[20]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Cylinder010SG.dagSetMembers" "Robot_armRN.placeHolderList[21]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Cylinder010SG.dagSetMembers" "Robot_armRN.placeHolderList[22]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Rectangle001SG.dagSetMembers" "Robot_armRN.placeHolderList[23]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Line004SG.dagSetMembers" "Robot_armRN.placeHolderList[24]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Line004SG.dagSetMembers" "Robot_armRN.placeHolderList[25]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Box001SG.dagSetMembers" "Robot_armRN.placeHolderList[26]" 
		""
		5 4 "Robot_armRN" "Robot_arm:Line003SG.dagSetMembers" "Robot_armRN.placeHolderList[27]" 
		""
		8 "|Arm|Robot_arm:Base" "translateX"
		8 "|Arm|Robot_arm:Base" "translateY"
		8 "|Arm|Robot_arm:Base" "translateZ"
		8 "|Arm|Robot_arm:Base" "rotateX"
		8 "|Arm|Robot_arm:Base" "rotateY"
		8 "|Arm|Robot_arm:Base" "rotateZ"
		8 "|Arm|Robot_arm:Base" "scaleX"
		8 "|Arm|Robot_arm:Base" "scaleY"
		8 "|Arm|Robot_arm:Base" "scaleZ"
		8 "|Arm|Robot_arm:RobotArm_01" "translateX"
		8 "|Arm|Robot_arm:RobotArm_01" "translateY"
		8 "|Arm|Robot_arm:RobotArm_01" "translateZ"
		8 "|Arm|Robot_arm:RobotArm_01" "rotateX"
		8 "|Arm|Robot_arm:RobotArm_01" "rotateY"
		8 "|Arm|Robot_arm:RobotArm_01" "rotateZ"
		8 "|Arm|Robot_arm:RobotArm_01" "scaleX"
		8 "|Arm|Robot_arm:RobotArm_01" "scaleY"
		8 "|Arm|Robot_arm:RobotArm_01" "scaleZ"
		8 "|Arm|Robot_arm:RobotArm_02" "translateX"
		8 "|Arm|Robot_arm:RobotArm_02" "translateY"
		8 "|Arm|Robot_arm:RobotArm_02" "translateZ"
		8 "|Arm|Robot_arm:RobotArm_02" "rotateX"
		8 "|Arm|Robot_arm:RobotArm_02" "rotateY"
		8 "|Arm|Robot_arm:RobotArm_02" "rotateZ"
		8 "|Arm|Robot_arm:RobotArm_02" "scaleX"
		8 "|Arm|Robot_arm:RobotArm_02" "scaleY"
		8 "|Arm|Robot_arm:RobotArm_02" "scaleZ"
		8 "|Arm|Robot_arm:Forehand" "translateX"
		8 "|Arm|Robot_arm:Forehand" "translateY"
		8 "|Arm|Robot_arm:Forehand" "translateZ"
		8 "|Arm|Robot_arm:Forehand" "rotateX"
		8 "|Arm|Robot_arm:Forehand" "rotateY"
		8 "|Arm|Robot_arm:Forehand" "rotateZ"
		8 "|Arm|Robot_arm:Forehand" "scaleX"
		8 "|Arm|Robot_arm:Forehand" "scaleY"
		8 "|Arm|Robot_arm:Forehand" "scaleZ"
		8 "|Arm|Robot_arm:wire" "translateX"
		8 "|Arm|Robot_arm:wire" "translateY"
		8 "|Arm|Robot_arm:wire" "translateZ"
		8 "|Arm|Robot_arm:wire" "rotateX"
		8 "|Arm|Robot_arm:wire" "rotateY"
		8 "|Arm|Robot_arm:wire" "rotateZ"
		8 "|Arm|Robot_arm:wire" "scaleX"
		8 "|Arm|Robot_arm:wire" "scaleY"
		8 "|Arm|Robot_arm:wire" "scaleZ"
		8 "|Arm|Robot_arm:Laser" "translateX"
		8 "|Arm|Robot_arm:Laser" "translateY"
		8 "|Arm|Robot_arm:Laser" "translateZ"
		8 "|Arm|Robot_arm:Laser" "rotateX"
		8 "|Arm|Robot_arm:Laser" "rotateY"
		8 "|Arm|Robot_arm:Laser" "rotateZ"
		8 "|Arm|Robot_arm:Laser" "scaleX"
		8 "|Arm|Robot_arm:Laser" "scaleY"
		8 "|Arm|Robot_arm:Laser" "scaleZ"
		8 "|Arm|Robot_arm:Pinch01" "translateX"
		8 "|Arm|Robot_arm:Pinch01" "translateY"
		8 "|Arm|Robot_arm:Pinch01" "translateZ"
		8 "|Arm|Robot_arm:Pinch01" "rotateX"
		8 "|Arm|Robot_arm:Pinch01" "rotateY"
		8 "|Arm|Robot_arm:Pinch01" "rotateZ"
		8 "|Arm|Robot_arm:Pinch01" "scaleX"
		8 "|Arm|Robot_arm:Pinch01" "scaleY"
		8 "|Arm|Robot_arm:Pinch01" "scaleZ"
		8 "|Arm|Robot_arm:Pinch02" "translateX"
		8 "|Arm|Robot_arm:Pinch02" "translateY"
		8 "|Arm|Robot_arm:Pinch02" "translateZ"
		8 "|Arm|Robot_arm:Pinch02" "rotateX"
		8 "|Arm|Robot_arm:Pinch02" "rotateY"
		8 "|Arm|Robot_arm:Pinch02" "rotateZ"
		8 "|Arm|Robot_arm:Pinch02" "scaleX"
		8 "|Arm|Robot_arm:Pinch02" "scaleY"
		8 "|Arm|Robot_arm:Pinch02" "scaleZ"
		8 "|Arm|Robot_arm:HandRotater" "translateX"
		8 "|Arm|Robot_arm:HandRotater" "translateY"
		8 "|Arm|Robot_arm:HandRotater" "translateZ"
		8 "|Arm|Robot_arm:HandRotater" "rotateX"
		8 "|Arm|Robot_arm:HandRotater" "rotateY"
		8 "|Arm|Robot_arm:HandRotater" "rotateZ"
		8 "|Arm|Robot_arm:HandRotater" "scaleX"
		8 "|Arm|Robot_arm:HandRotater" "scaleY"
		8 "|Arm|Robot_arm:HandRotater" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "85112A28-4344-C8BB-7592-77A6E9FB534F";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C9213F87-4068-36C0-DE6B-2CB8DF37305C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "8F9B8F96-47A4-C5D8-6E60-9C850A3922AE";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "0ED6DD1F-4D17-7EED-E248-F3B1E3B05CB1";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "sharedReferenceNode";
	rename -uid "F2196BEE-46B2-B03D-DE9D-D4B5A1E26F66";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DF1C71F5-4280-93D1-C7E3-3CBEA1138CDC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 638\n            -height 440\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 839\\n    -height 538\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 839\\n    -height 538\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "30C1389B-4B65-C0DC-C540-0A9AB5561B97";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 30 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "52197BB1-4A7B-FD5C-29B3-0D8FA411FE04";
	setAttr -s 141 ".wl";
	setAttr ".wl[0:140].w"
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 5 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "06BCED28-4DA9-BB10-EF61-799A65E21E6E";
	setAttr -s 7 ".wm";
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.60255807638168335 0
		 0.12303754687309265 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 2.3509887016445755e-38 4.3368086899420177e-19
		 1.0842021724855044e-19 0 -1.1811617734814435 6.5591297149655157 2.918315201997757 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00047325845322814322 0.96605392224140507 0.25833401487891761 -0.0017697754017628035 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -1.6653345369377348e-16 -5.5511151231257815e-17
		 1.1102230246251565e-16 0 9.8365759981788869e-14 3.5527136788005009e-15 9.7995089696399518 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.358740012612625 -0.6078104633453153 0.34891895669921641 0.61654489346241204 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.110223024625156e-16 -2.2204460492503126e-16
		 1.110223024625156e-16 0 8.8817841970012523e-15 8.8817841970012523e-16 2.2342638779841049 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49291798684306271 -0.50506422484952007 -0.50371240799062067 0.49821260226937863 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.7347259575186448e-18 2.1682719960730004e-19
		 -8.4703294725430015e-22 0 -6.6613381477509392e-16 -1.7763568394002505e-14 6.5037201922844492 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.7347259575186448e-18 2.1682719960730004e-19
		 -8.4703294725430015e-22 0 -0.0054258019408111036 0.46152698929357605 0.43742975191693712 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.7347259575186448e-18 2.1682719960730004e-19
		 -8.4703294725430015e-22 0 -0.005437024215277253 -0.47021724943949827 0.4435899657153638 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes no yes no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "F8F9010B-45DD-64AF-02FC-33977A7F479F";
	setAttr -s 52 ".wl";
	setAttr ".wl[0:51].w"
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 5 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster3";
	rename -uid "45F5A28B-413F-0A89-7B87-1EB50D2FF3FC";
	setAttr -s 52 ".wl";
	setAttr ".wl[0:51].w"
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 5 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster4";
	rename -uid "A50446FA-4293-9A7A-3015-849247D529ED";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		5 1 0.0053098928737853384 3 0.17875357385348598 4 0.27240009723188857 
		5 0.27113633880895166 6 0.27240009723188857
		5 1 0.0048304140264628674 3 0.1763950343995617 4 0.27336663857928539 
		5 0.27204127441540432 6 0.27336663857928561
		5 1 0.0050982065850203213 3 0.17733834683967908 4 0.2782767587240122 
		5 0.2782767587240122 6 0.26100992912727622
		5 1 0.004636660782836209 3 0.17492229171530133 4 0.27951381193823388 
		5 0.27951381193823388 6 0.26141342362539466
		5 0 0.20672526486683479 1 0.20672526486683479 4 0.19551654941564009 
		5 0.19551637143505032 6 0.19551654941564009
		5 0 0.2067215279959648 1 0.2067215279959648 4 0.19551904066414388 
		5 0.19551886267978263 6 0.19551904066414388
		5 0 0.20671625071660293 1 0.20671625071660293 4 0.1955233162877906 
		5 0.1955233162877906 6 0.19552086599121296
		5 0 0.20671251395339996 1 0.20671251395339996 4 0.1955258074805663 
		5 0.1955258074805663 6 0.19552335713206739;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 6 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "A4ED2274-4943-123E-116E-EF9BAC016C4F";
createNode skinCluster -n "skinCluster5";
	rename -uid "F49FB37C-4ED3-106C-F218-5BA675FE91C7";
	setAttr -s 170 ".wl";
	setAttr ".wl[0:169].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 6 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "C9D98F3D-4E13-0B4E-9500-E89DFC238EB8";
createNode skinCluster -n "skinCluster6";
	rename -uid "A19D61A1-43AA-6C04-D95F-229541086092";
	setAttr -s 156 ".wl";
	setAttr ".wl[0:155].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 4 1
		1 4 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 5 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "D9B8E0A0-4034-1081-445F-02B9014C8BA6";
createNode skinCluster -n "skinCluster7";
	rename -uid "8FA02E60-46B4-2139-9275-0BA5E30C3A03";
	setAttr -s 293 ".wl";
	setAttr ".wl[0:292].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 6 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster9";
	rename -uid "E6148FCD-432B-6596-6CAF-6EB53BBAB4C1";
	setAttr -s 284 ".wl";
	setAttr ".wl[0:283].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 7 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
	setAttr -s 7 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "0F7A1DE6-4884-0E7D-D547-8CA3628A59C8";
createNode skinCluster -n "skinCluster8";
	rename -uid "379AE1DF-4EF3-62F1-AD57-AD8C8408F7A0";
	setAttr -s 143 ".wl";
	setAttr ".wl[0:142].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.60255807638168335 0 -0.12303754687309265 1;
	setAttr ".pm[1]" -type "matrix" -0.9999932878429274 0.0018287727398925656 -0.0031748794241230043 0
		 7.2279422030918623e-15 0.86652662556595128 0.49913085176663413 0 0.003663914449314255 0.49912750152195734 -0.8665208093031328 0
		 -0.58974306970295942 -7.2006252026808157 -0.64030555312334536 1;
	setAttr ".pm[2]" -type "matrix" -0.017644263942212853 -0.0021795734860218618 0.99984195221512706 0
		 0.99984432711847293 -9.4738941084498947e-17 0.017644305852258017 0 -3.8457061214619705e-05 0.99999762472688836 0.0021792341855367717 0
		 -11.459552047338926 5.4487838280050758 0.4194629154585135 1;
	setAttr ".pm[3]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606619 -11.453537386825163 5.5181327369841489 1;
	setAttr ".pm[4]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6342500693606614 -11.453537386825142 -0.98558745530030001 1;
	setAttr ".pm[5]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288242674198503 -11.915064376118718 -1.4230172072172369 1;
	setAttr ".pm[6]" -type "matrix" 0.99999834064569515 -1.47160116124173e-16 0.0018217315542464509 0
		 1.2044109045585751e-05 0.99997814477175861 -0.0066113412989368282 0 -0.0018216917398875246 0.006611352269512945 0.99997648545371931 0
		 -1.6288130451453842 -10.983320137385647 -1.4291774210156638 1;
	setAttr ".gm" -type "matrix" 0 0 0.18369563040732348 0 0 0.18369563040732348 0 0
		 -0.18369563040732348 0 0 0 0.62515953611830677 0 0.012350261175135158 1;
	setAttr -s 7 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
	setAttr -s 7 ".ifcl";
createNode animCurveTU -n "HandRotation04_CTRL_visibility";
	rename -uid "A35BEF57-47AE-97A4-EA1A-8483A7C39435";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "HandRotation04_CTRL_rotateZ";
	rename -uid "7CE93977-4A28-97AA-CE64-1EB926590488";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "ArmRotation02_CTRL_visibility";
	rename -uid "E241143C-46FC-3E13-8869-EBADD9F98C2D";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "ArmRotation02_CTRL_rotateX";
	rename -uid "5A84F719-46A2-0C74-E31F-4891A3BA30A9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 -45 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "FingerRotation01_CTRL_visibility";
	rename -uid "1BD8D4B5-4E05-CCDA-1637-8AB1AE94E6AD";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "FingerRotation01_CTRL_rotateX";
	rename -uid "5D0684C4-4DE6-1548-E272-489F948BBB0D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_CTRL_visibility";
	rename -uid "AA45CE8B-4E75-4A6A-147D-CAA8C2349DFE";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_CTRL_translateX";
	rename -uid "4DE9B49D-4BEA-2398-9217-CBB913C63CAD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_CTRL_translateY";
	rename -uid "0D785E8D-4B03-0D4C-2016-AEB9CA5F27E4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_CTRL_translateZ";
	rename -uid "76E1E895-4908-9DA1-634D-20B4540475A5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_CTRL_rotateX";
	rename -uid "4A18655B-4381-439B-166D-958A173CBAFD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_CTRL_rotateY";
	rename -uid "177D8F3B-4C9E-3B92-E1C7-0B9C001AA820";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_CTRL_rotateZ";
	rename -uid "8D3512F6-4188-DDFF-AF84-5691720FA870";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_CTRL_scaleX";
	rename -uid "0152D0D7-4BE5-C363-07A2-7B9AFF90ED52";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_CTRL_scaleY";
	rename -uid "4AD013B0-4565-F1FD-7292-BBA6D032F9B1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_CTRL_scaleZ";
	rename -uid "6A45AA96-43CE-9F00-EBE0-89B5FC43CC25";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "ArmRotation01_CTRL_visibility";
	rename -uid "2C0155AC-4484-572C-F4F0-E0A42C2E4D1D";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "ArmRotation01_CTRL_rotateX";
	rename -uid "9BBC466F-4FA0-2892-18CE-A480F15992DA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 8.0713934843943917 7 89.984048715617604
		 12 8.0713934843943917;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "FingerRotation02_CTRL_visibility";
	rename -uid "3BB7C385-4A15-0FF9-BC27-76BF0AFAE368";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "FingerRotation02_CTRL_rotateX";
	rename -uid "6ED273C2-4C6C-2D9B-176C-A894C26F1B95";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "ArmRotation03_CTRL_visibility";
	rename -uid "1EA92E5D-4ABB-1090-DB41-2F9A894EB376";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 12 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "ArmRotation03_CTRL_rotateX";
	rename -uid "D20D0127-4010-8C3A-D78B-90A74CE13B0A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 -45 12 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.25;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.25;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pst" 3;
select -ne :time1;
	setAttr ".o" 7;
	setAttr ".unw" 7;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
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
connectAttr "Robot_armRN.phl[1]" "skinCluster1.orggeom[0]";
connectAttr "Robot_armRN.phl[2]" "skinCluster1.ip[0].ig";
connectAttr "Robot_armRN.phl[3]" "skinCluster2.orggeom[0]";
connectAttr "Robot_armRN.phl[4]" "skinCluster2.ip[0].ig";
connectAttr "Robot_armRN.phl[5]" "skinCluster3.orggeom[0]";
connectAttr "Robot_armRN.phl[6]" "skinCluster3.ip[0].ig";
connectAttr "Robot_armRN.phl[7]" "skinCluster4.orggeom[0]";
connectAttr "Robot_armRN.phl[8]" "tweak1.ip[0].ig";
connectAttr "Robot_armRN.phl[9]" "skinCluster5.orggeom[0]";
connectAttr "Robot_armRN.phl[10]" "tweak2.ip[0].ig";
connectAttr "Robot_armRN.phl[11]" "skinCluster6.orggeom[0]";
connectAttr "Robot_armRN.phl[12]" "tweak3.ip[0].ig";
connectAttr "Robot_armRN.phl[13]" "skinCluster7.orggeom[0]";
connectAttr "Robot_armRN.phl[14]" "skinCluster7.ip[0].ig";
connectAttr "Robot_armRN.phl[15]" "skinCluster8.orggeom[0]";
connectAttr "Robot_armRN.phl[16]" "skinCluster8.ip[0].ig";
connectAttr "Robot_armRN.phl[17]" "skinCluster9.orggeom[0]";
connectAttr "Robot_armRN.phl[18]" "tweak4.ip[0].ig";
connectAttr "BaseShapeDeformed.iog" "Robot_armRN.phl[19]";
connectAttr "RobotArm_01ShapeDeformed.iog" "Robot_armRN.phl[20]";
connectAttr "HandRotaterShapeDeformed.iog" "Robot_armRN.phl[21]";
connectAttr "RobotArm_02ShapeDeformed.iog" "Robot_armRN.phl[22]";
connectAttr "ForehandShapeDeformed.iog" "Robot_armRN.phl[23]";
connectAttr "Pinch02ShapeDeformed.iog" "Robot_armRN.phl[24]";
connectAttr "Pinch01ShapeDeformed.iog" "Robot_armRN.phl[25]";
connectAttr "LaserShapeDeformed.iog" "Robot_armRN.phl[26]";
connectAttr "wireShapeDeformed.iog" "Robot_armRN.phl[27]";
connectAttr "Root_JNT_parentConstraint1.ctx" "Root_JNT.tx";
connectAttr "Root_JNT_parentConstraint1.cty" "Root_JNT.ty";
connectAttr "Root_JNT_parentConstraint1.ctz" "Root_JNT.tz";
connectAttr "Root_JNT_parentConstraint1.crx" "Root_JNT.rx";
connectAttr "Root_JNT_parentConstraint1.cry" "Root_JNT.ry";
connectAttr "Root_JNT_parentConstraint1.crz" "Root_JNT.rz";
connectAttr "Root_JNT_scaleConstraint1.csx" "Root_JNT.sx";
connectAttr "Root_JNT_scaleConstraint1.csy" "Root_JNT.sy";
connectAttr "Root_JNT_scaleConstraint1.csz" "Root_JNT.sz";
connectAttr "Root_JNT.s" "ArmRotation01_JNT.is";
connectAttr "ArmRotation01_JNT_parentConstraint1.ctx" "ArmRotation01_JNT.tx";
connectAttr "ArmRotation01_JNT_parentConstraint1.cty" "ArmRotation01_JNT.ty";
connectAttr "ArmRotation01_JNT_parentConstraint1.ctz" "ArmRotation01_JNT.tz";
connectAttr "ArmRotation01_JNT_parentConstraint1.crx" "ArmRotation01_JNT.rx";
connectAttr "ArmRotation01_JNT_parentConstraint1.cry" "ArmRotation01_JNT.ry";
connectAttr "ArmRotation01_JNT_parentConstraint1.crz" "ArmRotation01_JNT.rz";
connectAttr "ArmRotation01_JNT_scaleConstraint1.csx" "ArmRotation01_JNT.sx";
connectAttr "ArmRotation01_JNT_scaleConstraint1.csy" "ArmRotation01_JNT.sy";
connectAttr "ArmRotation01_JNT_scaleConstraint1.csz" "ArmRotation01_JNT.sz";
connectAttr "ArmRotation01_JNT.s" "ArmRotation02_JNT.is";
connectAttr "ArmRotation02_JNT_parentConstraint1.ctx" "ArmRotation02_JNT.tx";
connectAttr "ArmRotation02_JNT_parentConstraint1.cty" "ArmRotation02_JNT.ty";
connectAttr "ArmRotation02_JNT_parentConstraint1.ctz" "ArmRotation02_JNT.tz";
connectAttr "ArmRotation02_JNT_parentConstraint1.crx" "ArmRotation02_JNT.rx";
connectAttr "ArmRotation02_JNT_parentConstraint1.cry" "ArmRotation02_JNT.ry";
connectAttr "ArmRotation02_JNT_parentConstraint1.crz" "ArmRotation02_JNT.rz";
connectAttr "ArmRotation02_JNT_scaleConstraint1.csx" "ArmRotation02_JNT.sx";
connectAttr "ArmRotation02_JNT_scaleConstraint1.csy" "ArmRotation02_JNT.sy";
connectAttr "ArmRotation02_JNT_scaleConstraint1.csz" "ArmRotation02_JNT.sz";
connectAttr "ArmRotation02_JNT.s" "ArmRoration03_JNT.is";
connectAttr "ArmRoration03_JNT_parentConstraint1.ctx" "ArmRoration03_JNT.tx";
connectAttr "ArmRoration03_JNT_parentConstraint1.cty" "ArmRoration03_JNT.ty";
connectAttr "ArmRoration03_JNT_parentConstraint1.ctz" "ArmRoration03_JNT.tz";
connectAttr "ArmRoration03_JNT_parentConstraint1.crx" "ArmRoration03_JNT.rx";
connectAttr "ArmRoration03_JNT_parentConstraint1.cry" "ArmRoration03_JNT.ry";
connectAttr "ArmRoration03_JNT_parentConstraint1.crz" "ArmRoration03_JNT.rz";
connectAttr "ArmRoration03_JNT_scaleConstraint1.csx" "ArmRoration03_JNT.sx";
connectAttr "ArmRoration03_JNT_scaleConstraint1.csy" "ArmRoration03_JNT.sy";
connectAttr "ArmRoration03_JNT_scaleConstraint1.csz" "ArmRoration03_JNT.sz";
connectAttr "ArmRoration03_JNT.s" "HandRotation_JNT.is";
connectAttr "HandRotation_JNT_parentConstraint1.ctx" "HandRotation_JNT.tx";
connectAttr "HandRotation_JNT_parentConstraint1.cty" "HandRotation_JNT.ty";
connectAttr "HandRotation_JNT_parentConstraint1.ctz" "HandRotation_JNT.tz";
connectAttr "HandRotation_JNT_parentConstraint1.crx" "HandRotation_JNT.rx";
connectAttr "HandRotation_JNT_parentConstraint1.cry" "HandRotation_JNT.ry";
connectAttr "HandRotation_JNT_parentConstraint1.crz" "HandRotation_JNT.rz";
connectAttr "HandRotation_JNT_scaleConstraint1.csx" "HandRotation_JNT.sx";
connectAttr "HandRotation_JNT_scaleConstraint1.csy" "HandRotation_JNT.sy";
connectAttr "HandRotation_JNT_scaleConstraint1.csz" "HandRotation_JNT.sz";
connectAttr "HandRotation_JNT.s" "FInger01_JNT.is";
connectAttr "FInger01_JNT_parentConstraint1.ctx" "FInger01_JNT.tx";
connectAttr "FInger01_JNT_parentConstraint1.cty" "FInger01_JNT.ty";
connectAttr "FInger01_JNT_parentConstraint1.ctz" "FInger01_JNT.tz";
connectAttr "FInger01_JNT_parentConstraint1.crx" "FInger01_JNT.rx";
connectAttr "FInger01_JNT_parentConstraint1.cry" "FInger01_JNT.ry";
connectAttr "FInger01_JNT_parentConstraint1.crz" "FInger01_JNT.rz";
connectAttr "FInger01_JNT_scaleConstraint1.csx" "FInger01_JNT.sx";
connectAttr "FInger01_JNT_scaleConstraint1.csy" "FInger01_JNT.sy";
connectAttr "FInger01_JNT_scaleConstraint1.csz" "FInger01_JNT.sz";
connectAttr "FInger01_JNT.ro" "FInger01_JNT_parentConstraint1.cro";
connectAttr "FInger01_JNT.pim" "FInger01_JNT_parentConstraint1.cpim";
connectAttr "FInger01_JNT.rp" "FInger01_JNT_parentConstraint1.crp";
connectAttr "FInger01_JNT.rpt" "FInger01_JNT_parentConstraint1.crt";
connectAttr "FInger01_JNT.jo" "FInger01_JNT_parentConstraint1.cjo";
connectAttr "FingerRotation02_CTRL.t" "FInger01_JNT_parentConstraint1.tg[0].tt";
connectAttr "FingerRotation02_CTRL.rp" "FInger01_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "FingerRotation02_CTRL.rpt" "FInger01_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "FingerRotation02_CTRL.r" "FInger01_JNT_parentConstraint1.tg[0].tr";
connectAttr "FingerRotation02_CTRL.ro" "FInger01_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "FingerRotation02_CTRL.s" "FInger01_JNT_parentConstraint1.tg[0].ts";
connectAttr "FingerRotation02_CTRL.pm" "FInger01_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FInger01_JNT_parentConstraint1.w0" "FInger01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "FInger01_JNT.ssc" "FInger01_JNT_scaleConstraint1.tsc";
connectAttr "FInger01_JNT.pim" "FInger01_JNT_scaleConstraint1.cpim";
connectAttr "FingerRotation02_CTRL.s" "FInger01_JNT_scaleConstraint1.tg[0].ts";
connectAttr "FingerRotation02_CTRL.pm" "FInger01_JNT_scaleConstraint1.tg[0].tpm"
		;
connectAttr "FInger01_JNT_scaleConstraint1.w0" "FInger01_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "HandRotation_JNT.s" "Finger02_JNT.is";
connectAttr "Finger02_JNT_parentConstraint1.ctx" "Finger02_JNT.tx";
connectAttr "Finger02_JNT_parentConstraint1.cty" "Finger02_JNT.ty";
connectAttr "Finger02_JNT_parentConstraint1.ctz" "Finger02_JNT.tz";
connectAttr "Finger02_JNT_parentConstraint1.crx" "Finger02_JNT.rx";
connectAttr "Finger02_JNT_parentConstraint1.cry" "Finger02_JNT.ry";
connectAttr "Finger02_JNT_parentConstraint1.crz" "Finger02_JNT.rz";
connectAttr "Finger02_JNT_scaleConstraint1.csx" "Finger02_JNT.sx";
connectAttr "Finger02_JNT_scaleConstraint1.csy" "Finger02_JNT.sy";
connectAttr "Finger02_JNT_scaleConstraint1.csz" "Finger02_JNT.sz";
connectAttr "Finger02_JNT.ro" "Finger02_JNT_parentConstraint1.cro";
connectAttr "Finger02_JNT.pim" "Finger02_JNT_parentConstraint1.cpim";
connectAttr "Finger02_JNT.rp" "Finger02_JNT_parentConstraint1.crp";
connectAttr "Finger02_JNT.rpt" "Finger02_JNT_parentConstraint1.crt";
connectAttr "Finger02_JNT.jo" "Finger02_JNT_parentConstraint1.cjo";
connectAttr "FingerRotation01_CTRL.t" "Finger02_JNT_parentConstraint1.tg[0].tt";
connectAttr "FingerRotation01_CTRL.rp" "Finger02_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "FingerRotation01_CTRL.rpt" "Finger02_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "FingerRotation01_CTRL.r" "Finger02_JNT_parentConstraint1.tg[0].tr";
connectAttr "FingerRotation01_CTRL.ro" "Finger02_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "FingerRotation01_CTRL.s" "Finger02_JNT_parentConstraint1.tg[0].ts";
connectAttr "FingerRotation01_CTRL.pm" "Finger02_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger02_JNT_parentConstraint1.w0" "Finger02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger02_JNT.ssc" "Finger02_JNT_scaleConstraint1.tsc";
connectAttr "Finger02_JNT.pim" "Finger02_JNT_scaleConstraint1.cpim";
connectAttr "FingerRotation01_CTRL.s" "Finger02_JNT_scaleConstraint1.tg[0].ts";
connectAttr "FingerRotation01_CTRL.pm" "Finger02_JNT_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Finger02_JNT_scaleConstraint1.w0" "Finger02_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "HandRotation_JNT.ro" "HandRotation_JNT_parentConstraint1.cro";
connectAttr "HandRotation_JNT.pim" "HandRotation_JNT_parentConstraint1.cpim";
connectAttr "HandRotation_JNT.rp" "HandRotation_JNT_parentConstraint1.crp";
connectAttr "HandRotation_JNT.rpt" "HandRotation_JNT_parentConstraint1.crt";
connectAttr "HandRotation_JNT.jo" "HandRotation_JNT_parentConstraint1.cjo";
connectAttr "HandRotation04_CTRL.t" "HandRotation_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "HandRotation04_CTRL.rp" "HandRotation_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "HandRotation04_CTRL.rpt" "HandRotation_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "HandRotation04_CTRL.r" "HandRotation_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "HandRotation04_CTRL.ro" "HandRotation_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "HandRotation04_CTRL.s" "HandRotation_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "HandRotation04_CTRL.pm" "HandRotation_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "HandRotation_JNT_parentConstraint1.w0" "HandRotation_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "HandRotation_JNT.ssc" "HandRotation_JNT_scaleConstraint1.tsc";
connectAttr "HandRotation_JNT.pim" "HandRotation_JNT_scaleConstraint1.cpim";
connectAttr "HandRotation04_CTRL.s" "HandRotation_JNT_scaleConstraint1.tg[0].ts"
		;
connectAttr "HandRotation04_CTRL.pm" "HandRotation_JNT_scaleConstraint1.tg[0].tpm"
		;
connectAttr "HandRotation_JNT_scaleConstraint1.w0" "HandRotation_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "ArmRoration03_JNT.ro" "ArmRoration03_JNT_parentConstraint1.cro";
connectAttr "ArmRoration03_JNT.pim" "ArmRoration03_JNT_parentConstraint1.cpim";
connectAttr "ArmRoration03_JNT.rp" "ArmRoration03_JNT_parentConstraint1.crp";
connectAttr "ArmRoration03_JNT.rpt" "ArmRoration03_JNT_parentConstraint1.crt";
connectAttr "ArmRoration03_JNT.jo" "ArmRoration03_JNT_parentConstraint1.cjo";
connectAttr "ArmRotation03_CTRL.t" "ArmRoration03_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "ArmRotation03_CTRL.rp" "ArmRoration03_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "ArmRotation03_CTRL.rpt" "ArmRoration03_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "ArmRotation03_CTRL.r" "ArmRoration03_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "ArmRotation03_CTRL.ro" "ArmRoration03_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "ArmRotation03_CTRL.s" "ArmRoration03_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "ArmRotation03_CTRL.pm" "ArmRoration03_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ArmRoration03_JNT_parentConstraint1.w0" "ArmRoration03_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "ArmRoration03_JNT.ssc" "ArmRoration03_JNT_scaleConstraint1.tsc";
connectAttr "ArmRoration03_JNT.pim" "ArmRoration03_JNT_scaleConstraint1.cpim";
connectAttr "ArmRotation03_CTRL.s" "ArmRoration03_JNT_scaleConstraint1.tg[0].ts"
		;
connectAttr "ArmRotation03_CTRL.pm" "ArmRoration03_JNT_scaleConstraint1.tg[0].tpm"
		;
connectAttr "ArmRoration03_JNT_scaleConstraint1.w0" "ArmRoration03_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "ArmRotation02_JNT.ro" "ArmRotation02_JNT_parentConstraint1.cro";
connectAttr "ArmRotation02_JNT.pim" "ArmRotation02_JNT_parentConstraint1.cpim";
connectAttr "ArmRotation02_JNT.rp" "ArmRotation02_JNT_parentConstraint1.crp";
connectAttr "ArmRotation02_JNT.rpt" "ArmRotation02_JNT_parentConstraint1.crt";
connectAttr "ArmRotation02_JNT.jo" "ArmRotation02_JNT_parentConstraint1.cjo";
connectAttr "ArmRotation02_CTRL.t" "ArmRotation02_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "ArmRotation02_CTRL.rp" "ArmRotation02_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "ArmRotation02_CTRL.rpt" "ArmRotation02_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "ArmRotation02_CTRL.r" "ArmRotation02_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "ArmRotation02_CTRL.ro" "ArmRotation02_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "ArmRotation02_CTRL.s" "ArmRotation02_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "ArmRotation02_CTRL.pm" "ArmRotation02_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ArmRotation02_JNT_parentConstraint1.w0" "ArmRotation02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "ArmRotation02_JNT.ssc" "ArmRotation02_JNT_scaleConstraint1.tsc";
connectAttr "ArmRotation02_JNT.pim" "ArmRotation02_JNT_scaleConstraint1.cpim";
connectAttr "ArmRotation02_CTRL.s" "ArmRotation02_JNT_scaleConstraint1.tg[0].ts"
		;
connectAttr "ArmRotation02_CTRL.pm" "ArmRotation02_JNT_scaleConstraint1.tg[0].tpm"
		;
connectAttr "ArmRotation02_JNT_scaleConstraint1.w0" "ArmRotation02_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "ArmRotation01_JNT.ro" "ArmRotation01_JNT_parentConstraint1.cro";
connectAttr "ArmRotation01_JNT.pim" "ArmRotation01_JNT_parentConstraint1.cpim";
connectAttr "ArmRotation01_JNT.rp" "ArmRotation01_JNT_parentConstraint1.crp";
connectAttr "ArmRotation01_JNT.rpt" "ArmRotation01_JNT_parentConstraint1.crt";
connectAttr "ArmRotation01_JNT.jo" "ArmRotation01_JNT_parentConstraint1.cjo";
connectAttr "ArmRotation01_CTRL.t" "ArmRotation01_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "ArmRotation01_CTRL.rp" "ArmRotation01_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "ArmRotation01_CTRL.rpt" "ArmRotation01_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "ArmRotation01_CTRL.r" "ArmRotation01_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "ArmRotation01_CTRL.ro" "ArmRotation01_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "ArmRotation01_CTRL.s" "ArmRotation01_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "ArmRotation01_CTRL.pm" "ArmRotation01_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ArmRotation01_JNT_parentConstraint1.w0" "ArmRotation01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "ArmRotation01_JNT.ssc" "ArmRotation01_JNT_scaleConstraint1.tsc";
connectAttr "ArmRotation01_JNT.pim" "ArmRotation01_JNT_scaleConstraint1.cpim";
connectAttr "ArmRotation01_CTRL.s" "ArmRotation01_JNT_scaleConstraint1.tg[0].ts"
		;
connectAttr "ArmRotation01_CTRL.pm" "ArmRotation01_JNT_scaleConstraint1.tg[0].tpm"
		;
connectAttr "ArmRotation01_JNT_scaleConstraint1.w0" "ArmRotation01_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "Root_JNT.ro" "Root_JNT_parentConstraint1.cro";
connectAttr "Root_JNT.pim" "Root_JNT_parentConstraint1.cpim";
connectAttr "Root_JNT.rp" "Root_JNT_parentConstraint1.crp";
connectAttr "Root_JNT.rpt" "Root_JNT_parentConstraint1.crt";
connectAttr "Root_JNT.jo" "Root_JNT_parentConstraint1.cjo";
connectAttr "Main_CTRL.t" "Root_JNT_parentConstraint1.tg[0].tt";
connectAttr "Main_CTRL.rp" "Root_JNT_parentConstraint1.tg[0].trp";
connectAttr "Main_CTRL.rpt" "Root_JNT_parentConstraint1.tg[0].trt";
connectAttr "Main_CTRL.r" "Root_JNT_parentConstraint1.tg[0].tr";
connectAttr "Main_CTRL.ro" "Root_JNT_parentConstraint1.tg[0].tro";
connectAttr "Main_CTRL.s" "Root_JNT_parentConstraint1.tg[0].ts";
connectAttr "Main_CTRL.pm" "Root_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Root_JNT_parentConstraint1.w0" "Root_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Root_JNT.pim" "Root_JNT_scaleConstraint1.cpim";
connectAttr "Main_CTRL.s" "Root_JNT_scaleConstraint1.tg[0].ts";
connectAttr "Main_CTRL.pm" "Root_JNT_scaleConstraint1.tg[0].tpm";
connectAttr "Root_JNT_scaleConstraint1.w0" "Root_JNT_scaleConstraint1.tg[0].tw";
connectAttr "Main_CTRL_translateX.o" "Main_CTRL.tx";
connectAttr "Main_CTRL_translateY.o" "Main_CTRL.ty";
connectAttr "Main_CTRL_translateZ.o" "Main_CTRL.tz";
connectAttr "Main_CTRL_rotateX.o" "Main_CTRL.rx";
connectAttr "Main_CTRL_rotateY.o" "Main_CTRL.ry";
connectAttr "Main_CTRL_rotateZ.o" "Main_CTRL.rz";
connectAttr "Main_CTRL_scaleX.o" "Main_CTRL.sx";
connectAttr "Main_CTRL_scaleY.o" "Main_CTRL.sy";
connectAttr "Main_CTRL_scaleZ.o" "Main_CTRL.sz";
connectAttr "Main_CTRL_visibility.o" "Main_CTRL.v";
connectAttr "ArmRotation01_CTRL_rotateX.o" "ArmRotation01_CTRL.rx";
connectAttr "ArmRotation01_CTRL_visibility.o" "ArmRotation01_CTRL.v";
connectAttr "ArmRotation02_CTRL_rotateX.o" "ArmRotation02_CTRL.rx";
connectAttr "ArmRotation02_CTRL_visibility.o" "ArmRotation02_CTRL.v";
connectAttr "ArmRotation03_CTRL_rotateX.o" "ArmRotation03_CTRL.rx";
connectAttr "ArmRotation03_CTRL_visibility.o" "ArmRotation03_CTRL.v";
connectAttr "HandRotation04_CTRL_rotateZ.o" "HandRotation04_CTRL.rz";
connectAttr "HandRotation04_CTRL_visibility.o" "HandRotation04_CTRL.v";
connectAttr "FingerRotation02_CTRL_rotateX.o" "FingerRotation02_CTRL.rx";
connectAttr "FingerRotation02_CTRL_visibility.o" "FingerRotation02_CTRL.v";
connectAttr "FingerRotation01_CTRL_rotateX.o" "FingerRotation01_CTRL.rx";
connectAttr "FingerRotation01_CTRL_visibility.o" "FingerRotation01_CTRL.v";
connectAttr "skinCluster9.og[0]" "BaseShapeDeformed.i";
connectAttr "tweak4.vl[0].vt[0]" "BaseShapeDeformed.twl";
connectAttr "skinCluster8.og[0]" "RobotArm_01ShapeDeformed.i";
connectAttr "skinCluster7.og[0]" "RobotArm_02ShapeDeformed.i";
connectAttr "skinCluster6.og[0]" "ForehandShapeDeformed.i";
connectAttr "tweak3.vl[0].vt[0]" "ForehandShapeDeformed.twl";
connectAttr "skinCluster5.og[0]" "wireShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "wireShapeDeformed.twl";
connectAttr "skinCluster4.og[0]" "LaserShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "LaserShapeDeformed.twl";
connectAttr "skinCluster3.og[0]" "Pinch01ShapeDeformed.i";
connectAttr "skinCluster2.og[0]" "Pinch02ShapeDeformed.i";
connectAttr "skinCluster1.og[0]" "HandRotaterShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "Robot_armRN.sr";
connectAttr "Robot_armRNfosterParent1.msg" "Robot_armRN.fp";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "ArmRotation01_JNT.wm" "skinCluster1.ma[1]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster1.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster1.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster1.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster1.ma[6]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster1.lw[1]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster1.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster1.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster1.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster1.lw[6]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "HandRotation_JNT.msg" "skinCluster1.ptt";
connectAttr "Root_JNT.msg" "bindPose1.m[0]";
connectAttr "ArmRotation01_JNT.msg" "bindPose1.m[1]";
connectAttr "ArmRotation02_JNT.msg" "bindPose1.m[2]";
connectAttr "ArmRoration03_JNT.msg" "bindPose1.m[3]";
connectAttr "HandRotation_JNT.msg" "bindPose1.m[4]";
connectAttr "FInger01_JNT.msg" "bindPose1.m[5]";
connectAttr "Finger02_JNT.msg" "bindPose1.m[6]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[4]" "bindPose1.p[6]";
connectAttr "Root_JNT.bps" "bindPose1.wm[0]";
connectAttr "ArmRotation01_JNT.bps" "bindPose1.wm[1]";
connectAttr "ArmRotation02_JNT.bps" "bindPose1.wm[2]";
connectAttr "ArmRoration03_JNT.bps" "bindPose1.wm[3]";
connectAttr "HandRotation_JNT.bps" "bindPose1.wm[4]";
connectAttr "FInger01_JNT.bps" "bindPose1.wm[5]";
connectAttr "Finger02_JNT.bps" "bindPose1.wm[6]";
connectAttr "ArmRotation01_JNT.wm" "skinCluster2.ma[1]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster2.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster2.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster2.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster2.ma[6]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster2.lw[1]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster2.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster2.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster2.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster2.lw[6]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster2.ifcl[1]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster2.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster2.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster2.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster2.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "Finger02_JNT.msg" "skinCluster2.ptt";
connectAttr "ArmRotation01_JNT.wm" "skinCluster3.ma[1]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster3.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster3.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster3.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster3.ma[6]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster3.lw[1]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster3.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster3.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster3.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster3.lw[6]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster3.ifcl[1]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster3.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster3.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster3.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster3.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "FInger01_JNT.msg" "skinCluster3.ptt";
connectAttr "tweak1.og[0]" "skinCluster4.ip[0].ig";
connectAttr "Root_JNT.wm" "skinCluster4.ma[0]";
connectAttr "ArmRotation01_JNT.wm" "skinCluster4.ma[1]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster4.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster4.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster4.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster4.ma[6]";
connectAttr "Root_JNT.liw" "skinCluster4.lw[0]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster4.lw[1]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster4.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster4.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster4.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster4.lw[6]";
connectAttr "Root_JNT.obcc" "skinCluster4.ifcl[0]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster4.ifcl[1]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster4.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster4.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster4.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster4.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "tweak2.og[0]" "skinCluster5.ip[0].ig";
connectAttr "Root_JNT.wm" "skinCluster5.ma[0]";
connectAttr "ArmRotation01_JNT.wm" "skinCluster5.ma[1]";
connectAttr "ArmRotation02_JNT.wm" "skinCluster5.ma[2]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster5.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster5.ma[4]";
connectAttr "Finger02_JNT.wm" "skinCluster5.ma[6]";
connectAttr "Root_JNT.liw" "skinCluster5.lw[0]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster5.lw[1]";
connectAttr "ArmRotation02_JNT.liw" "skinCluster5.lw[2]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster5.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster5.lw[4]";
connectAttr "Finger02_JNT.liw" "skinCluster5.lw[6]";
connectAttr "Root_JNT.obcc" "skinCluster5.ifcl[0]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster5.ifcl[1]";
connectAttr "ArmRotation02_JNT.obcc" "skinCluster5.ifcl[2]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster5.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster5.ifcl[4]";
connectAttr "Finger02_JNT.obcc" "skinCluster5.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "Root_JNT.msg" "skinCluster5.ptt";
connectAttr "tweak3.og[0]" "skinCluster6.ip[0].ig";
connectAttr "ArmRotation01_JNT.wm" "skinCluster6.ma[1]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster6.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster6.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster6.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster6.ma[6]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster6.lw[1]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster6.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster6.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster6.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster6.lw[6]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster6.ifcl[1]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster6.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster6.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster6.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster6.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "ArmRoration03_JNT.msg" "skinCluster6.ptt";
connectAttr "ArmRotation01_JNT.wm" "skinCluster7.ma[1]";
connectAttr "ArmRotation02_JNT.wm" "skinCluster7.ma[2]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster7.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster7.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster7.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster7.ma[6]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster7.lw[1]";
connectAttr "ArmRotation02_JNT.liw" "skinCluster7.lw[2]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster7.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster7.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster7.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster7.lw[6]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster7.ifcl[1]";
connectAttr "ArmRotation02_JNT.obcc" "skinCluster7.ifcl[2]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster7.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster7.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster7.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster7.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "ArmRoration03_JNT.msg" "skinCluster7.ptt";
connectAttr "tweak4.og[0]" "skinCluster9.ip[0].ig";
connectAttr "Root_JNT.wm" "skinCluster9.ma[0]";
connectAttr "ArmRotation01_JNT.wm" "skinCluster9.ma[1]";
connectAttr "ArmRotation02_JNT.wm" "skinCluster9.ma[2]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster9.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster9.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster9.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster9.ma[6]";
connectAttr "Root_JNT.liw" "skinCluster9.lw[0]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster9.lw[1]";
connectAttr "ArmRotation02_JNT.liw" "skinCluster9.lw[2]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster9.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster9.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster9.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster9.lw[6]";
connectAttr "Root_JNT.obcc" "skinCluster9.ifcl[0]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster9.ifcl[1]";
connectAttr "ArmRotation02_JNT.obcc" "skinCluster9.ifcl[2]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster9.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster9.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster9.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster9.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "Root_JNT.msg" "skinCluster9.ptt";
connectAttr "Root_JNT.wm" "skinCluster8.ma[0]";
connectAttr "ArmRotation01_JNT.wm" "skinCluster8.ma[1]";
connectAttr "ArmRotation02_JNT.wm" "skinCluster8.ma[2]";
connectAttr "ArmRoration03_JNT.wm" "skinCluster8.ma[3]";
connectAttr "HandRotation_JNT.wm" "skinCluster8.ma[4]";
connectAttr "FInger01_JNT.wm" "skinCluster8.ma[5]";
connectAttr "Finger02_JNT.wm" "skinCluster8.ma[6]";
connectAttr "Root_JNT.liw" "skinCluster8.lw[0]";
connectAttr "ArmRotation01_JNT.liw" "skinCluster8.lw[1]";
connectAttr "ArmRotation02_JNT.liw" "skinCluster8.lw[2]";
connectAttr "ArmRoration03_JNT.liw" "skinCluster8.lw[3]";
connectAttr "HandRotation_JNT.liw" "skinCluster8.lw[4]";
connectAttr "FInger01_JNT.liw" "skinCluster8.lw[5]";
connectAttr "Finger02_JNT.liw" "skinCluster8.lw[6]";
connectAttr "Root_JNT.obcc" "skinCluster8.ifcl[0]";
connectAttr "ArmRotation01_JNT.obcc" "skinCluster8.ifcl[1]";
connectAttr "ArmRotation02_JNT.obcc" "skinCluster8.ifcl[2]";
connectAttr "ArmRoration03_JNT.obcc" "skinCluster8.ifcl[3]";
connectAttr "HandRotation_JNT.obcc" "skinCluster8.ifcl[4]";
connectAttr "FInger01_JNT.obcc" "skinCluster8.ifcl[5]";
connectAttr "Finger02_JNT.obcc" "skinCluster8.ifcl[6]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "ArmRotation01_JNT.msg" "skinCluster8.ptt";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Robot Arm.ma
