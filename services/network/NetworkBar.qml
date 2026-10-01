pragma Singleton

import Quickshell
import QtQuick
import Quickshell.Networking

Singleton {
    property var adapters: Networking.devices
    function find(x) {
        return x?.values.find(item => item.connected) ?? null
    }
    property var connectedAdapter: find(adapters)
    property bool isWifi: connectedAdapter?.type === DeviceType.Wifi
    property bool isWired: connectedAdapter?.type === DeviceType.Wired
    property var connectedNet: isWifi ? find(connectedAdapter?.networks) : null
    property var netName: isWifi ? (connectedNet?.name ?? "") : ""
    property var netStrenght: isWifi ? (connectedNet?.signalStrength ?? 0) : 0
    function strenght(x) {
        if (x < 0.2) return "󰤯"
        if (x >= 0.2 && x < 0.4) return "󰤟"
        if (x >= 0.4 && x < 0.6) return "󰤢"
        if (x >= 0.6 && x < 0.8) return "󰤥"
        if (x >= 0.8) return "󰤨"
    }
    property string icon: isWifi ? strenght(netStrenght): (isWired ? (connectedAdapter?.hasLink ? "󰈁" : "󰈂") : "󰤮")
}
