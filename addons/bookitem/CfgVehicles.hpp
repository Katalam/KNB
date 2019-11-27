class CfgVehicles {
    class Item_Base_F;

    class PVAR(NotebookItem): Item_Base_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(book_displayName);
        author = ECSTRING(main,author);
        vehicleClass = "Items";
        editorPreview = QPATHTOF(data\editorPreview.jpg);
        class TransportItems {
            MACRO_ADDITEM(PVAR(Notebook),1);
        };
    };

    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ACE_Equipment {
                class EGVAR(book,openNotebook) {
                    condition = QUOTE((QQPVAR(Notebook) in items player) && (EGVAR(book,aceAction)));
                };
            };
        };
    };
};
