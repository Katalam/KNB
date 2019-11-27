#include "script_component.hpp"
    class CfgPatches {
        class ADDON {
            name = COMPONENT;
            units[] = {};
            weapons[] = {};
            requiredVersion = REQUIRED_VERSION;
            requiredAddons[] = {
                "KNB_panel"
            };
            author = ECSTRING(main,author);
            VERSION_CONFIG;
        };
    };


#include "CfgEventHandlers.hpp"
#include "CfgWeapons.hpp"
