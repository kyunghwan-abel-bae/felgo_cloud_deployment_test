import QtQuick 2.0

import Felgo 3.0

import QtMultimedia 5.12

/*

// EXAMPLE USAGE:
// add the following piece of code inside your App { } to display the List Page

RecordPage {

}

    onRecordButtonClicked: {




        // list
        var dirName = fileUtils.storageLocation(FileUtils.DocumentsLocation)
        //var stringList = fileUtils.listFiles(dirName, "*")
        var stringList = fileUtils.listFiles(dirName)

        var contentText = "\nFiles: \n"

        for(var i = 0; i < stringList.length; i++){
            contentText += stringList[i] + "\n"
        }

//        // read
//        var file_name = fileUtils.storageLocation(FileUtils.DocumentsLocation, "Test.txt")
//        var data = fileUtils.readFile(file_name)


//        // write
//        data = "kh_text" + data

//        var success = fileUtils.writeFile(file_name, data)

//        if(success) {
//            textTest.text = "success!"
//        }
//        else
//            textTest.text = "failed!"

*/
Page {
    title: qsTr("Record")

    signal recordButtonClicked()

    onRecordButtonClicked: {
        textTest.text = "Test Start \n"
        textTest.text += AudioRecoder.startRecord()
    }


    Item {
        id: itemText

        width: parent.width; height: parent.height * 0.8
        clip: true

        Text {
            id: textTest

            width: parent.width * 0.95
            height: parent.height

            wrapMode: Text.WordWrap

            anchors.centerIn: parent
        }
    }

    Item {
        id: itemButton

        width: parent.width; height: parent.height - itemText.height


        anchors.bottom: parent.bottom

        AppButton {
            width: height * 2
            height: parent.height * 0.8

            text: qsTr("Start Record")

            anchors.centerIn: parent

            onClicked: recordButtonClicked()
        }
    }
}
