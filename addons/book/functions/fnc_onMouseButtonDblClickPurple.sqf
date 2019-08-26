#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the purple button at the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onMouseButtonDblClickPurple;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

[false] call FUNC(notesToggle);

(_display displayCtrl IDC_LINEONETEXT) ctrlSetText "LOCATION";
(_display displayCtrl IDC_LINETWOTEXT) ctrlSetText "CALLSIGN FREQ";
(_display displayCtrl IDC_LINETHREETEXT) ctrlSetText "P BY PRECEDENCE";

(_display displayCtrl IDC_LINEFOURTEXT) ctrlSetText "SPECIAL EQUIP REQ";
(_display displayCtrl IDC_LINEFIVETEXT) ctrlSetText "P BY TYPE";
(_display displayCtrl IDC_LINESIXTEXT) ctrlSetText "SECURITY PICK UP";

(_display displayCtrl IDC_LINESEVENTEXT) ctrlSetText "TYPE MARK";
(_display displayCtrl IDC_LINEEIGHTTEXT) ctrlSetText "NATIONALITY";
(_display displayCtrl IDC_LINENINETEXT) ctrlSetText "TERRAIN DESC";

(_display displayCtrl IDC_EXPLAIN) ctrlSetText "L2 \n A URGENT - B PRIORITY C ROUTINE \n L4 \n A NONE - B HOIST/ WINCH \n C EXTRACTION - D VENTILATOR";
