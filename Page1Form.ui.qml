import QtQuick 2.12
import QtQuick.Controls 2.5
import "content" as Content

Page {
    width: 800
    height: 480

    header: Item {
        Rectangle {
            width: 800
            height: 50
            color: "#ededeb"
            border.width: 0
        }
        Label {
            width: 800
            height: 53
            color: "#366fab"
            text: qsTr("Do bit Ao Byte - www.dobitaobyte.com.br")
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.Black
            font.italic: true
            font.bold: true
            font.pixelSize: Qt.application.font.pixelSize * 2
            padding: 10
        }
    }


    /*
    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }*/
}
