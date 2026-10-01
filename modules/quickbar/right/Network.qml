import Quickshell
import QtQuick
import qs.config.colors
import qs.config
import qs.services.network

Text {
    text: NetworkBar.icon
    color: MatugenColors.textColor
    font {
        family: Settings.fontFamily
        weight: Settings.fontWeight
        pixelSize: Settings.fontSize
    }
}
