import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.kirigami as Kirigami
import org.kde.plasma.components 3.0 as PlasmaComponents3

PlasmoidItem {
    id: root
    
    // Try to force no background decoration
    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground | PlasmaCore.Types.ConfigurableBackground
    Plasmoid.configurationRequired: false
    
    // Set zero margins
    Layout.minimumWidth: fullRepresentation ? fullRepresentation.Layout.minimumWidth : 0
    Layout.minimumHeight: fullRepresentation ? fullRepresentation.Layout.minimumHeight : 0
    
    preferredRepresentation: fullRepresentation
    
    fullRepresentation: Item {
        
        id: fullRep

        property string currentUrl: ""
        property int updateCounter: 0
        
        AnimatedImage {
            id: gifImage
            anchors.fill: parent
            cache: true
            fillMode: Image.PreserveAspectFit
            playing: true
            
            // Force animation to restart periodically
            Timer {
                interval: 5000
                running: gifImage.status === AnimatedImage.Ready
                repeat: true
                onTriggered: {
                    if (!gifImage.playing) {
                        gifImage.playing = true
                    }
                }
            }
        }
        
        Timer {
            id: refreshTimer
            interval: Plasmoid.configuration.refreshInterval * 60 * 1000
            running: true
            repeat: true
            onTriggered: {
                fullRep.updateCounter++
            }
        }
        
        // Watch for any changes that should trigger an update
        property string urlToLoad: Plasmoid.configuration.gifUrl + "?t=" + updateCounter
        
        onUrlToLoadChanged: {
            // Don't clear the existing image, just load the new one
            gifImage.source = urlToLoad
        }
        
        // Poll for configuration changes
        Timer {
            interval: 250
            running: true
            repeat: true
            onTriggered: {
                if (Plasmoid.configuration.gifUrl !== fullRep.currentUrl) {
                    fullRep.currentUrl = Plasmoid.configuration.gifUrl
                    fullRep.updateCounter++
                }
                
                var newInterval = Plasmoid.configuration.refreshInterval * 60 * 1000
                if (refreshTimer.interval !== newInterval) {
                    refreshTimer.interval = newInterval
                }
            }
        }
        
        Component.onCompleted: {
            fullRep.currentUrl = Plasmoid.configuration.gifUrl
            fullRep.updateCounter = Date.now()
        }
    }
    
    Plasmoid.contextualActions: [
        PlasmaCore.Action {
            text: i18n("Refresh Now")
            icon.name: "view-refresh"
            onTriggered: {
                fullRepresentation.updateCounter++
            }
        }
    ]
}

