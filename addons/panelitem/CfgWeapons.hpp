class CfgWeapons {
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

    class PVAR(PanelRed): ACE_ItemCore {
        scope = 2;
        scopeArsenal = 2;
        author = ECSTRING(main,author);
        displayName = CSTRING(red);
        //descriptionShort = CSTRING(book_description);
        model = "\a3\Props_F_Enoch\Military\Camps\PortableCabinet_01_closed_F.p3d";
        picture = QPATHTOF(data\inv_red.paa);
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };
    class PVAR(PanelYellow): ACE_ItemCore {
        scope = 2;
        scopeArsenal = 2;
        author = ECSTRING(main,author);
        displayName = CSTRING(yellow);
        //descriptionShort = CSTRING(book_description);
        model = "\a3\Props_F_Enoch\Military\Camps\PortableCabinet_01_closed_F.p3d";
        picture = QPATHTOF(data\inv_yellow.paa);
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };
    class PVAR(PanelGreen): ACE_ItemCore {
        scope = 2;
        scopeArsenal = 2;
        author = ECSTRING(main,author);
        displayName = CSTRING(green);
        //descriptionShort = CSTRING(book_description);
        model = "\a3\Props_F_Enoch\Military\Camps\PortableCabinet_01_closed_F.p3d";
        picture = QPATHTOF(data\inv_green.paa);
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };
};
