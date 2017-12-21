initialize - release
interval: aDuration
	timer
		ifNotNil: [ timer stop.
			timer := nil ].
	aDuration asSeconds > 0
		ifFalse: [ ^ self ].
	timer := TaskScheduler new.
	timer do: [ self updateBackground ] every: aDuration.
	timer start