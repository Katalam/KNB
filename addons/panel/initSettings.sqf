[
    QGVAR(aceAction),
    "CHECKBOX", // type of setting
    localize LSTRING(cba_open),
    QUOTE(PREFIX),
    [true],
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(consume),
    "CHECKBOX",
    [localize LSTRING(consume), localize LSTRING(consumeDesc)],
    QUOTE(PREFIX),
    false,
    true
] call CBA_fnc_addSetting;
