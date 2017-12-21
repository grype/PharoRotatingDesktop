settings
periodSelectors
	^ (self periods associations sorted: [ :a :b | a value < b value ])
		collect: [ :each | each key ]