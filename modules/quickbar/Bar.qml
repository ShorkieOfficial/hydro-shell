import QtQuick
import Quickshell
import qs.config.colors
import qs.config
import qs.modules.quickbar.middle
import qs.modules.quickbar.right

PanelWindow {
	anchors {
		top: true
		left: true
		right: true
	}
	margins {
		top: Settings.barTopSpacing
		left: Settings.barHSpacing
		right: Settings.barHSpacing
		bottom: Settings.barWinSpacing
	}
	color: "transparent"
	implicitHeight: Settings.barHeight

	Rectangle {
		id: bar
		anchors.fill: parent
		color: MatugenColors.barColor
		radius: Settings.roundness
		border {
		    color: MatugenColors.borderColor
			width: Settings.borderWidth
		}

		MiddleModule {
		    anchors.centerIn: parent
		}
		RightModule {
		    anchors.right: parent.right
		}
	}
}
