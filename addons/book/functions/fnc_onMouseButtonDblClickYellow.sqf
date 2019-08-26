#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the yellow button at the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onMouseButtonDblClickYellow;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

[false] call FUNC(notesToggle);

(_display displayCtrl IDC_LINEONETEXT) ctrlSetText "IP";
(_display displayCtrl IDC_LINETWOTEXT) ctrlSetText "HEADING";
(_display displayCtrl IDC_LINETHREETEXT) ctrlSetText "DISTANCE";

(_display displayCtrl IDC_LINEFOURTEXT) ctrlSetText "ELEVATION";
(_display displayCtrl IDC_LINEFIVETEXT) ctrlSetText "DESCRIPTION";
(_display displayCtrl IDC_LINESIXTEXT) ctrlSetText "LOCATION";

(_display displayCtrl IDC_LINESEVENTEXT) ctrlSetText "TYPE MARK";
(_display displayCtrl IDC_LINEEIGHTTEXT) ctrlSetText "FRIENDLIES";
(_display displayCtrl IDC_LINENINETEXT) ctrlSetText "EGRESS";

(_display displayCtrl IDC_EXPLAIN) ctrlSetText "";
