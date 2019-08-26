#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonClick of the left button at the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onMouseButtonClickLeft;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

{
    (_display displayCtrl _x) ctrlShow true;
} forEach (IDC_LINEALL + IDC_LINEALLTEXT + IDC_LINEALLLINE);

(_display displayCtrl IDC_EXPLAIN) ctrlShow false;
(_display displayCtrl IDC_BUTTONTEXTRIGHT) ctrlShow true;
(_display displayCtrl IDC_BUTTONTEXTLEFT) ctrlShow false;

[(uiNamespace getVariable "KNB_notes")] call FUNC(notesToggle);

uiNamespace setVariable ["KNB_page", false];
