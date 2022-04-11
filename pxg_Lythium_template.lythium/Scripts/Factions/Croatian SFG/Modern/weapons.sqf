params["_side","_faction","_variant", "_loadout"]; 

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "rhs_weap_vhsk2";
			  player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			  player addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC"
	};
	case "plt";
	case "sqd_ld";
	case "rcn_ld";
	case "sqd_gre":{ player addWeapon "rhs_weap_vhsd2_bg";
			  		 player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			  		 player addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC"
	};
	case "sqd_ar": { player addWeapon "hlc_lmg_mk46mod1";
					 player addPrimaryWeaponItem "ACE_muzzle_mzls_L";
					 player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
					 player addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC";
					 player addPrimaryWeaponItem "bipod_01_F_blk"
	};
	case "rcn_dmr": {player addWeapon "arifle_SPAR_03_blk_F";
					 player addPrimaryWeaponItem "ACE_muzzle_mzls_B";
					 player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
					 player addPrimaryWeaponItem "hlc_optic_ATACR_Offset";
					 player addPrimaryWeaponItem "bipod_01_F_blk"
	};
	case "sup_mmg_g": {player addWeapon "rhs_weap_fnmag";
					   player addPrimaryWeaponItem "hlc_muzzle_MAG58_Brake";
					   player addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC"
	};
};

// add secondary weapon

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_M136"};
	case "sup_mat_g": {	player addWeapon "launch_MRAWS_green_F"};
};