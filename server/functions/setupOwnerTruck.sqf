// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupResupplyTruck.sqf
//	@file Author: AgentRev

_this addAction ["<img image='client\icons\store.paa'/> Change Ownership", "client\functions\fn_ownertruck.sqf", [], 51, true, true, "", "vehicle _this != _this && _this distance _target <= 30"];

if (!isServer) exitWith {};

_this lock 2;
_this allowDamage false;
_this setVariable ["R3F_LOG_disabled", true, true];
_this setVariable ["A3W_Truck", true, true];
_this setVariable ["ownerName", "Change Ownership", true];
_this setAmmoCargo 0;
_this setFuelCargo 0;
_this setRepairCargo 0;

_marker = createMarker ["Owner_Truck_" + netId _this, getPosATL _this];
_marker setMarkerShape "ICON";
_marker setMarkerType "mil_dot";
_marker setMarkerText "Change Ownership";
_marker setMarkerColor "ColorBlack";
_marker setMarkerSize [1,1];

_this spawn
{
	waitUntil {!isNil "A3W_serverSetupComplete"};
	[_this] call vehicleSetup;
	_this enableSimulationGlobal false;
};
