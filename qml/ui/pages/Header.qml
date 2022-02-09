import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../common" as Common

ToolBar {
    id: root
    height: 40
    property string title: "Page title"
    property alias mouseArea : mouseArea

    background: Rectangle {
        anchors.fill: parent
        color: Common.Colors.transparent
    }

    font {
        family: Common.Fonts.fontAwesomeSolid.name
        pixelSize: 18
    }

    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 5

        ToolButton {
            id: toolButton
            text: "\uf0c9"

            background: Rectangle {
                anchors.fill: parent
                color: Common.Colors.transparent
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }
    }
}
