import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2
    DatePicker {
        anchors.top : button3.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        id: datePicker1
        date: new Date(2023, 04, 19, 12, 0, 0)
        daysVisible: true
        weeksVisible: true
        onDateTextChanged: console.log("Выбранная дата " + dateText)
    }


}
