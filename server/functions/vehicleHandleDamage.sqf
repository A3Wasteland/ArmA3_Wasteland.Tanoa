// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vehicleHandleDamage.sqf
//	@file Author: AgentRev

#define COLLISION_DMG_SCALE 0.2
#define PLANE_COLLISION_DMG_SCALE 0.5
#define WHEEL_COLLISION_DMG_SCALE 0.05
#define HELI_MISSILE_DMG_SCALE 5.0
#define PLANE_MISSILE_DMG_SCALE 1.5
#define IFV_DMG_SCALE 1.5
#define TANK_DMG_SCALE 2.0

_vehicle = _this select 0;
_selection = _this select 1;
_damage = _this select 2;
// _source = _this select 3;
_ammo = _this select 4;

if (_selection != "?") then
{
	_oldDamage = if (_selection == "") then { damage _vehicle } else { _vehicle getHit _selection };

	if (!isNil "_oldDamage") then
	{
		_isHeli = _vehicle isKindOf "Helicopter";
		_isPlane = _vehicle isKindOf "Plane";

		if (_isHeli && _selection == "fuel_hit") then
		{
			_damage = 0; // Block goddamn fuel leak
		}
		else
		{
			if (_ammo == "") then // Reduce collision damage
			{
				_scale = switch (true) do
				{
					case (_selection select [0,5] == "wheel"): { WHEEL_COLLISION_DMG_SCALE };
					case (_isPlane):                           { PLANE_COLLISION_DMG_SCALE };
					default                                    { COLLISION_DMG_SCALE };
				};

				_damage = ((_damage - _oldDamage) * _scale) + _oldDamage;
			}
			else
			{
				_isMissile = _ammo isKindOf "MissileBase"; // ({_ammo isKindOf _x} count ["R_PG32V_F", "M_NLAW_AT_F", "M_Titan_AT", "M_Titan_AA", "M_Air_AA", "M_Scalpel_AT", "Missile_AGM_02_F", "Missile_AA_04_F"] > 0);

				switch (true) do
				{
					// If vehicle is heli and projectile is missile then multiply damage
					case (_isHeli):
					{
						if (_selection == "" && _isMissile) then
						{
							_damage = ((_damage - _oldDamage) * HELI_MISSILE_DMG_SCALE) + _oldDamage;
						};
					};

					// If vehicle is plane and projectile is missile then multiply damage
					case (_isPlane):
					{
						if (_selection == "" && _isMissile) then
						{
							_damage = ((_damage - _oldDamage) * PLANE_MISSILE_DMG_SCALE) + _oldDamage;
						};
					};

					// If vehicle is tank then multiply damage
					case (_vehicle isKindOf "Tank"):
					{
						//if (_isMissile) then
						//{
							_scale = if ({_vehicle isKindOf _x} count ["APC_Tracked_01_base_F", "APC_Tracked_02_base_F", "APC_Tracked_03_base_F"] > 0) then {
								IFV_DMG_SCALE
							} else {
								TANK_DMG_SCALE
							};

							_damage = ((_damage - _oldDamage) * _scale) + _oldDamage;
						//};
					};
				};
			};
		};
	};
};

_damage