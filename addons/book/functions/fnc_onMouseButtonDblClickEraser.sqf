#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the eraser at the notebook page.
 *
 * Arguments:
 * 0: Display <NUMBER>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [2650] call KNB_book_fnc_onMouseButtonDblClickEraser;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

player setVariable [QGVAR(notebookData), []];

[IDC_LINEONETEXT, IDC_LINETWOTEXT, IDC_LINETHREETEXT, IDC_LINEFOURTEXT, IDC_LINEFIVETEXT, IDC_LINESIXTEXT, IDC_LINESEVENTEXT, IDC_LINEEIGHTTEXT, IDC_LINENINETEXT] apply {
    private _a = _display displayCtrl _x;
    _a ctrlSetText "";
    TRACE_2("Notebook display load", _idc, _textInBox);
};
