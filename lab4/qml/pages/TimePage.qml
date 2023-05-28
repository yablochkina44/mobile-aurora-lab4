import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2

    TimePicker {
        anchors.top : datePicker1.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        id: timePicker1
        onTimeTextChanged: console.log("Выбранное время " + timeText)
    }

}
