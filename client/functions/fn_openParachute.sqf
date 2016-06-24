// ******************************************************************************************
//	@file Name: fn_openParachute.sqf
//	@file Author: AgentRev

#define PARACHUTE_PRECHECK ({player distance _x < 10 max sizeOf typeOf _x && count crew _x > 0} count (player nearEntities ["Helicopter_Base_F", 20]) == 0)

if (!alive player || vehicle player != player) exitWith {};

if (PARACHUTE_PRECHECK) then
{
	call A3W_fnc_forceOpenParachute;
}
else
{
	["A3W_openParachute_preCheck", "onEachFrame",
	{
		if (PARACHUTE_PRECHECK) then
		{
			call A3W_fnc_forceOpenParachute;
			["A3W_openParachute_preCheck", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		};
	}] call BIS_fnc_addStackedEventHandler;
};
