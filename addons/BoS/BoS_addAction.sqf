//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

BoS_MarkOwned =
{
hint "Marking owned objects";
execVM "addons\BoS\markOwned.sqf";
};

BoS_BaseMenu =
{
hint "Opening base menu";
execVM "addons\BoS\BoS_selectMenu.sqf";
};

BoS_NearBase =
{
	_unit = _this select 0;
	_objects = nearestObjects [player, ["Land_Device_assembled_F"], 5];
	_return = (count _objects > 0 && alive player);
	_return
};

BoS_HasGPS =
{
	_unit = _this select 0;
	_gps = ["ItemGPS", "B_UavTerminal", "O_UavTerminal", "I_UavTerminal"];
	_equipped = ({_x in _gps} count assignedItems player > 0);
	_return = (_equipped && alive player);
	_return
};

BoS_Actions =
{
	private ["_unit"];
	_unit = _this select 0;
	//_unit addAction ["<t color=""#FFE496"">" + "Open Base Menu", BoS_BaseMenu, [_unit], 1, true, true, "", "[] call BoS_NearBase"];
	_unit addAction ["<t color=""#FFE496"">" + "Mark my objects", BoS_MarkOwned, [_unit], 1, false, false, "", "[_unit] call BoS_HasGPS"];
	_unit addAction ["<t color=""#FFE496"">" + "Open Base Menu", BoS_BaseMenu, [cursorTarget], 1, false, false, "", "(vehicle player == player) and (cursortarget iskindof 'Land_Device_assembled_F') and (player distance cursortarget) < 5"];
};

BoS_Initialized = true;