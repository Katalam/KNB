#include "script_component.hpp"
/*
 * Author: Katalam
 * Toggles the display of the second notes page.
 *
 * Arguments:
 * 0: Show second notes area <BOOLEAN>
 *
 * Return Value:
 * None
 *
 * Example:
 * call KNB_book_fnc_notesToggle;
 *
 * Public: No
 */

params [["_show", false, [false]]];

private _display = uiNamespace getVariable "KNB_notebook";

{
    (_display displayCtrl _x) ctrlShow (!_show);
} forEach (IDC_LINEALL + IDC_LINEALLTEXT + IDC_LINEALLLINE);

(_display displayCtrl IDC_NOTES2) ctrlShow _show;

uiNamespace setVariable ["KNB_notes", _show];
