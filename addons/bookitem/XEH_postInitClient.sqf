#include "script_component.hpp"

["KNB Notebook", QEGVAR(book,NotebookOpen), (localize ELSTRING(book,keyBind)), {
    if (QPVAR(Notebook) in items player && {isNull (findDisplay IDD)}) then {
        createDialog QEGVAR(book,notebook);
    };
}, {}, [0x0A, [false, false, false]], false] call CBA_fnc_addKeybind;
