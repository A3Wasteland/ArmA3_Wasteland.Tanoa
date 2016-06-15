//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

waitUntil {time > 0};
execVM "addons\BoS\BoS_addAction.sqf";
waitUntil {!isNil "BoS_Initialized"};
[player] call BoS_Actions;

systemChat "BoS Initialized";
diag_log "BoS Initialized";