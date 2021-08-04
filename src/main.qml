import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

import com.project 1.0

ApplicationWindow {
    visible: true
    width: 200
    height: 200
    title: qsTr("Hello World")

    Device {
        id: device
        name: "MyDevice"
    }

    Text {
        id: info
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        text: "Author: " + msg.author + "\n" +
              "Device Name: " + device.name

        Component.onCompleted: {
            msg.author = "MsgAuthor";
        }
    }

    Text {
        property variant devices: scanner.devices
        property int count: scanner.count
        property int val
        anchors.top: info.bottom
        anchors.left: info.left
        text: "Devices Count: " + count + "\n" +
              "Increment: " + val

        Component.onCompleted: {
            var d = devices[0];
            console.log("Device Name: " + d.name);
            console.log("Increment: " + d.increment(10));
            val = d.increment(10);
        }
    }
}
