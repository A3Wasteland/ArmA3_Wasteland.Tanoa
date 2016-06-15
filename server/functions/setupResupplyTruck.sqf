// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupResupplyTruck.sqf
//	@file Author: AgentRev

_this addAction ["<img image='client\icons\repair.paa'/> Resupply", "client\functions\fn_resupplytruck.sqf", [], 51, true, true, "", "vehicle _this != _this && _this distance _target <= 30"];

if (!isServer) exitWith {};

_this lock 2;
_this allowDamage false;
_this setVariable ["R3F_LOG_disabled", true, true];
_this setVariable ["A3W_Truck", true, true];
_this setVariable ["ownerName", "Resupply", true];
_this setAmmoCargo 0;
_this setFuelCargo 0;
_this setRepairCargo 0;

_marker = createMarker ["Resupply_Truck_" + netId _this, getPosATL _this];
_marker setMarkerShape "ICON";
_marker setMarkerType "n_maint";
_marker setMarkerText "Vehicle Resupply";
_marker setMarkerColor "ColorCivilian";
_marker setMarkerSize [0.5, 0.5];
_marker setMarkerDir 0;

_this spawn
{
	waitUntil {!isNil "A3W_serverSetupComplete"};
	[_this] call vehicleSetup;
	_this enableSimulationGlobal false;
};
