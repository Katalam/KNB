#include "script_component.hpp"
/*
 * Author: Katalam
 * Triggered with onMouseButtonClick of the right button at the notebook page.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_onMouseButtonClickRight;
 *
 * Public: No
 */

//params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

private _display = uiNamespace getVariable "KNB_notebook";

{
    (_display displayCtrl _x) ctrlShow false;
} forEach (IDC_LINEALL + IDC_LINEALLTEXT + IDC_LINEALLLINE);

(_display displayCtrl IDC_EXPLAIN) ctrlShow true;
(_display displayCtrl IDC_BUTTONTEXTRIGHT) ctrlShow false;
(_display displayCtrl IDC_BUTTONTEXTLEFT) ctrlShow true;

uiNamespace setVariable ["KNB_page", true];
