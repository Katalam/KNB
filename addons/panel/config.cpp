#include "script_component.hpp"
    class CfgPatches {
        class ADDON {
            name = COMPONENT;
            units[] = {};
            weapons[] = {};
            requiredVersion = REQUIRED_VERSION;
            requiredAddons[] = {
                "CBA_settings"
            };
            author = ECSTRING(main,author);
            VERSION_CONFIG;
        };
    };


#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
