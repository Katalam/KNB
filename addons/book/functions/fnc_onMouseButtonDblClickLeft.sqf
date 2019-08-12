#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the left button at the notebook page.
 *
 * Arguments:
 * 0: Display <NUMBER>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [2650] call KNB_book_fnc_onMouseButtonDblClickLeft;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

(_display displayCtrl IDC_LINEONETEXT) ctrlSetText "LOCATION";
(_display displayCtrl IDC_LINETWOTEXT) ctrlSetText "CALLSIGN FREQ";
(_display displayCtrl IDC_LINETHREETEXT) ctrlSetText "P BY PRECEDENCE";

(_display displayCtrl IDC_LINEFOURTEXT) ctrlSetText "SPECIAL EQUIP REQ";
(_display displayCtrl IDC_LINEFIVETEXT) ctrlSetText "P BY TYPE";
(_display displayCtrl IDC_LINESIXTEXT) ctrlSetText "SECURITY PICK UP";

(_display displayCtrl IDC_LINESEVENTEXT) ctrlSetText "TYPE MARK";
(_display displayCtrl IDC_LINEEIGHTTEXT) ctrlSetText "NATIONALITY";
(_display displayCtrl IDC_LINENINETEXT) ctrlSetText "TERRAIN DESC";
