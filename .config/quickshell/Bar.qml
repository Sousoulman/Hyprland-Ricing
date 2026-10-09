import Quickshell
import Quickshell.Io
import QtQuick
import "bar"

Scope {

        Time { id: timeSource }
        Update { id: updateSource }
        
        Variants {
                model: Quickshell.screens

                PanelWindow {
                        required property var modelData
                        screen: modelData

                        anchors {
                                top: true
                                left: true
                                right: true
                        }
                        
                        implicitHeight: 30

                        Text {
                                anchors.centerIn: parent
                                text: timeSource.time
                                text: updateSource.update
                        }
                }
        }
}
