import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
//import CustomModule 1.0

ApplicationWindow {
    width: 400
    height: 500
    visible: true

    RowLayout {
        anchors.centerIn: parent
        Slider {
            id: control
            value: 0.5

            orientation: Qt.Vertical

            background: Rectangle {
                x: control.leftPadding
                y: control.topPadding + control.availableHeight / 2 - height / 2
                implicitWidth: 200
                implicitHeight: 4
                width: control.availableWidth
                height: implicitHeight
                radius: 2
                color: "#bdbebf"

                Rectangle {
                    width: control.visualPosition * parent.width
                    height: parent.height
                    color: "#21be2b"
                    radius: 2
                }
            }

            handle: Rectangle {
                x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
                y: control.topPadding + control.availableHeight / 2 - height / 2
                implicitWidth: 26
                implicitHeight: 26
                radius: 13
                color: control.pressed ? "#f0f0f0" : "#f6f6f6"
                border.color: "#bdbebf"
            }
        }
        Slider {
            id: control1
            //anchors.left: control.right

            orientation: Qt.Vertical

            background: Rectangle {
                x: control1.leftPadding
                y: control1.topPadding + control1.availableHeight / 2 - height / 2
                implicitWidth: 200
                implicitHeight: 4
                width: control1.availableWidth
                height: implicitHeight
                radius: 2
                color: "#bdbebf"

                Rectangle {
                    width: control1.visualPosition * parent.width
                    height: parent.height
                    color: "#21be2b"
                    radius: 2
                }
            }

            handle: Rectangle {
                x: control1.leftPadding + control1.visualPosition * (control1.availableWidth - width)
                y: control1.topPadding + control1.availableHeight / 2 - height / 2
                implicitWidth: 26
                implicitHeight: 26
                radius: 13
                color: control1.pressed ? "#f0f0f0" : "#f6f6f6"
                border.color: "#bdbebf"
            }
        }
    }
    ColumnLayout {
        anchors.centerIn: parent
        Button {
            id: button
            //anchors.centerIn: parent

            text: "Power Off"

            onClicked: {
                Qt.quit();
            }
        }
    }
}
