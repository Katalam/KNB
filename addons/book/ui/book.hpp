class RscButton;
class RscText;
class RscPicture;
class RscEdit;
class RscStructuredText;

#define COLOR_PENCIL {0.35,0.35,0.35,1}
#define COLOR_TRANSPARENCY {1,1,1,0}
#define COLOR_WHITE {0.812,0.8,0.796,1}

class GVAR(Button): RscButton {
    text = "";
    ColorBackground[] = COLOR_TRANSPARENCY;
    colorBackgroundActive[] = COLOR_TRANSPARENCY;
    ColorText[] = COLOR_TRANSPARENCY;
    font = manic;
    colorFocused[] = COLOR_TRANSPARENCY;
    colorDisabled[] = COLOR_TRANSPARENCY;
};
class GVAR(Line): RscText {
    text = "";
    ColorBackground[] = COLOR_TRANSPARENCY;
    colorBackgroundActive[] = COLOR_TRANSPARENCY;
    ColorText[] = COLOR_PENCIL;
    font = manic;
    colorFocused[] = COLOR_PENCIL;
    colorDisabled[] = COLOR_PENCIL;
    shadow = 0;
    sizeEx = 0.06;
};
class GVAR(Style_Line): RscText {
    text = "";
    style = ST_LINE;
    ColorBackground[] = COLOR_TRANSPARENCY;
    colorBackgroundActive[] = COLOR_TRANSPARENCY;
    ColorText[] = COLOR_PENCIL;
    font = manic;
    colorFocused[] = COLOR_PENCIL;
    colorDisabled[] = COLOR_PENCIL;
    shadow = 0;
    sizeEx = 0.06;
};
class GVAR(Edit): RscEdit {
    text = "";
    style = ST_NO_RECT;
    ColorBackground[] = COLOR_TRANSPARENCY;
    colorBackgroundActive[] = COLOR_TRANSPARENCY;
    ColorText[] = COLOR_PENCIL;
    font = manic;
    colorFocused[] = COLOR_PENCIL;
    colorDisabled[] = COLOR_PENCIL;
    shadow = 0;
    sizeEx = 0.06;
};

class GVAR(notebook) {
    onLoad = QUOTE(_this call FUNC(onLoad));
    //onLoad = QLINKFUNC(onLoad);
    onUnload = QUOTE(_this call FUNC(onUnload));
    //onUnload = QLINKFUNC(onUnload);
    idd = IDD;
    name = QGVAR(notebook);
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {
        class Background: RscPicture {
            idc = IDC_BG;
            moving = 1;
            text = QPATHTOF(ui\book.paa);
            x = 0 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.5 * safezoneW;
            h = 1 * safezoneH;
            ColorBackground[] = {1,1,1,0};
        };
    };
    class controls {
        class ButtonRight: GVAR(Button) {
            idc = IDC_RIGHT;
            onMouseButtonDblClick = QUOTE(_this call FUNC(onMouseButtonDblClickRight));
            x = 0.393301 * safezoneW + safezoneX;
            y = 0.713441 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.04 * safezoneH;
        };
        class ButtonRightText: GVAR(Line) {
            idc = -1;
            style = ST_CENTER;
            text = "CAS";
            x = 0.393301 * safezoneW + safezoneX;
            y = 0.713441 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.04 * safezoneH;
        };
        class ButtonLeft: GVAR(Button) {
            idc = IDC_LEFT;
            onMouseButtonDblClick = QUOTE(_this call FUNC(onMouseButtonDblClickLeft));
            x = 0.056785 * safezoneW + safezoneX;
            y = 0.713441 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.04 * safezoneH;
        };
        class ButtonLeftText: GVAR(Line) {
            idc = -1;
            style = ST_CENTER;
            text = "MED";
            x = 0.056785 * safezoneW + safezoneX;
            y = 0.713441 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.04 * safezoneH;
        };
        class Button_Clear: GVAR(Button) {
            idc = IDC_CLEAR;
            onMouseButtonDblClick = QUOTE(_this call FUNC(onMouseButtonDblClickEraser));
            x = 0.432969 * safezoneW + safezoneX;
            y = 0.236103 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.0219914 * safezoneH;
        };
        class CallSign: GVAR(Line) {
            idc = IDC_CALLSIGN;
            style = ST_CENTER;
            text = "Callsign";
            x = 0.070798 * safezoneW + safezoneX;
            y = 0.267530 * safezoneH + safezoneY;
            w = 0.16 * safezoneW;
            h = 0.035 * safezoneH;
        };
        class CallSignText: GVAR(Edit) {
            idc = IDC_CALLSIGNTEXT;
            x = 0.070798 * safezoneW + safezoneX;
            y = 0.311975 * safezoneH + safezoneY;
            w = 0.16 * safezoneW;
            h = 0.035 * safezoneH;
        };
        class CallSignLine: GVAR(Style_Line) {
            idc = IDC_CALLSIGNLINE;
            x = 0.0720312 * safezoneW + safezoneX;
            y = 0.34606 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineOne: GVAR(Line) {
            idc = IDC_LINEONE;
            text = "1";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.26909 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineOneText: GVAR(Edit) {
            idc = IDC_LINEONETEXT;
            text = "IP";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.280086 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineOneLine: GVAR(Style_Line) {
            idc = IDC_LINEONELINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.313073 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineTwo: GVAR(Line) {
            idc = IDC_LINETWO;
            text = "2";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.313073 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineTwoText: GVAR(Edit) {
            idc = IDC_LINETWOTEXT;
            text = "HEADING";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.324069 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineTwoLine: GVAR(Style_Line) {
            idc = IDC_LINETWOLINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.357056 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineThree: GVAR(Line) {
            idc = IDC_LINETHREE;
            text = "3";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.357056 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineThreeText: GVAR(Edit) {
            idc = IDC_LINETHREETEXT;
            text = "DISTANCE";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.368051 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineThreeLine: GVAR(Style_Line) {
            idc = IDC_LINETHREELINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.401039 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineFour: GVAR(Line) {
            idc = IDC_LINEFOUR;
            text = "4";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.401039 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineFourText: GVAR(Edit) {
            idc = IDC_LINEFOURTEXT;
            text = "ELEVATION";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.412034 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineFourLine: GVAR(Style_Line) {
            idc = IDC_LINEFOURLINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.445021 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineFive: GVAR(Line) {
            idc = IDC_LINEFIVE;
            text = "5";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.445021 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineFiveText: GVAR(Edit) {
            idc = IDC_LINEFIVETEXT;
            text = "DESCRIPTION";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.456017 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineFiveLine: GVAR(Style_Line) {
            idc = IDC_LINEFIVELINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.489004 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineSix: GVAR(Line) {
            idc = IDC_LINESIX;
            text = "6";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.489004 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineSixText: GVAR(Edit) {
            idc = IDC_LINESIXTEXT;
            text = "LOCATION";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.5 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineSixLine: GVAR(Style_Line) {
            idc = IDC_LINESIXLINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.532987 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineSeven: GVAR(Line) {
            idc = IDC_LINESEVEN;
            text = "7";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.532987 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineSevenText: GVAR(Edit) {
            idc = IDC_LINESEVENTEXT;
            text = "TYPE MARK";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.543983 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineSevenLine: GVAR(Style_Line) {
            idc = IDC_LINESEVENLINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.57697 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineEight: GVAR(Line) {
            idc = IDC_LINEEIGHT;
            text = "8";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.57697 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineEightText: GVAR(Edit) {
            idc = IDC_LINEEIGHTTEXT;
            text = "FRIENDLIES";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.587966 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineEightLine: GVAR(Style_Line) {
            idc = IDC_LINEEIGHTLINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.620953 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };

        class LineNine: GVAR(Line) {
            idc = IDC_LINENINE;
            text = "9";
            x = 0.262812 * safezoneW + safezoneX;
        	y = 0.620953 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.0549786 * safezoneH;
        };
        class LineNineText: GVAR(Edit) {
            idc = IDC_LINENINETEXT;
            text = "EGRESS";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.631949 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.0329871 * safezoneH;
        };
        class LineNineLine: GVAR(Style_Line) {
            idc = IDC_LINENINELINE;
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.664936 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.0001 * safezoneH;
        };
        class Notes: GVAR(Edit) {
            idc = IDC_NOTES;
            text = "Notes";
            style = ST_MULTI + ST_NO_RECT;
            x = 0.070798 * safezoneW + safezoneX;
            y = 0.401039 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.285889 * safezoneH;
        };
    };
};
