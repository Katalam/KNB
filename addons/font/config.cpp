#include "script_component.hpp"
    class CfgPatches {
        class ADDON {
            name = QUOTE(COMPONENT);
            units[] = {};
            weapons[] = {};
            requiredVersion = REQUIRED_VERSION;
            requiredAddons[] = {};
            author = ECSTRING(main,author);
            VERSION_CONFIG;
        };
    };

#include "CfgFontFamilies.hpp"
