import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: root
    width: 1280
    height: 720
    visible: true
    title: qsTr("PokeFinder")

    function pushStack(url) {
        stackView.push(url)
    }

    function popStack() {
        stackView.pop()
    }

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: MainWindow { }
    }
}
