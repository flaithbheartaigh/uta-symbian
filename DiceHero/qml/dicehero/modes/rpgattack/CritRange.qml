import QtQuick 1.0
import "../../common"
import "RpgFunctions.js" as RPG

Rectangle {
    signal showScreen(string msg)

    id: screenBase

    width: screenWidth; height: screenHeight

    Component.onCompleted: {
        var tempScores = scoreFields;
        critrange.text = RPG.loadCritRange(tempScores);
        scoreFields = tempScores;
    }


    Image {
        x: 0
        y: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        property string bgString: "../../images/backgrounds/"
        property string bgStringComplete: bgString+myBackground
        source: bgStringComplete
    }

    Rectangle{
        id: toptextholder
        anchors.horizontalCenter: parent.horizontalCenter
        y:30
        width: 260
        height: 60
        border.color:  "#CCCCCC"
        color: "black"
        border.width:  3
    }

    Rectangle{
        id: textholder1
        anchors.horizontalCenter: parent.horizontalCenter
        y:250
        width: 220
        height: 70
        border.color:  "#CCCCCC"
        color: "black"
        border.width:  3
    }

    Text {
        id: text1
        anchors.horizontalCenter: parent.horizontalCenter
        y: 30
        color: "white"
        anchors.centerIn: toptextholder
        anchors.rightMargin: 50
        anchors.bottomMargin: 50
        anchors.leftMargin: 100
        anchors.topMargin: 50
        text: "Use Buttons to\nChange Critical Range."
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 24
    }

    Text{
        id: critrange
        text: "--"
        color: "white"
        anchors.centerIn: textholder1
        anchors.horizontalCenter: parent.horizontalCenter
        y: 250
        font.pixelSize: 60
    }

    Button{
        id: inc1
        text: "+1"
        anchors.horizontalCenter: parent.horizontalCenter
        y: 150
        onClicked:{
            var tempScores = scoreFields;
            critrange.text = RPG.incCritRange(tempScores);
            scoreFields = tempScores;
        }
    }

    Button{
        id: dec1
        text: "-1"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors{
            top: critrange.bottom
        }
        anchors.topMargin: 50
        onClicked:{
            var tempScores = scoreFields;
            critrange.text = RPG.decCritRange(tempScores);
            scoreFields = tempScores;
        }
    }

    Button_AffirmativeButton {
        id: finished
        text: "Done"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors{
            top: critrange.bottom
        }
        anchors.topMargin: 200
        onClicked:
        {
            screenBase.showScreen("modes/rpgattack/RPGStartScreen.qml");
        }
    }
}
