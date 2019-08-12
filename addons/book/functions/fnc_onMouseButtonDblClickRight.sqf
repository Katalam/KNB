#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the right button at the notebook page.
 *
 * Arguments:
 * 0: Display <NUMBER>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [2650] call KNB_book_fnc_onMouseButtonDblClick;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

(_display displayCtrl IDC_LINEONETEXT) ctrlSetText "IP";
(_display displayCtrl IDC_LINETWOTEXT) ctrlSetText "HEADING";
(_display displayCtrl IDC_LINETHREETEXT) ctrlSetText "DISTANCE";

(_display displayCtrl IDC_LINEFOURTEXT) ctrlSetText "ELEVATION";
(_display displayCtrl IDC_LINEFIVETEXT) ctrlSetText "DESCRIPTION";
(_display displayCtrl IDC_LINESIXTEXT) ctrlSetText "LOCATION";

(_display displayCtrl IDC_LINESEVENTEXT) ctrlSetText "TYPE MARK";
(_display displayCtrl IDC_LINEEIGHTTEXT) ctrlSetText "FRIENDLIES";
(_display displayCtrl IDC_LINENINETEXT) ctrlSetText "EGRESS";
