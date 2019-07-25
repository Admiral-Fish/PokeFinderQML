import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Window {
    id: window
    width: 1280
    height: 720
    visible: true
    title: "PokeFinder"

    Image {
        id: root
        width: window.width
        height: window.height
        source: "svg/background.svg"
        fillMode: Image.PreserveAspectCrop

        ColumnLayout {
            id: sidebar
            height: root.height
            anchors.right: root.right

            Image {
                source: "svg/settings.svg"
                Layout.alignment: Qt.AlignTop | Qt.AlignRight
                Layout.margins: 10
            }
        }

        ScrollView {
            id: scrollview
            width: root.width - sidebar.width
            height: root.height

            GridLayout {
                id: grid
                width: scrollview.width
                height: scrollview.height
                rows: 10
                columns: 4

                ColumnLayout {
                    Layout.margins: 10
                    Text {
                        id: gen3toptext
                        Layout.alignment: Qt.AlignHCenter
                        text: "3RD"
                        font.bold: true
                        color: "#707070"
                    }
                    Text {
                        Layout.alignment: Qt.AlignHCenter
                        anchors.top: gen3toptext.bottom
                        text: "GEN"
                        color: "#707070"
                    }
                }

                Image {
                    source: "svg/ruby.svg"
                    Layout.margins: 10
                }
                Image {
                    source: "svg/sapphire.svg"
                    Layout.margins: 10
                }
                Image {
                    source: "svg/emerald.svg"
                    Layout.margins: 10
                }
                Rectangle {
                    width: grid.width * 0.8
                    height: 3
                    Layout.alignment: Qt.AlignHCenter
                    Layout.margins: 10
                    Layout.columnSpan: 4
                    radius: 5
                    color: "#707070"
                }
            }
        }
    }
}
