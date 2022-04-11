_indexFaction = lbCurSel 1500;
_indexLoadout = lbCurSel 1501;

_faction = lbData [1500, _indexFaction];
_loadout = lbData [1501, _indexLoadout];

// generate slot ID
_slotStr = str player;
_slotId = _slotStr splitString "_";
_slotSide = _slotId #0;
_slotGroup = _slotId #1;
_slotRole = _slotId #2;
_srCh = 1;
_lrCh = 1;

// Assign radio channel
switch (_slotGroup) do {
	default { };
	case "plt": {_srCh = 3};
	case "sqd1": { _srCh = 1};
	case "sqd2": { _srCh = 2};
	case "sqd3": { _srCh = 3};
	case "sup1": { _srCh = 5};
	case "sup2": { _srCh = 6};
	case "sup3": { _srCh = 7};
	case "sup4": { _srCh = 8};
	case "sup5": { _srCh = 9};
	case "rcn1": { _srCh = 10};
	case "rcn2": { _srCh = 11};
	case "tac": {_srCh = 12; _lrCh = 2};
	case "ar1": {_srCh = 13};
	case "ar2": {_srCh = 14};
	case "ar3": {_srCh = 15};
	case "ar4": {_srCh = 16};
};

hint format ["%1 %2", _faction, _loadout];

// removes all items from current loadout
removeAllWeapons player;
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

// Set traits 
switch (_loadout) do {
	default {
		player setVariable ["ace_medical_medicclass",0];
		player setVariable ["ACE_IsEngineer",0]
		};
	case "sqd_med": { 
		player setVariable ["ace_medical_medicclass",1];
		player setVariable ["ACE_IsEngineer",0]
		};
	case "logi": { 
		player setVariable ["ACE_IsEngineer",2];
		player setVariable ["ace_medical_medicclass",0]
		};
};

 // add uniform
switch (_loadout) do {
	default { player forceAddUniform "rhsgref_uniform_altis_lizard"};
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "rhssaf_helmet_m97_olive_nocamo"};
	case "sqd_ar";
	case "sup_mmg_g";
	case "sqd_gre": { player addHeadgear "rhssaf_helmet_m97_olive_nocamo_black_ess_bare"};
	case "rcn_ld";
	case "rcn_drone";
	case "rcn_dmr": { player addHeadgear "H_Booniehat_oli"};
	case "ar_c": {player addHeadgear "H_HelmetCrew_I"};
	case "pil": {player addHeadgear "H_PilotHelmetHeli_B"};
};

// add vest
switch (_loadout) do {
	default { player addVest "V_HarnessO_gry"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "B_Kitbag_sgg"};
	case "sqd_med";
	case "sup_mat_l": {player addBackpack "VSM_OGA_OD_carryall"};
	case "sup_mor_l": {player addBackpack "B_Mortar_01_support_F"};
	case "sup_mor_g": {player addBackpack "B_Mortar_01_weapon_F"};
	case "rcn_drone": {player addBackpack "B_UAV_01_backpack_F"};
	case "ar_c";
	case "pil": {};
};

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "hlc_rifle_g3a3";
			  player addPrimaryWeaponItem "hlc_optic_STANAGZF2D_G3"
	};
	case "sqd_ar": {player addWeapon "hlc_lmg_MG3_optic";
					player addPrimaryWeaponItem "ACE_optic_MRCO_2D"
	};
	case "sqd_dmr": {player addWeapon "hlc_rifle_g3sg1ris";
					 player addPrimaryWeaponItem "hlc_optic_STANAGZF2D_G3";
					 player addPrimaryWeaponItem "hlc_muzzle_SF3P_762R";
	};	
	case "rcn_dmr": {player addWeapon "hlc_rifle_g3sg1ris";
					 player addPrimaryWeaponItem "hlc_optic_LeupoldM3A";
					 player addPrimaryWeaponItem "hlc_muzzle_SF3P_762R";
	};
	case "sup_mmg_g": {	player addWeapon "hlc_lmg_MG3_optic";
						player addPrimaryWeaponItem "ACE_optic_MRCO_2D"
	};
	case "ar_c";
	case "pil": {player addWeapon "hlc_rifle_g3a3"};
};

// add secondary weapon
switch (_loadout) do {
	default {};
	case "plt";
	case "sqd_ld";
	case "sqd_gre";
	case "rcn_ld": {player addWeapon "rhs_weap_M320"};
};

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_M136"};
	case "sup_mat_g": {	player addWeapon "rhs_weap_maaws";
						player addSecondaryWeaponItem "rhs_optic_maaws"};
};

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_20rnd_762x51_b_G3"};
		for "_i" from 1 to 2 do { player addItemToVest "hlc_20rnd_762x51_MDim_G3"};		
		for "_i" from 1 to 2 do { player addItemToBackpack "hlc_20rnd_762x51_MDim_G3"};
	};
	case "sqd_ar": {
		for "_i" from 1 to 2 do { player addItemToVest "hlc_100Rnd_762x51_M_MG3"};
		for "_i" from 1 to 6 do { player addItemToBackpack "hlc_100Rnd_762x51_M_MG3"};
	};
	case "sqd_dmr";
	case "rcn_dmr": {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_20rnd_762x51_b_G3"};
		for "_i" from 1 to 4 do { player addItemToBackpack "hlc_20rnd_762x51_MDim_G3"};
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 2 do { player addItemToVest "hlc_100Rnd_762x51_M_MG3"};
		for "_i" from 1 to 6 do { player addItemToBackpack "hlc_100Rnd_762x51_M_MG3"};
	};
	case "rcn_drone": {
		for "_i" from 1 to 2 do { player addItemToVest "hlc_20rnd_762x51_b_G3"};
		for "_i" from 1 to 2 do { player addItemToVest "hlc_20rnd_762x51_MDim_G3"};
		for "_i" from 1 to 2 do { player addItemToVest "ACE_UAVBattery"};
	};
	case "ar_c";
	case "pil": {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_20rnd_762x51_b_G3"};
	};
};

// add secondary ammo
//switch (_loadout) do {
//	default {};
//};

// add assistant ammo 
switch (_loadout) do {
	default {};
	case "sqd_aar": {
		for "_i" from 1 to 8 do { player addItemToBackpack "hlc_100Rnd_762x51_M_MG3"};
	};
	case "sup_mmg_l": {
		for "_i" from 1 to 8 do { player addItemToBackpack "hlc_100Rnd_762x51_M_MG3"};
	};
	case "sup_mat_l": {
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_maaws_HEAT"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_mag_maaws_HEDP"};
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sup_mat_g": {
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_maaws_HEDP"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_maaws_HEAT"};
	};
};

// add grenades
switch (_loadout) do {
	default {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_an_m8hc"};
		for "_i" from 1 to 2 do { player addItemToVest "SmokeShellGreen"};
		for "_i" from 1 to 2 do { player addItemToVest "SmokeShellRed"};
		for "_i" from 1 to 2 do { player addItemToVest "HandGrenade"};
	};
};

// add 40mm grenades
switch (_loadout) do {
	default {};
	case "plt": {
		for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_HE_Grenade_shell"}; 
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "UGL_FlareWhite_F"};
	};
	case "sqd_ld";
	case "sqd_gre";
	case "rcn_ld": {
		for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_HE_Grenade_shell"};
		for "_i" from 1 to 4 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell"};
		for "_i" from 1 to 4 do {player addItemToBackpack "UGL_FlareWhite_F"};
	};
};

// add radios
switch (_loadout) do {
	default { player addItemToUniform "ACRE_PRC343"};
	case "plt"; 
	case "logi": { 
		player addItemToUniform "ACRE_PRC152"; 
		player addItemToBackpack "ACRE_PRC117F" 
	};
	case "tacp": { 
		player addItemToUniform "ACRE_PRC343"; 
		player addItemToBackpack "ACRE_PRC117F" 
	};
	case "sqd_ld";
	case "rcn_ld";
	case "sup_mmg_l";
	case "sup_mat_l";
	case "sup_mor_l":{
		player addItemToUniform "ACRE_PRC343";
		player addItemToUniform "ACRE_PRC152"
	};
	case "pil": {};
};

// add common gear
switch (_loadout) do {
	default { player linkItem "ItemGPS"};
	case "rcn_drone": { player linkItem "B_UavTerminal"};
};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ACE_NVG_Gen4_Black";
player addItemToUniform "ACE_microDAGR"; 
player addItemToUniform "ACE_IR_Strobe_Item"; 
player addItemToUniform "ACE_Flashlight_XL50"; 
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_EarPlugs";
player addItemToVest "ACE_CableTie";
player addItemToVest "ACE_CableTie";
player addItemToBackpack "ACE_EntrenchingTool";

// add specialised gear
switch (_loadout) do {
	default { player addWeapon "ACE_Vector";};
	case "plt";
	case "tacp": {
		player addWeapon "Laserdesignator";
		player addItemToBackpack "Laserbatteries";
		player addItemToBackpack "Laserbatteries";
	};
};

switch (_loadout) do {
	default {};
	case "logi": {player addItemToBackpack "ToolKit"};
	case "sqd_eng": {
		for "_i" from 1 to 3 do { player addItemToBackpack "DemoCharge_Remote_Mag"};
		player addItemToBackpack "MineDetector";
		player addItemToBackpack "ACE_Clacker";
		player addItemToBackpack "ACE_M26_Clacker";
		player addItemToBackpack "ACE_wirecutter";
		player addItemToBackpack "ACE_DefusalKit";
		player addItemToBackpack "ACE_SpraypaintBlue";
	};
};

// add personal medical items
for "_i" from 1 to 4 do { player addItemToUniform "ACE_fieldDressing"};
for "_i" from 1 to 4 do { player addItemToUniform "ACE_elasticBandage"};
for "_i" from 1 to 4 do { player addItemToUniform "ACE_quikclot"};
for "_i" from 1 to 4 do { player addItemToUniform "ACE_packingBandage"};
for "_i" from 1 to 3 do { player addItemToUniform "ACE_morphine"};
for "_i" from 1 to 3 do { player addItemToUniform "ACE_epinephrine"};
for "_i" from 1 to 2 do { player addItemToUniform "ACE_tourniquet"};
for "_i" from 1 to 2 do { player addItemToBackpack "ACE_bloodIV"};
for "_i" from 1 to 2 do { player addItemToBackpack "ACE_bloodIV_500"};

// add medic medical items
switch (_loadout) do {
	default {};
	case "sqd_med": {
		for "_i" from 1 to 1 do { player addItemToBackpack "ACE_surgicalKit"};
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_fieldDressing"};
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_elasticBandage"};
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_quikclot"};
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_packingBandage"};				
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_bloodIV"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_bloodIV_500"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_adenosine"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_morphine"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_epinephrine"};
	};
};

// configure radios
waitUntil { ([] call acre_api_fnc_isInitialized) };

/// Check for radio type
_hasRadio343 = [player, "ACRE_PRC343"] call acre_api_fnc_hasKindOfRadio;
_hasRadio152 = [player, "ACRE_PRC152"] call acre_api_fnc_hasKindOfRadio;
_hasRadio117 = [player, "ACRE_PRC117F"] call acre_api_fnc_hasKindOfRadio;

// set radio channel, default channel 1 is correct for most 152s and 117. Hence only swap channel in specific case.
if (_hasradio343) then { [(["ACRE_PRC343"] call acre_api_fnc_getRadioByType), _srCh] call acre_api_fnc_setRadioChannel};
if (_hasradio152 && _slotGroup == "plt") then { [(["ACRE_PRC152"] call acre_api_fnc_getRadioByType), _srCh] call acre_api_fnc_setRadioChannel};
if (_hasradio117 && _slotRole == "fac1") then { [(["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), _lrCh] call acre_api_fnc_setRadioChannel};