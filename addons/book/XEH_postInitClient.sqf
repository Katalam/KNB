#include "script_component.hpp"

["KNB Notebook", QGVAR(NotebookOpen), (localize LSTRING(keyBind)), {
    if ("KNB_Notebook" in items player && {isNull (findDisplay IDD)}) then {
        createDialog QGVAR(notebook);
    };
}, {}, [0x0A, [false, false, false]], false] call CBA_fnc_addKeybind;
