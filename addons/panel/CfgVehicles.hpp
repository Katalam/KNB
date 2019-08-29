class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ACE_Equipment {
                class GVAR(panel) {
                    displayName = CSTRING(ace_action);
                    condition = "true";
                    statement = "";
                    showDisabled = 0;
                    icon = "";
                    insertChildren = QUOTE(_this call FUNC(insertChildren));
                };
            };
        };
    };

    class Land_PortableCabinet_01_closed_base_F;
    class Land_PortableCabinet_01_closed_sand_F: Land_PortableCabinet_01_closed_base_F { //Land_TentSolar_01_folded_base_F Land_TentSolar_01_base_F
        class ACE_Actions {
            class ACE_MainActions {
                displayName = $STR_ACE_interaction_MainAction;
                position = [0, 0, 0];
                distance = 4;
                condition = "true";

                class GVAR(panelRemove) {
                    displayName = CSTRING(ace_actionRemove);
                    condition = QUOTE(_this call FUNC(conditionPanelRemove));
                    statement = QUOTE(_this call FUNC(statementPanelRemove));
                    showDisabled = 0;
                    icon = "";
                };
            };
        };
    };
};
