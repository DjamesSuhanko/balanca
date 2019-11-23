import QtQuick 2.12
import QtQuick.Controls 2.5
import "content" as Content

ApplicationWindow {
    visible: true
    width: 800
    height: 480
    title: qsTr("Comparativo de temperatura")

    //esses valores serão manipulados em MyComm.cpp
    Text {
        id: balanca
        objectName: "balanca"
        text: "0.01"
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
            Text {
                id:rpi1Val
                objectName: "rpi1Val"
                text:  "0.0"
            }

            Rectangle {
                id: root
                width: 800; height: 480
                color: "#202020"

                Text {
                    objectName: "tShift"
                    id: tShift
                    text: "0.01"
                }

                ListView {
                    objectName: "clockview"
                    id: clockview
                    anchors.fill: parent
                    orientation: ListView.Horizontal
                    cacheBuffer: 2000
                    snapMode: ListView.SnapOneItem
                    highlightRangeMode: ListView.ApplyRange

                    //encapsula o elemento clock, com a modificação das propriedades city e shift
                    delegate: Content.Clock { city: cityName; shift: timeShift }
                    model: ListModel {
                        id: treta
                        ListElement {
                            cityName: "Balança"
                            timeShift: "0.01"
                        }
                    }
                }
            }
        }

        Page2Form {
        }
    }

    //footer do applicationWindow
    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Balança")
        }
        TabButton {
            text: qsTr("Sem uso...")
        }
    }
}
