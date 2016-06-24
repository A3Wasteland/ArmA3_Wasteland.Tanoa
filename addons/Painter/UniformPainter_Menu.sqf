// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: UniformPainter_ownerMenu.sqf
//	@file Author: LouD / Cael817 for original script
//	@file Description: Paint script

#define Paint_Menu_option 17001
disableSerialization;

private ["_start","_panelOptions","_Paint_select","_displayPaint"];
_uid = getPlayerUID player;
if (!isNil "_uid") then {
	_start = createDialog "Paint_Menu";

	_displayPaint = uiNamespace getVariable "Paint_Menu";
	_Paint_select = _displayPaint displayCtrl Paint_Menu_option;

	_panelOptions = 
	[
		"Bloodshot ($500)",
		"Swamp ($500)",
		"Urban ($500)",
		"Orange Camo ($500)",
		"Digital Wood ($500)",
		"Plain Wood ($500)",
		"Hello Kitty ($500)",
		"Leopard ($500)",
		"Weed ($500)"
	];

	{
		_Paint_select lbAdd _x;
	} forEach _panelOptions;
};

