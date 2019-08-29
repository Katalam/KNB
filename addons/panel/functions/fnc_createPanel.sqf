#include "script_component.hpp"
/*
 * Author: Katalam
 * Create a colorful tarp at given position.
 *
 * Arguments:
 * 0: Target <OBJECT>
 * 1: Player <OBJECT>
 * 2: Parameter <ARRAY> of <STRING> and <BOOL> (default: big red)
 *
 * Return Value:
 * Successful <BOOL>
 *
 * Example:
 * [cursorTarget, player, ["RED", true]] call KNB_panel_fnc_createPanel;
 *
 * Public: Yes
 */

params [
    "",
    ["_player", objNull, [objNull]],
    ["_params", [], [[]]]
];
_params params [
    ["_color", "RED", [""]],
    ["_small", false, [false]]
];

private _position = getPos _player;
private "_classname";

switch (_color) do {
    case "GREEN": {
        _classname = "Tarp_01_Large_Green_F";
        if (_small) then {_classname = "Tarp_01_Small_Green_F"};
    };
    case "BLACK": {
        _classname = "Tarp_01_Large_Black_F";
        if (_small) then {_classname = "Tarp_01_Small_Black_F"};
    };
    case "YELLOW": {
        _classname = "Tarp_01_Large_Yellow_F";
        if (_small) then {_classname = "Tarp_01_Small_Yellow_F"};
    };
    default {
        _classname = "Tarp_01_Large_Red_F";
        if (_small) then {_classname = "Tarp_01_Small_Red_F"};
    };
};

private _tarp = createVehicle [_classname, _position, [], 0, "CAN_COLLIDE"];
_tarp enableSimulation false;


private "_posHelper";
if (_small) then {
    _posHelper = _position vectorAdd [random 2, random 2, 0];
} else {
    _posHelper = _position vectorAdd [random 5, random 5, 0];
};

private _helper = createVehicle ["Land_PortableCabinet_01_closed_sand_F", _posHelper, [], 0, "CAN_COLLIDE"];
private _grasscutter = createVehicle ["Land_ClutterCutter_large_F", _position, [], 0, "CAN_COLLIDE"];
_helper setDir random 360;

true;
