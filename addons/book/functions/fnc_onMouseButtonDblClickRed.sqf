#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the red button at the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onMouseButtonDblClickRed;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

(_display displayCtrl IDC_LINEONETEXT) ctrlSetText "TYPE OF MSN";
(_display displayCtrl IDC_LINETWOTEXT) ctrlSetText "MTHD OF LOCATION";

(_display displayCtrl IDC_LINETHREETEXT) ctrlSetText "TRGT LOCATION";

(_display displayCtrl IDC_LINEFOURTEXT) ctrlSetText "TRGT DESCRIPTION";
(_display displayCtrl IDC_LINEFIVETEXT) ctrlSetText "MTHD OF ENGAGEMENT";
(_display displayCtrl IDC_LINESIXTEXT) ctrlSetText "FIRE AND CONTROL";

(_display displayCtrl IDC_LINESEVENTEXT) ctrlSetText "";
(_display displayCtrl IDC_LINEEIGHTTEXT) ctrlSetText "";
(_display displayCtrl IDC_LINENINETEXT) ctrlSetText "";

(_display displayCtrl IDC_EXPLAIN) ctrlSetText "";
