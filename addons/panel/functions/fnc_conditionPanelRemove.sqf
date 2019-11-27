#include "script_component.hpp"
/*
 * Author: Katalam
 * Condition for the ace action to remove a ground panel.
 *
 * Arguments:
 * 0: Target <OBJECT>
 *
 * Return Value:
 * Available <BOOL>
 *
 * Example:
 * [cursorTarget] call KNB_panel_fnc_conditionPanelRemove;
 *
 * Public: Yes
 */

params [["_target", objNull, [objNull]]];

private _objects = nearestObjects [_target, [
    "Tarp_01_Large_Green_F",
    "Tarp_01_Small_Green_F",
    "Tarp_01_Large_Black_F",
    "Tarp_01_Small_Black_F",
    "Tarp_01_Large_Yellow_F",
    "Tarp_01_Small_Yellow_F",
    "Tarp_01_Large_Red_F",
    "Tarp_01_Small_Red_F"
], 10];

!(_objects isEqualTo []);
