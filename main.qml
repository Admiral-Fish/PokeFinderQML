import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    width: 1280
    height: 720
    visible: true
    title: "PokeFinder"

    Image {
        height: parent.height
        width: parent.width
        source: "svg/background.svg"
        fillMode: Image.PreserveAspectCrop

        Row {
            anchors.fill: parent
            anchors.topMargin: 20
            anchors.leftMargin: 20
            anchors.rightMargin: 40
            spacing: 20

            ScrollView {
                id: scrollview
                width: parent.width - sidebar.width
                height: parent.height

                GridLayout {
                    rowSpacing: 20
                    columnSpacing: 20

                    ColumnLayout {
                        spacing: -2

                        Text {
                            Layout.alignment: Qt.AlignHCenter
                            text: "3RD"
                            font.pixelSize: 20
                            font.bold: true
                            color: "#707070"
                        }
                        Text {
                            Layout.alignment: Qt.AlignHCenter
                            text: "GEN"
                            font.pixelSize: 20
                            color: "#707070"
                        }
                    }
                    Image {
                        source: "svg/ruby.svg"
                    }
                    Image {
                        source: "svg/sapphire.svg"
                    }
                    Image {
                        source: "svg/emerald.svg"
                    }
                    Rectangle {
                        Layout.row: 1
                        Layout.column: 1
                        Layout.columnSpan: 3
                        Layout.fillWidth: true
                        height: 3
                        radius: 5
                        color: "#707070"
                    }
                }
            }

            Column {
                id: sidebar
                height: parent.height

                Image {
                    source: "svg/settings.svg"
                }
            }
        }
    }
}
