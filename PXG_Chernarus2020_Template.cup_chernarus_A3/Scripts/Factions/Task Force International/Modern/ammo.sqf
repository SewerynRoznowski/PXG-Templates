params["_side","_faction","_variant", "_loadout"]; 

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_30Rnd_545x39_EP_ak"};
		for "_i" from 1 to 4 do { player addItemToVest "hlc_30Rnd_545x39_t_ak"};
	};
	case "sqd_ar": {
		for "_i" from 1 to 6 do { player addItemToVest "hlc_60Rnd_545x39_t_rpk"};
		for "_i" from 1 to 6 do { player addItemToBackpack "hlc_60Rnd_545x39_t_rpk"};
	};
	case "sqd_dmr";
	case "rcn_dmr": {
		for "_i" from 1 to 8 do { player addItemToVest "rhs_10Rnd_762x54mmR_7N14"};
		for "_i" from 1 to 8 do { player addItemToBackpack "rhs_10Rnd_762x54mmR_7N14"};
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_100Rnd_762x54mmR_green"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "rcn_drone": {
		for "_i" from 1 to 2 do { player addItemToVest "hlc_30Rnd_545x39_EP_ak"};
		for "_i" from 1 to 2 do { player addItemToVest "hlc_30Rnd_545x39_t_ak"};
		for "_i" from 1 to 2 do { player addItemToVest "ACE_UAVBattery"};
	};
	case "ar_c";
	case "pil": {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_30Rnd_545x39_EP_ak"};
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
		for "_i" from 1 to 10 do { player addItemToBackpack "hlc_60Rnd_545x39_t_rpk"};
	};
	case "sup_mmg_l": {
		for "_i" from 1 to 4 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "sup_mat_l": {
		for "_i" from 1 to 3 do { player addItemToBackpack "rhs_rpg7_PG7V_mag"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_rpg7_OG7V_mag"};
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sup_mat_g": {
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_rpg7_PG7V_mag"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_rpg7_OG7V_mag"};
	};
};

// add grenades
switch (_loadout) do {
	default {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_rdg2_white"};
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_brd_m83_green"};
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_brd_m83_red"};
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_rgd5"};
	};
};

// add 40mm grenades
switch (_loadout) do {
	default {};
	case "plt": {
		for "_i" from 1 to 5 do {player addItemToBackpack "hlc_VOG25_AK"}; 
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_White"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_Red"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_green"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_orange"};
	};
	case "sqd_ld";
	case "sqd_gre";
	case "rcn_ld": {
		for "_i" from 1 to 10 do {player addItemToBackpack "hlc_VOG25_AK"};
		for "_i" from 1 to 4 do {player addItemToBackpack "hlc_GRD_White"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_Red"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_green"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_orange"};
	};
};