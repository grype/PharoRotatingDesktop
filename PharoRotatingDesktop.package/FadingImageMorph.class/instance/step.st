model - stepping
step
	alpha <= fadingFactor
		ifTrue: [ ^ self delete ].
	alpha := alpha - fadingFactor .
	self changed