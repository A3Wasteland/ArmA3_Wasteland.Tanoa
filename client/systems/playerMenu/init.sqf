// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
#include "dialog\player_sys.sqf";
if(isnil {player getVariable "cmoney"}) then {player setVariable["cmoney",0,true];};
if(dialog) exitwith{};

disableSerialization;

private["_Dialog","_foodtext","_watertext","_moneytext","_mvalue","_rogue"];

_playerDialog = createDialog "playerSettings";

_Dialog = findDisplay playersys_DIALOG;
_foodtext = _Dialog displayCtrl food_text;
_watertext = _Dialog displayCtrl water_text;
_moneytext = _Dialog displayCtrl money_text;
_mvalue = _Dialog displayCtrl money_value;
_rogue = _Dialog displayCtrl rogue_text;
_uptime = _Dialog displayCtrl uptime_text;
_groupButton = _Dialog displayCtrl groupButton;
_foodtext ctrlSetText format["TS: ts.gfsgaming.com"];
_watertext ctrlSettext format["Web: www.gfsgaming.com"];
_moneytext ctrlSetText format["%1", [player getVariable ["cmoney", 0]] call fn_numbersText];

{
	_mvalue lbSetData [_mvalue lbAdd format ["$%1", [_x] call fn_numbersText], str _x];
} forEach [500, 1000, 2000, 3000, 4000, 5000, 10000, 15000, 20000, 25000, 50000, 100000];

[] spawn
{
	disableSerialization;
	_dialog = findDisplay playersys_DIALOG;
	while {!isNull _dialog} do
	{
		_escMenu = findDisplay 49;
		if (!isNull _escMenu) exitWith { _escMenu closeDisplay 0 }; // Force close Esc menu if open
		sleep 0.1;
	};
};
