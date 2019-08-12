#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggers on load of the notebook page.
 *
 * Arguments:
 * 0: Display <NUMBER>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [2650] call KNB_book_fnc_onLoad;
 *
 * Public: No
 */

params ["_display"];

uiNamespace setVariable ['KNB_notebook', _display];

private _text = player getVariable [QGVAR(notebookData), []];
TRACE_1("QGVAR(notebookData)", _text);

if (_text isEqualTo []) exitWith {};

_text apply {
    _x params ["_idc", "_textInBox"];
    private _a = _display displayCtrl _idc;
    _a ctrlSetText _textInBox;
    TRACE_2("Notebook display load", _idc, _textInBox);
};
