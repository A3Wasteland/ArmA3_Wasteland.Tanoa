//	@file Version:
//	@file Name:
//	@file Author: Cael817, all credit to Killzone Kid
//	@file Created:

{
	_x setHit ["light_1_hitpoint", 0.97];
	_x setHit ["light_2_hitpoint", 0.97];
	_x setHit ["light_3_hitpoint", 0.97];
	_x setHit ["light_4_hitpoint", 0.97];
	_x setHit ["light_1_hit", 0.97];
	_x setHit ["light_2_hit", 0.97];
	_x setHit ["light_3_hit", 0.97];
	_x setHit ["light_4_hit", 0.97];
} forEach nearestObjects [player, [
	"Lamps_base_F",
	"PowerLines_base_F",
	"PowerLines_Small_base_F",
	"Land_Device_assembled_F"
], 30];
hint "Lights OFF";