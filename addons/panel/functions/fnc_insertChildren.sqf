#include "script_component.hpp"
/*
 * Author: Katalam
 * Returns children action for available panel
 *
 * Arguments:
 * 0: Target <OBJECT>
 * 1: Player <OBJECT>
 * 2: Parameter <ARRAY>
 *
 * Return Value:
 * Actions <ARRAY>
 *
 * Example:
 * [cursorTarget, player, []] call KNB_panel_fnc_insertChildren;
 *
 * Public: Yes
 */

params ["_target", "_player", "_params"];

private _actions = [];

// Red
if (QPVAR(PanelRed) in items _player) then {
    private _statement = {_this call FUNC(createPanel)};
    private _action = [QGVAR(PanelRed), localize LSTRING(red), "", _statement, {true}, {}, ["RED"]] call ace_interact_menu_fnc_createAction;
    private _actionSmall = [QGVAR(PanelRedSmall), localize LSTRING(redSmall), "", _statement, {true}, {}, ["RED", true]] call ace_interact_menu_fnc_createAction;
    _actions pushBack [_action, [], _target];
    _actions pushBack [_actionSmall, [], _target];
};

// Yellow
if (QPVAR(PanelYellow) in items _player) then {
    private _statement = {_this call FUNC(createPanel)};
    private _action = [QGVAR(PanelYellow), localize LSTRING(yellow), "", _statement, {true}, {}, ["YELLOW"]] call ace_interact_menu_fnc_createAction;
    private _actionSmall = [QGVAR(PanelYellowSmall), localize LSTRING(yellowSmall), "", _statement, {true}, {}, ["YELLOW", true]] call ace_interact_menu_fnc_createAction;
    _actions pushBack [_action, [], _target];
    _actions pushBack [_actionSmall, [], _target];
};

// Green
if (QPVAR(PanelGreen) in items _player) then {
    private _statement = {_this call FUNC(createPanel)};
    private _action = [QGVAR(PanelGreen), localize LSTRING(green), "", _statement, {true}, {}, ["GREEN"]] call ace_interact_menu_fnc_createAction;
    private _actionSmall = [QGVAR(PanelYGreenSmall), localize LSTRING(greenSmall), "", _statement, {true}, {}, ["GREEN", true]] call ace_interact_menu_fnc_createAction;
    _actions pushBack [_action, [], _target];
    _actions pushBack [_actionSmall, [], _target];
};

_actions;
