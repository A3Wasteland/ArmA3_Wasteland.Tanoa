// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// █████ FOR USE WITH APEX SNEAK PREVIEW BRANCH ONLY! █████

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["PM Pistol", "hgun_Pistol_01_F", 250],
	["P07 Pistol", "hgun_P07_F", 500],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 500],
	["Rook-40 Pistol", "hgun_Rook40_F", 500],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 750],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 750],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 1000]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 1000],
	["Protector SMG", "SMG_05_F", 1000],
	["Sting SMG", "SMG_02_F", 1250],
	["Vermin SMG", "SMG_01_F", 1250]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 1000],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 1500],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 1500],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 2000],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 2000],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 2500],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 2500],

	["TRG-20 Carbine", "arifle_TRG20_F", 1500],
	["TRG-21 Rifle ", "arifle_TRG21_F", 2000],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 2500],

	["Katiba Carbine", "arifle_Katiba_C_F", 1500],
	["Katiba Rifle", "arifle_Katiba_F", 2000],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 2500],

	["MX Carbine", "arifle_MXC_F", 1500],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 1500],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 1500, "noDLC"],
	["MX Rifle", "arifle_MX_F", 2000],
	["MX Rifle (Black)", "arifle_MX_Black_F", 2000],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 2000, "noDLC"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 2500],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 2500],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 2500, "noDLC"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 2000],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 2000],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 2000],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 2500],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 2500],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 2500],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 2000],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 2500],
	["Type 115 Rifle", "arifle_ARX_blk_F", 20000],
	["Type 115 Rifle (Hex)", "arifle_ARX_hex_F", 20000],
	["Type 115 Rifle (G Hex)", "arifle_ARX_ghex_F", 20000],

	["AKS-74U Carbine", "arifle_AKS_F", 1500],
	["AKM Rifle", "arifle_AKM_F", 2000],
	["AK-12 Rifle", "arifle_AK12_F", 2500],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 3000],

	// Marksman Rifles

	["MXM Rifle", "arifle_MXM_F", 3000],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 3000],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 3000, "noDLC"],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 3750],
	["DMR Rifle", "srifle_DMR_01_F", 3750],
	["Mk18 ABR Rifle", "srifle_EBR_F", 4500],

	// DLC
	["CMR-76 Rifle", "srifle_DMR_07_blk_F", 4000],
	["CMR-76 Rifle (Hex)", "srifle_DMR_07_hex_F", 4000],
	["CMR-76 Rifle (G Hex)", "srifle_DMR_07_ghex_F", 4000],
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 4500],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 4500],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 4500],

	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 5000],
	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 5000],
	["Mk-I EMR Rifle", "srifle_DMR_03_F", 5000],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 5000],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 5000],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 5000],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 5000],
	["MAR-10 Rifle", "srifle_DMR_02_F", 7500],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 7500],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 7500],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 7500],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 7500],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 7500],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_LRPS_F", 10000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_LRPS_F", 12000],
	["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_LRPS_F", 12000],
	["GM6 Lynx Sniper", "srifle_GM6_LRPS_F", 12500],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_LRPS_F", 15000],
	["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_LRPS_F", 15000],

	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 20000],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 20000]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 3000],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 3250],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 3250, "noDLC"],
	["Mk200 LMG", "LMG_Mk200_F", 4000],
	["Zafir LMG", "LMG_Zafir_F", 5000],

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 3000],
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 3000],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 3000],
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 3000],
	["LIM-85 LMG", "LMG_03_F", 3500],

	["SPMG MMG (Sand)", "MMG_02_sand_F", 7500],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 7500],
	["SPMG MMG (Black)", "MMG_02_black_F", 7500],
	["Navid MMG (Tan)", "MMG_01_tan_F", 10000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 10000]
];

launcherArray = compileFinal str
[
	["RPG-7", "launch_RPG7_F", 3500],
	["RPG-42 Alamut", "launch_RPG32_F", 4000],
	["RPG-42 Alamut (G Hex)", "launch_RPG32_ghex_F", 4000, "noDLC"],
	["PCML", "launch_NLAW_F", 6000],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 5000],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 5000],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 5000],
	["Titan MPRL Compact (Tropic)", "launch_B_Titan_short_tna_F", 5000, "noDLC"],
	["Titan MPRL Compact (G Hex)", "launch_O_Titan_short_ghex_F", 5000, "noDLC"],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 6000],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 6000],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 6000],
	["Titan MPRL AA (Tropic)", "launch_B_Titan_tna_F", 6000, "noDLC"],
	["Titan MPRL AA (G Hex)", "launch_O_Titan_ghex_F", 6000, "noDLC"]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 25000], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 25000],
	["Static Titan AT 4Rnd", "I_static_AT_F", 25000],
	["Static Titan AA 4Rnd", "B_static_AA_F", 30000],
	["Static Titan AA 4Rnd", "O_static_AA_F", 30000],
	["Static Titan AA 4Rnd", "I_static_AA_F", 30000],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 20000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 20000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 20000],
	// ["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// ["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 5000],
	// ["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 30000],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 30000],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 30000],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 50000],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 50000],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 50000],
	// ["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 10000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 60000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 60000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 60000],
	["Mk6 Mortar", "B_Mortar_01_F", 125000],
	["Mk6 Mortar", "O_Mortar_01_F", 125000],
	["Mk6 Mortar", "I_Mortar_01_F", 125000]
];

throwputArray = compileFinal str
[
	["RGN Mini Grenade", "MiniGrenade", 500],
	["RGO Frag Grenade", "HandGrenade", 1000],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 2000],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 2500],
	["APERS Mine", "APERSMine_Range_Mag", 3000],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 3500],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 3500],
	["AT Mine", "ATMine_Range_Mag", 4000],
	["Explosive Charge", "DemoCharge_Remote_Mag", 4500],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 5000],
	["Smoke Grenade (White)", "SmokeShell", 500],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 500],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 500],
	["Smoke Grenade (Green)", "SmokeShellGreen", 500],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 500],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 500],
	["Smoke Grenade (Red)", "SmokeShellRed", 500]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 100],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 150],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 150],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 50],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 100],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 150],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 200],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 150],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 200],
	["5.45mm 30Rnd Tracer (Yellow) Mag", "30Rnd_545x39_Mag_Tracer_F", 150],
	["5.45mm 30Rnd Tracer (Green) Mag", "30Rnd_545x39_Mag_Tracer_Green_F", 150],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 100],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 200],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 150],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 150],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 150],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 1000],
	["5.56mm 150Rnd Tracer (Red) Mag", "150Rnd_556x45_Drum_Mag_Tracer_F", 750],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 1250],
	["5.56mm 200Rnd Tracer (Yellow) Box", "200Rnd_556x45_Box_Tracer_F", 1000],
	["5.56mm 200Rnd Tracer (Red) Box", "200Rnd_556x45_Box_Tracer_Red_F", 1000],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 200],
	["5.8mm 30Rnd Tracer (Green) Mag", "30Rnd_580x42_Mag_Tracer_F", 150],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 1000],
	["5.8mm 100Rnd Tracer (Green) Mag", "100Rnd_580x42_Mag_Tracer_F", 750],
	["6.5mm 20Rnd Mag", "20Rnd_650x39_Cased_Mag_F", 150],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 200],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 150],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 200],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 150],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 750],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 500],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 1500],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 1250],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 150],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 250],
	["7.62mm 30Rnd Mag", "30Rnd_762x39_Mag_F", 200],
	["7.62mm 30Rnd Tracer (Yellow) Mag", "30Rnd_762x39_Mag_Tracer_F", 150],
	["7.62mm 30Rnd Tracer (Green) Mag", "30Rnd_762x39_Mag_Tracer_Green_F", 150],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 1500],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 1250],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 500],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 1500],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 500],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 1500],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 500],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 500],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 600],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 750],
	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 500],
	["PG-7VM HEAT Grenade", "RPG7_F", 2000],                   // Direct damage: medium    | Splash damage: low    | Guidance: none
	["RPG-42 Anti-Tank Rocket", "RPG32_F", 2500],              // Direct damage: high      | Splash damage: low    | Guidance: none
	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 2500],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	["PCML Anti-Tank Missile", "NLAW_F", 4000],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 3500],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 3500],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	["Titan Anti-Air Missile", "Titan_AA", 3500],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 1250],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 2500],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 500],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 500],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 500],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 500],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 500],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 500],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 500],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 1000],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 1000],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 1000],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 1000],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 1000],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 1000],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 1000],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 250],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 250],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 250],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 250],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 250],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 500],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 500],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 500],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 500],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 500]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 500, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 750, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 1000, "item"],
	["Suppressor 5.56mm (Khaki)", "muzzle_snds_m_khk_F", 1000, "item"],
	["Suppressor 5.56mm (Sand)", "muzzle_snds_m_snd_F", 1000, "item"],
	["Suppressor 5.8mm", "muzzle_snds_58_blk_F", 1000, "item"],
	["Suppressor 5.8mm (G Hex)", "muzzle_snds_58_wdm_F", 1000, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 1000, "item"],
	["Suppressor 6.5mm (Khaki)", "muzzle_snds_H_khk_F", 1000, "item"],
	["Suppressor 6.5mm (Sand)", "muzzle_snds_H_snd_F", 1000, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 1250, "item"],
	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 1250, "item"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 1250, "item"],
	["Suppressor Type 115", "muzzle_snds_65_TI_blk_F", 1250, "item"],
	["Suppressor Type 115 (Hex)", "muzzle_snds_65_TI_hex_F", 1250, "item"],
	["Suppressor Type 115 (G Hex)", "muzzle_snds_65_TI_ghex_F", 1250, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 1250, "item"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 1250, "item"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 1250, "item"],
	["Suppressor .338", "muzzle_snds_338_black", 1500, "item"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 1500, "item"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 1750, "item"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 1750, "item"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 1750, "item"],
	["Bipod (NATO)", "bipod_01_F_blk", 1000, "item", "noDLC"],
	["Bipod (CSAT)", "bipod_02_F_blk", 1000, "item", "noDLC"],
	["Bipod (AAF)", "bipod_03_F_blk", 1000, "item", "noDLC"],
	["Bipod (MTP)", "bipod_01_F_mtp", 1000, "item", "noDLC"],
	["Bipod (Hex)", "bipod_02_F_hex", 1000, "item", "noDLC"],
	["Bipod (Olive)", "bipod_03_F_oli", 1000, "item", "noDLC"],
	["Bipod (Sand)", "bipod_01_F_snd", 1000, "item", "noDLC"],
	["Bipod (Tan)", "bipod_02_F_tan", 1000, "item", "noDLC"],
	["Bipod (Khaki)", "bipod_01_F_khk", 1000, "item"],
	["Flashlight", "acc_flashlight", 250, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 250, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 500, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 500, "item"],
	["ACO SMG (Red)", "optic_aco_smg", 500, "item"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 500, "item"],
	["ACO (Red)", "optic_Aco", 750, "item"],
	["ACO (Green)", "optic_Aco_grn", 750, "item"],
	["Holosight SMG", "optic_Holosight_smg", 500, "item"],
	["Holosight", "optic_Holosight", 750, "item"],
	["MRCO", "optic_MRCO", 1000, "item"],
	["ERCO", "optic_ERCO_blk_F", 1000, "item"],
	["ERCO (Khaki)", "optic_ERCO_khk_F", 1000, "item"],
	["ERCO (Sand)", "optic_ERCO_snd_F", 1000, "item"],
	["ARCO", "optic_Arco", 1250, "item"],
	["ARCO (Black)", "optic_Arco_blk_F", 1250, "item"],
	["ARCO (G Hex)", "optic_Arco_ghex_F", 1250, "item"],
	["RCO", "optic_Hamr", 1500, "item"],
	["RCO (Khaki)", "optic_Hamr_khk_F", 1500, "item"],
	["MOS", "optic_SOS", 1500, "item"],
	["MOS (Khaki)", "optic_SOS_khk_F", 1500, "item"],
	["DMS", "optic_DMS", 1750, "item"],
	["DMS (G Hex)", "optic_DMS_ghex_F", 1750, "item"],
	["Kahlia (Sightless)", "optic_KHS_old", 2000, "item"],
	["Kahlia", "optic_KHS_blk", 2250, "item"],
	["Kahlia (Hex)", "optic_KHS_hex", 2250, "item"],
	["Kahlia (Tan)", "optic_KHS_tan", 2250, "item"],
	["AMS", "optic_AMS", 2500, "item"],
	["AMS (Khaki)", "optic_AMS_khk", 2500, "item"],
	["AMS (Sand)", "optic_AMS_snd", 2500, "item"],
	["LRPS", "optic_LRPS", 3000, "item"],
	["LRPS (G Hex)", "optic_LRPS_ghex_F", 3000, "item"],
	["LRPS (Tropic)", "optic_LRPS_tna_F", 3000, "item"],
	["NVS", "optic_NVS", 5000, "item"],
	["TWS", "optic_tws", 50000, "item", "HIDDEN"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 60000, "item", "HIDDEN"],
	["Nightstalker", "optic_Nightstalker", 75000, "item", "HIDDEN"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Gas Mask (NATO)", "H_CrewHelmetHeli_B", 500, "hat"],
	["Gas Mask (CSAT)", "H_CrewHelmetHeli_O", 500, "hat"],
	["Gas Mask (AAF)", "H_CrewHelmetHeli_I", 500, "hat"],
	["Wet Rags (white) [for gas]", "H_ShemagOpen_khk", 200, "hat"],
	["Wet Rags (Brown) [for gas]", "H_ShemagOpen_tan", 200, "hat"],
	["Wet Rags (Khaki) [for gas]", "H_Shemag_khk", 250, "hat"],
	["Wet Rags (Olive) [for gas]", "H_Shemag_olive", 250, "hat"],
	["Modular Helmet (Digi)", "H_HelmetIA", 500, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Combat Helmet", "H_HelmetB", 500, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_black", 500, "hat"],
	["Combat Helmet (Camonet)", "H_HelmetB_camo", 500, "hat"],
	["Combat Helmet (Tropic)", "h_helmetb_tna_f", 500, "hat"],
  ["Light Combat Helmet (Tropic)", "h_helmetb_light_tna_f", 500, "hat"],
	["Stealth Combat Helmet", "H_HelmetB_TI_tna_F", 750, "hat"],
	["Special Combat Helmet", "H_HelmetO_ViperSP_hex_F", 5000, "hat"],
	["Special Purpose Helmet (Green Hex)", "h_helmeto_vipersp_ghex_f", 5000, "hat"],

	["Enhanced Combat Helmet", "H_HelmetSpecB", 750, "hat"],
	["Enhanced Combat Helmet (Black)", "H_HelmetSpecB_blk", 750, "hat"],
	["Enhanced Combat Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 750, "hat"],
	["Enhanced Combat Helmet (Tropic)", "H_HelmetB_Enh_tna_F", 750, "hat", "noDLC"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 600, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 600, "hat"],
	["Protector Helmet (Green Hex)", "h_helmeto_ghex_f", 600, "hat"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 750, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 750, "hat"],
	["Assassin Helmet (Green Hex)", "h_helmetspeco_ghex_f", 750, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 1000, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 1000, "hat"],
	["Defender Helmet (G Hex)", "H_HelmetLeaderO_ghex_F", 1000, "hat", "noDLC"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 600, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 600, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 600, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 600, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 600, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 600, "hat"],
	["Crew Helmet (Green Hex) [CSAT]", "h_helmetcrew_o_ghex_f", 600, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 500, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 500, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 500, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 500, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 500, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 500, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 250, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 250, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 250, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 250, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 250, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 250, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 250, "hat"],
	["Military Cap (Tropic)", "h_milcap_tna_f", 250, "hat"],
	["Military Cap (Green Hex)", "h_milcap_ghex_f", 250, "hat"],
	["Military Cap (Gendarmerie)", "h_milcap_gen_f", 250, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 250, "hat"],
	["Bandana (Black)", "H_Bandanna_gry", 100, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 100, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 100, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 100, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 100, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 100, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 100, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 100, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 100, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 100, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 100, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 100, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 100, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 100, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 100, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 100, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 100, "hat"],
	["Beret (Black)", "H_Beret_blk", 100, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 100, "hat"],
	["Beret (NATO)", "H_Beret_02", 100, "hat"],
	["Beret (Gendarmerie)", "h_beret_gen_f", 100, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 100, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 100, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 100, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 100, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 100, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 100, "hat"],
	["Booniehat (Tropic)", "h_booniehat_tna_f", 100, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 100, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 100, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 100, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 100, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 100, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 100, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 100, "hat"],
	["Cap (Black)", "H_Cap_blk", 100, "hat"],
	["Cap (Blue)", "H_Cap_blu", 100, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 100, "hat"],
	["Cap (Green)", "H_Cap_grn", 100, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 100, "hat"],
	["Cap (Olive)", "H_Cap_oli", 100, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 100, "hat"],
	["Cap (Police)", "H_Cap_police", 100, "hat"],
	["Cap (Press)", "H_Cap_press", 100, "hat"],
	["Cap (Red)", "H_Cap_red", 100, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 100, "hat"],
	["Cap (Tan)", "H_Cap_tan", 100, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 100, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 100, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 100, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 100, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 100, "hat"],
	["Shemag (Olive)", "H_Shemag_olive", 250, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 250, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 250, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 250, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 250, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 250, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 250, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 250, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 250, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 250, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 250, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 250, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 250, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 250, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 250, "hat"]
];

uniformArray = compileFinal str
[
	["Wetsuit", "U_B_Wetsuit", 2000, "uni"],
	["Wetsuit", "U_O_Wetsuit", 2000, "uni"],
	["Wetsuit", "U_I_Wetsuit", 2000, "uni"],
	["Light Ghillie", "U_B_GhillieSuit", 2000, "uni"],
	["Light Ghillie", "U_O_GhillieSuit", 2000, "uni"],
	["Light Ghillie", "U_I_GhillieSuit", 2000, "uni"],
	["Light Ghillie (Jungle)", "U_B_T_Sniper_F", 2000, "uni"],
	["Light Ghillie (Jungle)", "U_O_T_Sniper_F", 2000, "uni"],
	["Officer Fatigues (Green Hex) [CSAT]", "u_o_t_officer_f", 2000, "uni"],
	["Full Ghillie (Arid)", "U_O_FullGhillie_ard", 20000, "uni"],
	["Full Ghillie (Arid)", "U_I_FullGhillie_ard", 20000, "uni"],
	["Full Ghillie (Lush)", "U_B_FullGhillie_lsh", 20000, "uni"],
	["Full Ghillie (Arid)", "U_B_FullGhillie_ard", 20000, "uni"],
	["Full Ghillie (Lush)", "U_O_FullGhillie_lsh", 20000, "uni"],
	["Full Ghillie (Lush)", "U_I_FullGhillie_lsh", 20000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_B_FullGhillie_sard", 20000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_O_FullGhillie_sard", 20000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_I_FullGhillie_sard", 20000, "uni"],
	["Full Ghillie (Jungle)", "U_B_T_FullGhillie_tna_F", 20000, "uni"],
	["Full Ghillie (Jungle)", "U_O_T_FullGhillie_tna_F", 20000, "uni"],
	["Full Ghillie (Jungle) [NATO]", "u_b_fullghillie_tna_f", 20000, "uni"],
	["CTRG Stealth Uniform", "U_B_CTRG_Soldier_F", 10000, "uni"],
	["CTRG Stealth Uniform (Rolled-up)", "u_b_ctrg_soldier_3_f", 1000, "uni"],
	["CTRG Stealth Uniform (Tee)", "u_b_ctrg_soldier_2_f", 1000, "uni"],
	["CTRG Urban Uniform (Rolled-up)", "u_b_ctrg_soldier_urb_3_f", 1000, "uni"],
	["CTRG Urban Uniform (Tee)", "u_b_ctrg_soldier_urb_2_f", 1000, "uni"],
	["CTRG Urban Uniform", "u_b_ctrg_soldier_urb_1_f", 1000, "uni"],
	["Special Purpose Suit (Hex)", "U_O_V_Soldier_Viper_hex_F", 7500, "uni"],
	["Special Purpose Suit (G Hex)", "U_O_V_Soldier_Viper_F", 7500, "uni"],
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 250, "uni"],
	["Default Uniform (CSAT)", "U_O_OfficerUniform_ocamo", 250, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 250, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 250, "uni"],
	["Recon Fatigues (Tropic)", "u_b_t_soldier_sl_f", 250, "uni"],
	["Combat Fatigues (Tropic)", "U_B_T_Soldier_F", 250, "uni", "noDLC"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 250, "uni"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 250, "uni"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 250, "uni"],
	["Combat Fatigues (Tropic, Tee)", "u_b_t_soldier_ar_f", 250, "uni"],
	["CTRG Combat Uniform", "U_B_CTRG_1", 250, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 250, "uni"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 250, "uni"],
	["Gendarmerie", "U_B_GEN_Soldier_F", 250, "uni"],
	["Gendarmerie Commander Uniform", "u_b_gen_commander_f", 250, "uni"],
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 500, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 500, "uni"],
	["Fatigues (G Hex)", "U_O_T_Soldier_F", 500, "uni", "noDLC"],
	["Officer Fatigues", "U_I_OfficerUniform", 250, "uni"],
	["Pilot Coveralls", "U_B_PilotCoveralls", 250, "uni"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 250, "uni"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 250, "uni"],
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 250, "uni"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 250, "uni"],
	["Guerilla Garment", "U_BG_Guerilla1_1", 250, "uni"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 250, "uni"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 250, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 250, "uni"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 250, "uni"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 250, "uni"],
	["Guerilla Uniform", "U_BG_leader", 250, "uni"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 250, "uni"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 250, "uni"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 250, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 250, "uni"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 250, "uni"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 250, "uni"],
	["Guerilla Uniform", "U_OG_leader", 250, "uni"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 250, "uni"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 250, "uni"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 250, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 250, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 250, "uni"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 250, "uni"],
	["Guerilla Uniform", "U_IG_leader", 250, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 250, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 250, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 250, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 250, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 250, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 250, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 250, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 250, "uni"],*/
	["Polo (Competitor)", "U_Competitor", 250, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 250, "uni"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 250, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 250, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 250, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 250, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 250, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 250, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 250, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 250, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 250, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 250, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 250, "uni"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 50000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 50000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 50000, "uni"],
	["Paramilitary Garb (Shorts)", "u_i_c_soldier_para_5_f", 100, "uni"],
  ["Paramilitary Garb (Tank Top)", "u_i_c_soldier_para_4_f", 100, "uni"],
  ["Paramilitary Garb (Shirt)", "u_i_c_soldier_para_3_f", 100, "uni"],
  ["Paramilitary Garb (Jacket)", "u_i_c_soldier_para_2_f", 100, "uni"],
  ["Paramilitary Garb (Tee)", "u_i_c_soldier_para_1_f", 100, "uni"],
  ["Syndikat Uniform", "u_i_c_soldier_camo_f", 100, "uni"],
  ["Bandit Clothes (Tank Top)", "u_i_c_soldier_bandit_5_f", 100, "uni"],
  ["Bandit Clothes (Checkered)", "u_i_c_soldier_bandit_4_f", 100, "uni"],
  ["Bandit Clothes (Tee)", "u_i_c_soldier_bandit_3_f", 100, "uni"],
  ["Bandit Clothes (Skull)", "u_i_c_soldier_bandit_2_f", 100, "uni"],
  ["Bandit Clothes (Polo Shirt)", "u_i_c_soldier_bandit_1_f", 100, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 2000, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 2000, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 2000, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", -1, "vest"],
	["Carrier Lite (Tropic)", "V_PlateCarrier1_tna_F", -1, "vest", "noDLC"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", -1, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", -1, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", -1, "vest"],
	["Carrier Rig (Tropic)", "V_PlateCarrier2_tna_F", -1, "vest", "noDLC"],
	["Carrier Rig (Green, No Flag)", "v_platecarrier2_rgr_noflag_f", -1, "vest"],
  ["Carrier Lite (Green, No Flag)", "v_platecarrier1_rgr_noflag_f", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier GL Rig (Tropic)", "V_PlateCarrierGL_tna_F", -1, "vest", "noDLC"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["Carrier Special Rig (Tropic)", "V_PlateCarrierSpec_tna_F", -1, "vest", "noDLC"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Harness (Green Hex)", "v_harnesso_ghex_f", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["LBV Grenadier Harness (Green Hex)", "v_harnessogl_ghex_f", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Slash Bandolier (Green Hex)", "v_bandollierb_ghex_f", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", -1, "vest"],
	["Tactical Chest Rig (Olive)", "v_tacchestrig_oli0", -1, "vest"],
	["Tactical Chest Rig (Green)", "v_tacchestrig_grn0", -1, "vest"],
	["Tactical Chest Rig (Coyote)", "v_tacchestrig_cbr0", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"],
	["Gendarmerie Vest", "v_tacvest_gen_f", -1, "vest"],
	["Press Vest", "V_Press_F", -1, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],
	["Assault Pack (Black)", "B_AssaultPack_blk", 1000, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 1000, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 1000, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 1000, "backpack"],
	["Assault Pack (Tropic)", "B_AssaultPack_tna_F", 1000, "backpack", "noDLC"],

	["Field Pack (Black)", "B_FieldPack_blk", 2000, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 2000, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 2000, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 2000, "backpack"],
	["Field Pack (G Hex)", "B_FieldPack_ghex_F", 2000, "backpack", "noDLC"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 3500, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 3500, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 3500, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 3500, "backpack"],

	["Viper Light Harness (Black)", "B_ViperLightHarness_blk_F", 4500, "backpack", "noDLC"],
	["Viper Light Harness (Hex)", "B_ViperLightHarness_hex_F", 4500, "backpack", "noDLC"],
	["Viper Light Harness (G Hex)", "B_ViperLightHarness_ghex_F", 4500, "backpack", "noDLC"],
	["Viper Light Harness (Khaki)", "B_ViperLightHarness_khk_F", 4500, "backpack", "noDLC"],
	["Viper Light Harness (Olive)", "B_ViperLightHarness_oli_F", 4500, "backpack", "noDLC"],

	["Viper Harness (Black)", "B_ViperHarness_blk_F", 4750, "backpack", "noDLC"],
	["Viper Harness (Hex)", "B_ViperHarness_hex_F", 4750, "backpack", "noDLC"],
	["Viper Harness (G Hex)", "B_ViperHarness_ghex_F", 4750, "backpack", "noDLC"],
	["Viper Harness (Khaki)", "B_ViperHarness_khk_F", 4750, "backpack", "noDLC"],
	["Viper Harness (Olive)", "B_ViperHarness_oli_F", 4750, "backpack", "noDLC"],

	["Carryall (Khaki)", "B_Carryall_khk", 5000, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 5000, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 5000, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 5000, "backpack"],
	["Carryall (G Hex)", "B_Carryall_ghex_F", 5000, "backpack", "noDLC"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 10000, "backpack", "noDLC"],
	["Bergen (Hex)", "B_Bergen_hex_F", 10000, "backpack", "noDLC"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 10000, "backpack", "noDLC"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 10000, "backpack", "noDLC"]
];

genItemArray = compileFinal str
[
	["UAV Terminal (NATO)", "B_UavTerminal", 1500, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 1500, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 1500, "gps"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 10000, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 10000, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 10000, "backpack"],
	["Remote Designator (NATO)", "B_Static_Designator_01_weapon_F", 7500, "backpack"],
	["Remote Designator (CSAT)", "O_Static_Designator_02_weapon_F", 7500, "backpack"],
	["GPS", "ItemGPS", 1000, "gps"],
	["First Aid Kit", "FirstAidKit", 250, "item"],
	["Medikit", "Medikit", 1500, "item"],
	["Toolkit", "ToolKit", 1500, "item"],
	["Mine Detector", "MineDetector", 1000, "item"],
	["Diving Goggles", "G_Diving", 1000, "gogg"],
	["NV Goggles (Brown)", "NVGoggles", 1000, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 1000, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 1000, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 1000, "nvg"],
	["Compact NVG (Hex)", "O_NVGoggles_hex_F", 1500, "nvg"],
	["Compact NVG (G Hex)", "O_NVGoggles_ghex_F", 5000, "nvg"],
	["Compact NVG (Urban)", "O_NVGoggles_urb_F", 5000, "nvg"],
	/*["Improved NVG (Black)", "NVGogglesB_blk_F", 20000, "nvg", "HIDDEN"], // these have thermal ffs*/
	/*["Improved NVG (Green)", "NVGogglesB_grn_F", 20000, "nvg", "HIDDEN"],*/
	/*["Improved NVG (Grey)", "NVGogglesB_gry_F", 20000, "nvg", "HIDDEN"],*/
	["Diving Goggles", "G_Diving", 1000, "gogg"],
	["Binoculars", "Binocular", 500, "binoc"],
	["Rangefinder", "Rangefinder", 1500, "binoc"],
	/*["Laser Designator (Sand)", "Laserdesignator", 2500, "binoc", "noDLC"], // Increase price to 2500 if A3W_disableBuiltInThermal = 0*/
	/*["Laser Designator (Hex)", "Laserdesignator_02", 3000, "binoc", "noDLC"],*/
	/*["Laser Designator (Olive)", "Laserdesignator_03", 2500, "binoc", "noDLC"],*/
	["IR Grenade", "B_IR_Grenade", 500, "mag", "WEST"],
	["IR Grenade", "O_IR_Grenade", 500, "mag", "EAST"],
	["IR Grenade", "I_IR_Grenade", 500, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 250, "mag"],
	["Chemlight (Green)", "Chemlight_green", 250, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 250, "mag"],
	["Chemlight (Red)", "Chemlight_red", 250, "mag"],

	["Stealth Balaclava (Black)", "G_Balaclava_TI_blk_F", 2500, "gogg"],
	["Stealth Balaclava (Black, Goggles)", "G_Balaclava_TI_G_blk_F", 2500, "gogg"],
	["Stealth Balaclava (Green)", "G_Balaclava_TI_tna_F", 2500, "gogg"],
	["Stealth Balaclava (Green, Goggles)", "G_Balaclava_TI_G_tna_F", 2500, "gogg"],
	["Combat Goggles", "G_Combat", 250, "gogg"],
	["Combat Goggles (Green)", "G_Combat_Goggles_tna_F", 250, "gogg", "noDLC"],
	["VR Goggles", "G_Goggles_VR", 250, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 250, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 250, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 250, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 250, "gogg"],
	["Bandana (Aviator)", "G_Bandanna_aviator", 250, "gogg"],
	["Bandana (Beast)", "G_Bandanna_beast", 250, "gogg"],
	["Bandana (Black)", "G_Bandanna_blk", 250, "gogg"],
	["Bandana (Khaki)", "G_Bandanna_khk", 250, "gogg"],
	["Bandana (Olive)", "G_Bandanna_oli", 250, "gogg"],
	["Bandana (Shades)", "G_Bandanna_shades", 250, "gogg"],
	["Bandana (Sport)", "G_Bandanna_sport", 250, "gogg"],
	["Bandana (Tan)", "G_Bandanna_tan", 250, "gogg"],

	["Aviator Glasses", "G_Aviator", 100, "gogg"],
	["Ladies Shades", "G_Lady_Blue", 100, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 100, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 100, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 100, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 100, "gogg"],
	["Shades (Black)", "G_Shades_Black", 100, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 100, "gogg"],
	["Shades (Green)", "G_Shades_Green", 100, "gogg"],
	["Shades (Red)", "G_Shades_Red", 100, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 100, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 100, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 100, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 100, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 100, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 100, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 100, "gogg"],
	["Square Shades", "G_Squares_Tinted", 100, "gogg"],
	["Square Spectacles", "G_Squares", 100, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 100, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 100, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 100, "gogg"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Camo Ammo Cache", "Box_FIA_Support_F", 2500, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 1000, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 1000, "object"],
	["Boom Gate", "Land_BarGate_F", 1500, "object"],
	["Pipes", "Land_Pipes_Large_F", 2000, "object"],
	["Concrete Frame", "Land_CncShelter_F", 2000, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 2000, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 2000, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 3500, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 5000, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 1500, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 2000, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 2500, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 5000, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 4000, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 5000, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 6000, "object"],
	["Concrete Wall", "Land_CncWall1_F", 4000, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 4000, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 6000, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 6000, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 4000, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 5000, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 1500, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 1500, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 2000, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 1500, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 1500, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 2500, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 5000, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 10000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 8000, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 100000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 3500, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 5000, "object"],
	["Scaffolding", "Land_Scaffolding_F", 2500, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 1000, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 1200, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 1300, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 1300, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 1300, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 1300, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 1600, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 2000, "vehicle"],
	["SUV", "C_SUV_01_F", 2200, "vehicle"],
	["Offroad", "C_Offroad_01_F", 2200, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 2300, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 3000, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 8000, "vehicle"],

	["MB 4WD", "C_Offroad_02_unarmed_F", 3000, "vehicle"],
	["MB 4WD (Guerilla)", "I_C_Offroad_02_unarmed_F", 3000, "vehicle"],

	["Truck", "C_Van_01_transport_F", 1400, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 3600, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 3600, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 3600, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 4200, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 8000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 10000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 12000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 15000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 18000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 20000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 25000, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 45000, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 8000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 16000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 15000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 18000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 20000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 25000, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 45000, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 8000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 10000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 15000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 18000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 20000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 50000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 5000, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 30000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 5000, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 30000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 5000, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 30000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Prowler (Doorless)", "B_CTRG_LSV_01_light_F", 3000, "vehicle"],
	["Prowler", "B_T_LSV_01_unarmed_F", 4000, "vehicle"],
	["Prowler HMG", "B_T_LSV_01_armed_F", 16000, "vehicle"],
	["Qilin", "O_T_LSV_02_unarmed_F", 4000, "vehicle"],
	["Qilin Minigun", "O_T_LSV_02_armed_F", 12000, "vehicle"],

	["Hunter", "B_MRAP_01_F", 8000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 30000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 35000, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 8000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 30000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 35000, "vehicle"],
	["Strider", "I_MRAP_03_F", 8000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 30000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 35000, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 45000, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 55000, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 60000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 65000, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 70000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 75000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 80000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 80000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 80000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 100000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 100000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 100000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 100000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 8000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 10000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 14000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 14000, "vehicle"], // AW159

	["Mi-290 Taru (Crane)", "O_Heli_Transport_04_F", 15000, "vehicle"], // CH-54
	["Mi-290 Taru (Box)", "O_Heli_Transport_04_box_F", 16000, "vehicle"],
	["Mi-290 Taru (Fuel)", "O_Heli_Transport_04_fuel_F", 17000, "vehicle"],
	["Mi-290 Taru (Bench)", "O_Heli_Transport_04_bench_F", 18000, "vehicle"],
	["Mi-290 Taru (Transport)", "O_Heli_Transport_04_covered_F", 19000, "vehicle"],
	["CH-67 Huron (Black)", "B_Heli_Transport_03_unarmed_F", 20000, "vehicle"], // CH-47
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 20000, "vehicle"], // AW101

	["Mi-290 Taru (Medical)", "O_Heli_Transport_04_medevac_F",25000, "vehicle"],
	["Mi-290 Taru (Repair)", "O_Heli_Transport_04_repair_F", 30000, "vehicle"],
	["Mi-290 Taru (Ammo)", "O_Heli_Transport_04_ammo_F", 50000, "vehicle"],

	["UH-80 Ghost Hawk", "B_Heli_Transport_01_F", 50000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["CH-67 Huron (Armed)", "B_Heli_Transport_03_F", 60000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 60000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 60000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 70000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 80000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 100000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman", "O_Heli_Attack_02_F", 150000, "vehicle"] // Mi-28 with gunner

	/*["MQ-12 Falcon UAV", "B_T_UAV_03_F", 250000, "vehicle", "HIDDEN"] // OP AS F NO MATTER THE PRICE*/

];

planesArray = compileFinal str
[
	["Caesar BTT", "C_Plane_Civil_01_F", 10000, "vehicle"],

	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 80000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 90000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 120000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 120000, "vehicle"],

	["V-44 X Blackfish (Infantry)", "B_T_VTOL_01_infantry_F", 40000, "vehicle"],
	["V-44 X Blackfish (Gunship)", "B_T_VTOL_01_armed_F", 120000, "vehicle"],
	["Y-32 Xi'an", "O_T_VTOL_02_infantry_F", 120000, "vehicle"],

	["MQ4A Greyhawk Missile UAV", "B_UAV_02_F", 40000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 30000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than Missile ones
	["K40 Ababil-3 Missile UAV (CSAT)", "O_UAV_02_F", 40000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 30000, "vehicle"],
	["K40 Ababil-3 Missile UAV (AAF)", "I_UAV_02_F", 40000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 30000, "vehicle"]
	/*["KH-3A Fenghuang UAV", "O_T_UAV_04_CAS_F", 40000, "vehicle"n "HIDDEN"] // op*/
];

boatsArray = compileFinal str
[
	["Water Scooter", "C_Scooter_Transport_01_F", 1000, "boat"],

	["Rescue Boat", "C_Rubberboat", 1000, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 1000, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 1000, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 1200, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 1200, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 1200, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 1200, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 2000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 1800, "boat"],
	["Motorboat Police", "C_Boat_Civil_01_police_F", 2200, "boat"],
	["RHIB", "I_C_Boat_Transport_02_F", 2500, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 15000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 15000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 15000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 20000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 10000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 10000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			/*["Confederate", _texDir + "confederate.paa"],*/
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			/*["ISIS", _texDir + "isis.paa"],*/
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			/*["Nazi", _texDir + "nazi.paa"],*/
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", ["Black"]], // ["Black (Kart)", [configName (configFile >> "CfgVehicles" >> "C_Kart_01_F" >> "TextureSources" >> "Black")]],
			["White (Kart)", ["White"]],
			["Blue (Kart)", ["Blue"]],
			["Green (Kart)", ["Green"]],
			["Yellow (Kart)", ["Yellow"]],
			["Orange (Kart)", ["Orange"]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru paintjob
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", ["Black"]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Black (Kajman)", ["Black"]],
			["Rusty (Kajman)", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy (Kajman)", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Ghost Hawk camo
		"Heli_Transport_01_base_F",
		[
			//["Black (Ghost Hawk)", ["Black"]], // default
			["Olive (Ghost Hawk)", ["Green"]],
			["Dazzle Black (Ghost Hawk)", ["Olive"]],
			["Dazzle Tan (Ghost Hawk)", ["Sand"]]
		]
	],
	[ // Strider NATO color
		"MRAP_03_base_F",
		[
			["Tan (Strider)", ["Blufor"]]
		]
	],
	[ // Gorgon NATO color
		"APC_Wheeled_03_base_F",
		[
			["Tan (Gorgon)", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty (Hatchback)", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	],
	[ // Prowler paintjobs
		"LSV_01_base_F",
		[
			["Olive (Prowler)", ["Olive"]],
			["Dazzle (Prowler)", ["Dazzle"]],
			["Black (Prowler)", ["Black"]],
			["Tan (Prowler)", ["Sand"]]
		]
	],
	[ // Qilin paintjobs
		"LSV_02_base_F",
		[
			//["Green Hex (Qilin)", ["GreenHex"]], // default
			["Hex (Qilin)", ["Arid"]],
			["Black (Qilin)", ["Black"]]
		]
	],
	[ // Blackfish paintjobs
		"VTOL_01_base_F",
		[
			//["Olive (Blackfish)", ["Olive"]], // default
			["Blue (Blackfish)", ["Blue"]]
		]
	],
	[ // Xi'an paintjobs
		"VTOL_02_base_F",
		[
			//["Green Hex (Xi'an)", ["GreenHex"]], // default
			["Hex (Xi'an)", ["Hex"]],
			["Gray Hex (Xi'an)", ["Grey"]]
		]
	],
	[ // UGV paintjobs
		"UGV_01_base_F",
		[
			["Tan (UGV)", ["Blufor"]],
			["Hex (UGV)", ["Opfor"]],
			["Digital (UGV)", ["Indep"]],
			["Green Hex (UGV))", ["GreenHex"]]
		]
	],
	[ // Ifrit GreenHex
		"MRAP_02_base_F",
		[
			["Green Hex (Ifrit)", ["GreenHex"]]
		]
	],
	[ // Tempest GreenHex
		"Truck_03_base_F",
		[
			["Green Hex (Tempest)", ["GreenHex"]]
		]
	],
	[ // Marid GreenHex
		"APC_Wheeled_02_base_F",
		[
			["Green Hex (Marid)", ["GreenHex"]]
		]
	],
	[ // Kamysh & Tigris GreenHex
		"APC_Tracked_02_base_F",
		[
			["Green Hex (Kamysh)", ["GreenHex"]]
		]
	],
	[ // Varsuk & Sochor GreenHex
		"MBT_02_base_F",
		[
			["Green Hex (Varsuk)", ["GreenHex"]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 300, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 300, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 1500, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 500, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 20000, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 2000, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 2000, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 1000, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 20000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
