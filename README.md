# GIF Widget

A KDE Plasma 6 widget that displays animated GIF images, primarily designed for showing NWS (National Weather Service) radar loop animations.

## Features

- **NWS Radar Stations**: Choose from ~150 US radar stations organized by region
- **Custom URLs**: Enter any GIF URL for non-radar use cases
- **Auto-refresh**: Configurable refresh interval (default: 5 minutes) keeps data current
- **Manual refresh**: Right-click context menu option to refresh immediately
- **Multiple instances**: Run multiple widgets on the same desktop with independent configurations

## Requirements

- KDE Plasma 6.0 or later

## Installation

Install locally for the current user:

```bash
kpackagetool6 -t Plasma/Applet -i /path/to/gifwidget
```

Upgrade an existing installation:

```bash
kpackagetool6 -t Plasma/Applet -u /path/to/gifwidget
```

Remove the widget:

```bash
kpackagetool6 -t Plasma/Applet -r org.kde.plasma.gifwidget
```

## Configuration

Right-click the widget and select "Configure..." to access settings:

- **Radar Station**: Select from the dropdown list of NWS radar sites
- **Custom GIF URL**: Override the station selection with any GIF URL
- **Refresh interval**: How often to reload the image (1-1440 minutes)

## License

GPL-2.0+

## Author

Rob Repp <robrepp@me.com>
