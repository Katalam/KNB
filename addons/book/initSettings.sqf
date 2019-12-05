[
    QGVAR(aceAction),
    "CHECKBOX", // type of setting
    localize LSTRING(cba_open),
    QUOTE(PREFIX),
    [true],
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(background),
    "LIST", // type of setting
    localize LSTRING(background),
    QUOTE(PREFIX),
    [[0, 1, 2, 3], ["10th MD", "2nd RB", "101st AB", "1st CD"], 0],
    true
] call CBA_Settings_fnc_init;
