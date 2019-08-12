class CfgVehicles {
    class Item_Base_F;

    class PVAR(NotebookItem): Item_Base_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(book_displayName);
        author = ECSTRING(main,author);
        vehicleClass = "Items";
        class TransportItems {
            MACRO_ADDITEM(PVAR(Notebook),1);
        };
    };
};
