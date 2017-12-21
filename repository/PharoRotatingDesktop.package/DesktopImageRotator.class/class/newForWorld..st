instance creation
newForWorld: aWorld
	| instance |
	instance := self basicNew initializeWithWorld: aWorld.
	WorldInstances add: instance.
	^ instance.