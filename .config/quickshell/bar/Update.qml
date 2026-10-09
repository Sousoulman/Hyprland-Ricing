import Quickshell
import Quickshell.Io
import QtQuick

Scope {
        id: root
        property string update

        Process {
                id: updateProc
        command: ["sh", "-c", "checkupdates | wc -l"]
                running: true

                stdout: StdioCollector {
                        onStreamFinished: root.update = this.text
                }
        }

        Timer {
                interval: 1000
                running: true
                repeat: true
                onTriggered: updateProc.running = true
        }
}
