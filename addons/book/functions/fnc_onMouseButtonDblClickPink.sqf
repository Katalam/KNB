#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the pink button at the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onMouseButtonDblClickPink;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

[false] call FUNC(notesToggle);

(_display displayCtrl IDC_LINEONETEXT) ctrlSetText "";
(_display displayCtrl IDC_LINETWOTEXT) ctrlSetText "";
(_display displayCtrl IDC_LINETHREETEXT) ctrlSetText "";

(_display displayCtrl IDC_LINEFOURTEXT) ctrlSetText "";
(_display displayCtrl IDC_LINEFIVETEXT) ctrlSetText "";
(_display displayCtrl IDC_LINESIXTEXT) ctrlSetText "";

(_display displayCtrl IDC_LINESEVENTEXT) ctrlSetText "";
(_display displayCtrl IDC_LINEEIGHTTEXT) ctrlSetText "";
(_display displayCtrl IDC_LINENINETEXT) ctrlSetText "";

(_display displayCtrl IDC_EXPLAIN) ctrlSetText "";
