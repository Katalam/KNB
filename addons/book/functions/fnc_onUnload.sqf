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

#define IDC_CALLSIGNTEXT 2665

#define IDC_LINEONETEXT 2666
#define IDC_LINETWOTEXT 2667
#define IDC_LINETHREETEXT 2668
#define IDC_LINEFOURTEXT 2669
#define IDC_LINEFIVETEXT 2670
#define IDC_LINESIXTEXT 2671
#define IDC_LINESEVENTEXT 2672
#define IDC_LINEEIGHTTEXT 2673
#define IDC_LINENINETEXT 2674

uiNamespace setVariable ['KNB_notebook', nil];

private _text = [];

[IDC_CALLSIGNTEXT, IDC_LINEONETEXT, IDC_LINETWOTEXT, IDC_LINETHREETEXT, IDC_LINEFOURTEXT, IDC_LINEFIVETEXT, IDC_LINESIXTEXT, IDC_LINESEVENTEXT, IDC_LINEEIGHTTEXT, IDC_LINENINETEXT] apply {
    _text pushBack [_x, ctrlText _x];
    TRACE_2("Notebook display unload", _x, ctrlText _x);
};

player setVariable [QGVAR(notebookData), _text];
