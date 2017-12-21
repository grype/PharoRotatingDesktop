instance creation
instanceForWorld: aWorld
	^ WorldInstances detect: [ :each | each world == aWorld ] ifNone: [ self newForWorld: aWorld ]