#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggers on unload of the notebook page.
 *
 * Arguments:
 * 0: Display <NUMBER>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [2650] call KNB_book_fnc_onUnload;
 *
 * Public: No
 */

uiNamespace setVariable ['KNB_notebook', nil];

private _text = [];

[IDC_CALLSIGNTEXT, IDC_LINEONETEXT, IDC_LINETWOTEXT, IDC_LINETHREETEXT, IDC_LINEFOURTEXT, IDC_LINEFIVETEXT, IDC_LINESIXTEXT, IDC_LINESEVENTEXT, IDC_LINEEIGHTTEXT, IDC_LINENINETEXT] apply {
    _text pushBack [_x, ctrlText _x];
    TRACE_2("Notebook display unload", _x, ctrlText _x);
};

player setVariable [QGVAR(notebookData), _text];
