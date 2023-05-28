import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent

        PageHeader {
            id : pheader
            objectName: "pageHeader"
            title: qsTr("cliker pro")
            titleColor: "white"
        }
        ColumnLayout {
            width: parent.width
            anchors {
                left: parent.left
                right: parent.right
                top: pheader.bottom
                margins: 50

            }



            Label {
                id: label_titile
                Layout.fillWidth: true
                leftPadding: 30
                text: "заголовок"
            }
            TextField {
                id : field1
                anchors.top : label_titile.bottom
                validator: Qt.ImhEmailCharactersOnly
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft
                label:"подсказка"
                placeholderText: qsTr("введите цифру")
            }
            Button {
                text: on
                id: btn1
                property string on: "Вкл"
                property string off: "Выкл"
                backgroundColor: "white"
                color: "black"
                highlightColor: "white"
                highlightBackgroundColor: "black"
                onClicked: {
                    btn1._showPress = !btn1._showPress
                    if (btn1._showPress) {
                        btn_label.text = btn_label.pushed
                        text = btn1.off
                    } else {
                        btn_label.text = btn_label.notpushed
                        text = btn1.on

                    }
                }
            }
            Label {
                id : btn_label
                property string pushed: "нажата"
                property string notpushed: "отпущена"
                anchors {
                    top : btn1.bottom
                    horizontalCenter: btn1.horizontalCenter
                }

                text : "отпущена"
            }
            Button {
                property int clikcs: 0
                text: "Нажатий " + parseInt(clikcs)
                id: btn2
                backgroundColor: "white"
                color: "black"
                onClicked: {
                    clikcs++
                }

            }




            Button {
                id: btn_clndr
                text: "Выберите дату"
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
                backgroundColor: "white"
                color: "black"
                Component {
                    id: pickerComponent
                    DatePickerDialog {}
                }
            }


            Button {
                id: btn_time
                text: "выберите время"
                onClicked: pageStack.push(Qt.resolvedUrl("TimePage.qml"))
                backgroundColor: "white"
                color: "black"
                Component {
                    id: timeComponent
                    TimePickerDialog {}
                }
            }
            ComboBox {
                Layout.fillWidth: true
                label: "Список"

                menu: ContextMenu {
                    MenuItem { text: "строка1" }
                    MenuItem { text: "строка2" }
                    MenuItem { text: "строка3" }
                }
            }
            Slider {
                id:sldr
                Layout.fillWidth: true
                anchors.left : parent.left
                handleVisible: true
                animateValue: true
                minimumValue: 0
                maximumValue: 100
                stepSize: 1
                value: 20

            }
            Label {
                text: "Текущее значение: " + sldr.value
            }
            Switch {
                id: swtch
            }
            Label {
                text: (swtch.checked ? "вкл" : "выкл")
            }






        }


    }
}
