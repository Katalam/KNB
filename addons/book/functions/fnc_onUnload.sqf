#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggers on unload of the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onUnload;
 *
 * Public: No
 */

uiNamespace setVariable ['KNB_notebook', nil];

private _text = [];

([IDC_CALLSIGNTEXT, IDC_NOTES, IDC_NOTES2, IDC_EXPLAIN] + IDC_LINEALLTEXT) apply {
    _text pushBack [_x, ctrlText _x];
    TRACE_2("Notebook display unload", _x, ctrlText _x);
};

player setVariable [QGVAR(notebookPage), [(uiNamespace getVariable "KNB_page"), (uiNamespace getVariable "KNB_notes")]];

player setVariable [QGVAR(notebookData), _text];
