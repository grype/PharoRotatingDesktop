initialize - release
updateBackground
	| image |
	self world == World
		ifFalse: [ ^ false ].

	image := self nextImage.
	image ifNil: [ ^ false ].
	
	(World backgroundMorph isKindOf: CrossFadingImageMorph)
		ifTrue: [ World backgroundMorph image: image size: World extent ]
		ifFalse: [ World
				backgroundMorph:
					((CrossFadingImageMorph withForm: image)
						layout: PolymorphSystemSettings desktopImageLayout;
						extent: World extent;
						lock: true;
						yourself) ].
	^ true