// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: serviceVehicle.sqf
//	@file Author:
//  @file edited: CRE4MPIE
//  @credits to: Cael817, Lodac, Wiking, Gigatek (original auth of chopshop)


#include "sellIncludesStart.sqf";

storeSellingHandle = _this spawn
{
#define CHOPSHOP_PRICE_RELATIONSHIP 3
#define VEHICLE_MAX_SELLING_DISTANCE 50

private ["_vehicle","_type", "_price", "_confirmMsg", "_playerMoney", "_bmoney", "_text"];

_storeNPC = _this select 0;
_vehicle = objectFromNetId (player getVariable ["lastVehicleRidden", ""]);
_type = typeOf _vehicle;
_playerMoney = player getVariable "bmoney";
_price = 500;
_objClass = typeOf _vehicle;
_objName = getText (configFile >> "CfgVehicles" >> _objClass >> "displayName");

	if (isNull _vehicle) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		["Your previous vehicle does not exist anymore.", "Error"] call  BIS_fnc_guiMessage;
	};

	if (_vehicle distance _storeNPC > VEHICLE_MAX_SELLING_DISTANCE) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		[format ['"%1" is further away than %2m from the servicepoint.', _objname, VEHICLE_MAX_SELLING_DISTANCE], "Error"] call  BIS_fnc_guiMessage;
	};

{
	if (_type == _x select 1) then
	{
		// If the vehicle costs less than 60000 in the store, it costs half of the normal resupply.
		_price = _x select 2;
		if (_price > 60000) then {
			_price = 45000;
		} else {
			_price = 22500;
		};
	/*_price = _price / CHOPSHOP_PRICE_RELATIONSHIP;*/
	};

} forEach (call allVehStoreVehicles);

	if (_price > _playerMoney) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		[format ['You do not have enough money to service the %1', _objname], "Error"] call  BIS_fnc_guiMessage;
	};

	if (!isNil "_price") then
	{
		// Add total sell value to confirm message
		_confirmMsg = format ["Servicing your %1 will cost you $%2 <br/>", _objName, _price];
		_confirmMsg = _confirmMsg + format ["<br/><t font='EtelkaMonospaceProBold'>1</t> x %1", _objName];

		// Display confirm message
		if ([parseText _confirmMsg, "Confirm", "SERVICE", true] call BIS_fnc_guiMessage) then
		{
		  sleep (1 + (random 4));
		  _vehicle setFuel 1;
		  sleep 0.1;
		  _vehicle setVehicleAmmo 1;
		  sleep 0.1;
		  _vehicle setDamage 0;

			player setVariable["bmoney",(player getVariable "bmoney")-_price,true];
			hint parseText format ["<t color='#00d838'>Success!</t><br/>----------------<br/>Your %1 has been rearmed, repaired and refueled.'", _objname];

		if (["A3W_playerSaving"] call isConfigOn) then
		{
				[] spawn fn_savePlayerData;
		};
		 };
	} else {
		hint parseText "<t color='#ffff00'>An unknown error occurred.</t><br/>Cancelled.";
		playSound "FD_CP_Not_Clear_F";
	};
};

#include "sellIncludesEnd.sqf";
