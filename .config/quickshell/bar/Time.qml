import Quickshell
import Quickshell.Io
import QtQuick

Scope {
        id: root
        readonly property string time: {
                Qt.formatDateTime(clock.date, "hh:mm:s")
        }

        SystemClock {
                id: clock
                precision: SystemClock.Seconds
        }

}
