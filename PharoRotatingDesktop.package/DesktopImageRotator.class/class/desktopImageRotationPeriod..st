settings
desktopImageRotationPeriod: aPeriod
	| instance |
	DesktopImageRotationPeriod = aPeriod
		ifTrue: [ ^ self ].
	DesktopImageRotationPeriod := aPeriod.

	WorldMorph allInstances
		do: [ :world | 
			instance := self instanceForWorld: world.
			instance interval: (self periods at: aPeriod)
			].
	self changed