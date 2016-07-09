// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupMissionObject.sqf
//	@file Author: AgentRev

// For use in mission.sqm

params [["_object",objNull,[objNull]], ["_disableR3F",true,[false]], ["_straightenUp",false,[false]], ["_customCode",nil,[{}]]];

if (_disableR3F) then
{
	_object setVariable ["R3F_LOG_disabled", true];
};

if (!local _object) exitWith {};

if (_straightenUp) then
{
	_object setVectorUp [0,0,1];
};

if (!isNil "_customCode") then
{
	_object call _customCode;
};
