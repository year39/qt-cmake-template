import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts

import "ui/common" as Common
import "ui/pages" as Pages

ApplicationWindow {
    id: window
    visible: true
    width: 800
    height: 800
    color: Common.Colors.base0

    header: Pages.Header {
        mouseArea.onClicked: drawer.open()
    }

    Drawer {
        id: drawer
        height: window.height
        width: window.width * 0.3

        background: Rectangle {
            anchors.fill: parent
            color: Common.Colors.orange
        }

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: "Page 1"
                width: parent.width
                onClicked: {
                    layout.currentIndex = 0
                    drawer.close()
                }
            }

            ItemDelegate {
                text: "Page 2"
                width: parent.width
                onClicked: {
                    layout.currentIndex = 1
                    drawer.close()
                }
            }
        }
    }

    StackLayout {
        id: layout
        anchors.fill: parent
        currentIndex: 0

        Rectangle {
            color: "teal"
            implicitHeight: 400
            implicitWidth: 400
        }

        Rectangle {
            color: "plum"
            implicitHeight: 400
            implicitWidth: 400
        }
    }
}
