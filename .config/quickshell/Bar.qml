import Quickshell
import QtQuick.Layouts
import "bar"

Scope { 
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

                        RowLayout {
                                id: layout
                                anchors.leftMargin: parent
                                LeftBar {

                                }
                        }

                }
        }
}
