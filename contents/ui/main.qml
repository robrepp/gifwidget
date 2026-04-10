import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

PlasmoidItem {
    id: root

    property string gifSource: ""
    property string configuredUrl: Plasmoid.configuration.gifUrl

    // Watch for configuration changes and refresh when URL changes
    onConfiguredUrlChanged: {
        if (configuredUrl) {
            refreshNow()
            refreshTimer.restart()
        }
    }

    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground | PlasmaCore.Types.ConfigurableBackground
    Plasmoid.configurationRequired: false

    Layout.minimumWidth: fullRepresentation ? fullRepresentation.Layout.minimumWidth : 0
    Layout.minimumHeight: fullRepresentation ? fullRepresentation.Layout.minimumHeight : 0

    preferredRepresentation: fullRepresentation

    Component.onCompleted: {
        refreshNow()
    }

    function refreshNow() {
        var url = Plasmoid.configuration.gifUrl
        if (!url) return
        var separator = url.indexOf("?") >= 0 ? "&" : "?"
        gifSource = url + separator + "_t=" + Date.now()
    }

    // Timer at root level so it persists regardless of representation lifecycle
    Timer {
        id: refreshTimer
        interval: (Plasmoid.configuration.refreshInterval || 5) * 60 * 1000
        running: true
        repeat: true
        onTriggered: root.refreshNow()
    }

    Connections {
        target: Plasmoid.configuration
        function onRefreshIntervalChanged() {
            refreshTimer.interval = (Plasmoid.configuration.refreshInterval || 5) * 60 * 1000
            refreshTimer.restart()
        }
    }

    fullRepresentation: Item {
        id: fullRep
        Layout.preferredWidth: 600
        Layout.preferredHeight: 550

        AnimatedImage {
            id: gifImage
            anchors.fill: parent
            cache: false
            fillMode: Image.PreserveAspectFit
            source: root.gifSource
            onStatusChanged: {
                if (status === AnimatedImage.Ready) playing = true
            }
        }

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                var station = Plasmoid.configuration.radarStation
                if (station) {
                    Qt.openUrlExternally("https://radar.weather.gov/station/" + station)
                } else {
                    Qt.openUrlExternally("https://weather.gov")
                }
            }
        }
    }

    Plasmoid.contextualActions: [
        PlasmaCore.Action {
            text: i18n("Refresh Now")
            icon.name: "view-refresh"
            onTriggered: { root.refreshNow(); refreshTimer.restart() }
        }
    ]
}
