#include "script_component.hpp"

params [
    ["_unit", objNull, [objNull]],
    ["_container", objNull, [objNull]],
    ["_item", "", [""]]
];

if (!(_item isEqualTo QUOTE(PVAR(Notebook)))) exitWith {};

private _data = _unit getVariable [QGVAR(notebookData), []];
_container setVariable [QGVAR(notebookData), _data, true];
