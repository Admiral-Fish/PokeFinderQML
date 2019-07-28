import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

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

                Column {
                    spacing: 20

                    Row {
                        spacing: 20

                        Column {
                            Text {
                                text: "3RD"
                                font.bold: true
                                color: "#707070"
                            }
                            Text {
                                text: "GEN"
                                color: "#707070"
                            }
                        }

                        Image {
                            source: "svg/ruby.svg"
                            sourceSize.width: scrollview.width * 0.20
                            sourceSize.height: width / 2
                        }

                        Image {
                            source: "svg/sapphire.svg"
                            sourceSize.width: scrollview.width * 0.20
                            sourceSize.height: width / 2
                        }

                        Image {
                            source: "svg/emerald.svg"
                            sourceSize.width: scrollview.width * 0.20
                            sourceSize.height: width / 2
                        }
                    }

                    Rectangle {
                        width: scrollview.width * 0.8
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
