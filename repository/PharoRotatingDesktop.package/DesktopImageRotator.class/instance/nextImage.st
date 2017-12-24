initialize - release
nextImage
	^ self nextImageFileName
		ifNotNil: [ :fileName | 
			[ ImageReadWriter formFromFileNamed: fileName ]
				on: Error
				do: [ :error | nil ] ]