class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ACE_Equipment {
                class GVAR(openNotebook) {
                    displayName = CSTRING(open);
                    condition = QGVAR(aceAction);
                    statement = "[{createDialog 'KNB_book_notebook'}] call CBA_fnc_execNextFrame";
                    showDisabled = 0;
                    icon = QPATHTOF(data\book.paa);
                };
            };
        };
    };
};
