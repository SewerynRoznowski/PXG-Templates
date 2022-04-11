params["_side","_faction","_variant", "_loadout"]; 

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "hlc_rifle_ak12";
			  player addPrimaryWeaponItem "optic_Hamr";
	};
	case "plt";
	case "sqd_ld";
	case "rcn_ld";
	case "sqd_gre":{ player addWeapon "hlc_rifle_ak12GL";
					player addPrimaryWeaponItem "optic_Hamr"
	};
	case "sqd_ar": {player addWeapon "hlc_rifle_RPK12";
					player addPrimaryWeaponItem "optic_Hamr";
	};
	case "sqd_dmr": {player addWeapon "rhs_weap_svdp";
					 player addPrimaryWeaponItem "rhs_acc_pso1m21_svd"
	};	
	case "rcn_dmr": {player addWeapon "rhs_weap_svdp";
					 player addPrimaryWeaponItem "rhs_acc_pso1m21_svd"
	};
	case "sup_mmg_g": {	player addWeapon "rhs_weap_pkp";
						player addPrimaryWeaponItem "rhs_acc_1p29_pkp"
	};
};

// add secondary weapon

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_rpg75"};
	case "sup_mat_g": {	player addWeapon "rhs_weap_rpg7";
						player addSecondaryWeaponItem "rhs_acc_pgo7v3"};
};