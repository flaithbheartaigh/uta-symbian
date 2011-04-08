import QtQuick 1.0
import "common"
import "dice"
import "engine"
import "images"
import "modes"
import "sound"

import "common/globalDice.js" as GlobalDice
import "common/createDice.js" as Script

Rectangle {

    id: main
    width: 360; height: 640

    property real accX
    property real accY
    property real accZ

    // Global colors, in pairs for gradients
    property string COLOR_OFFBLACK: "#0D0D0D"
    property string COLOR_BLACK: "#000000"
    property string COLOR_GRAY: "#BFBFBF"
    property string COLOR_DARKGRAY: "#7F7F7F"
    property string COLOR_LIGHTGRAY: "#D9D9D9"
    property string COLOR_WHITE: "#FFFFFF"
    property string COLOR_ORANGE: "#E36C0A"
    property string COLOR_DARKORANGE: "#984806"
    property string COLOR_JADE: "#9BBB59"
    property string COLOR_DARKJADE: "#4F6228"
    property string COLOR_LIGHTGREEN: "#00B050"
    property string COLOR_GREEN: "#008000"
    property string COLOR_BLUE: "#0070C0"
    property string COLOR_DARKBLUE: "#1F497D"
    property string COLOR_RED: "#C00000"
    property string COLOR_DARKRED: "#632423"
    property string COLOR_DARKTEXT: COLOR_OFFBLACK
    property string COLOR_LIGHTTEXT: COLOR_WHITE
    


    property string returnFile

    property variant myDice: GlobalDice.numDice
    property variant rollResults: GlobalDice.rollResults
    property variant dieClicks: GlobalDice.dieClicks
    property variant saved: GlobalDice.saved
    property variant p1Array: GlobalDice.p1Array
    property variant p2Array: GlobalDice.p2Array
    property variant scoreFields: GlobalDice.scoreFields


    property int reRolls: 0
    property int rolls: 0

    property bool currentlyRolling: false
    property bool p1Turn: true

    // signaled just as the player initiates movement to establish a zero point for rolling
    signal calibrate()

    // functions are used as Qt slots when accelerometer changes
    function updateX(outVX) {
        accX = outVX
    }
    function updateY(outVY) {
        accY = outVY
    }
    function updateZ(outVZ) {
        accZ = outVZ
    }


    // used to reset persistent vars upon exiting an app
    function clearAll() {
        var temp = new Array(6);
        Script.clearData(temp);
        p1Array = temp;
        p2Array = temp;

        temp = rollResults;
        Script.clearResults(temp);
        rollResults = temp;

        temp = new Array(5);
        dieClicks = temp;
        saved = temp;

        temp = new Array(18);
        scoreFields = temp;

        p1Turn = true;
        reRolls = 0;
        rolls = 0;

        temp = 0;
    }

    Loader {
        id: loader
        source: "common/titlescreen.qml"
    }

    Connections {
        target: loader.item
        onShowScreen: loader.source = msg;
    }
}
