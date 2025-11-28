import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.kirigami as Kirigami
import org.kde.plasma.components 3.0 as PlasmaComponents3

PlasmoidItem {
    id: root

    property int updateCounter: Date.now()

    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground | PlasmaCore.Types.ConfigurableBackground
    Plasmoid.configurationRequired: false

    Layout.minimumWidth: fullRepresentation ? fullRepresentation.Layout.minimumWidth : 0
    Layout.minimumHeight: fullRepresentation ? fullRepresentation.Layout.minimumHeight : 0

    preferredRepresentation: fullRepresentation

    // Timer at root level so it persists regardless of representation lifecycle
    Timer {
        id: refreshTimer
        interval: (Plasmoid.configuration.refreshInterval || 5) * 60 * 1000
        running: true
        repeat: true
        onTriggered: {
            root.updateCounter = Date.now()
        }
    }

    function refreshNow() {
        root.updateCounter = Date.now()
        refreshTimer.restart()
    }

    fullRepresentation: Item {
        id: fullRep

        property string urlToLoad: Plasmoid.configuration.gifUrl + "?t=" + root.updateCounter

        onUrlToLoadChanged: {
            gifImage.source = urlToLoad
        }

        AnimatedImage {
            id: gifImage
            anchors.fill: parent
            cache: true
            fillMode: Image.PreserveAspectFit
            playing: true
        }
    }

    Plasmoid.contextualActions: [
        PlasmaCore.Action {
            text: i18n("Refresh Now")
            icon.name: "view-refresh"
            onTriggered: root.refreshNow()
        }
    ]
}
