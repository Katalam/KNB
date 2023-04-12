#include "script_component.hpp"
    class CfgPatches {
        class ADDON {
            name = QUOTE(COMPONENT);
            units[] = {};
            weapons[] = {
                    QPVAR(Notebook)
            };
            requiredVersion = REQUIRED_VERSION;
            requiredAddons[] = {
                "KNB_book"
            };
            author = ECSTRING(main,author);
            VERSION_CONFIG;
        };
    };


#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
