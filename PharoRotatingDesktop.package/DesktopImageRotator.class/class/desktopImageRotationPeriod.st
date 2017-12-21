settings
desktopImageRotationPeriod
	^ DesktopImageRotationPeriod ifNil: [DesktopImageRotationPeriod := #'Never']