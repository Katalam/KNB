#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonDblClick of the blue button at the notebook page.
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

[true] call FUNC(notesToggle);

(_display displayCtrl IDC_EXPLAIN) ctrlSetText "";
