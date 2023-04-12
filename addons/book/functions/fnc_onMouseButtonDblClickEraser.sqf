#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the eraser at the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onMouseButtonDblClickEraser;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

player setVariable [QGVAR(notebookData), []];

IDC_LINEALLTEXT apply {
    private _a = _display displayCtrl _x;
    _a ctrlSetText "";
    TRACE_1("Notebook display load", _idc);
};
