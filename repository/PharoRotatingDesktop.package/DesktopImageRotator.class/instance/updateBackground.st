initialize - release
updateBackground
	| dir |
	self world == World
		ifFalse: [ ^ false ].

	dir := PolymorphSystemSettings desktopImageFileName
		ifNotNil: [ :file | file asPath parent asFileReference ].

	dir ifNil: [ ^ false ].

	dir files atRandom fullName
		ifNotNil: [ :fileName | 
			| image |
			image := ImageReadWriter formFromFileNamed: fileName.
			(World backgroundMorph isKindOf: CrossFadingImageMorph)
				ifTrue: [ World backgroundMorph image: image size: World extent ]
				ifFalse: [ World
						backgroundMorph:
							((CrossFadingImageMorph withForm: image)
								layout: PolymorphSystemSettings desktopImageLayout;
								extent: World extent;
								lock: true;
								yourself) ] ].
	^ false