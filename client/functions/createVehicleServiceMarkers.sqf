// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: createGeneralStoreMarkers.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 28/11/2012 05:19
//	@file Args:

//Creates the markers around general stores.
{
	if (!isPlayer _x && {(vehicleVarName _x) select [0,8] == "VehService"}) then
	{
		_npcPos = getPosATL _x;

		// Vehicle Service title
		_markerName = format["marker_shop_title_%1",_x];
		deleteMarkerLocal _markerName;
		_marker = createMarkerLocal [_markerName, _npcPos];
		_markerName setMarkerShapeLocal "ICON";
		_markerName setMarkerTypeLocal "marker_294";
		_markerName setMarkerColorLocal "ColorOrange";
		_markerName setMarkerSizeLocal [0.5,0.5];
		_markerName setMarkerTextLocal "Vehicle Service";
	};
} forEach entities "Helipad_base_F";
