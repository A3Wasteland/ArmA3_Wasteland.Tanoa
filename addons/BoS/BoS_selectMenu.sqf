//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

private ["_ownersuid","_coownersuid,","_owner", "_coowners"];
_uid = getPlayerUID player;
_objects = nearestObjects [player, ["Land_Device_assembled_F"], 5];
_owner = cursorTarget getvariable "ownerUID";
_coowners = cursorTarget getvariable "coownerUID";

if (isNIl "_coowners") then
	{
	_coowners = "";
	};

if (!isNull (uiNamespace getVariable ["BoS_Menu", displayNull]) && !(player call A3W_fnc_isUnconscious)) exitWith {};

switch (true) do
{
	case (_uid == _owner):
	{
		execVM "addons\BoS\BoS_ownerMenu.sqf";
		hint "Welcome Owner";
	};
	case (_uid != _owner):
	{
		execVM "addons\BoS\password_enter.sqf";
		hint "Welcome";
	};
/*	case (isNil _uid || isNull _uid):
	{
		hint "You need to lock the object first!";
	};*/
	default
	{
	hint "An unknown error occurred. This could be because your Base Locker is not locked."
	};

};
