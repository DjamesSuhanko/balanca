import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    header: Item {
        Rectangle {
            width: 800
            height: 50
            color: "#ffffff"
        }
        Label {
            color: "#0a71db"
            text: qsTr("Do bit Ao Byte - www.dobitaobyte.com.br")
            font.weight: Font.Black
            font.italic: true
            font.bold: true
            font.pixelSize: Qt.application.font.pixelSize * 2
            padding: 10
        }
    }

    Label {
        text: qsTr("You are on Page 2.")
        anchors.centerIn: parent
    }
}
