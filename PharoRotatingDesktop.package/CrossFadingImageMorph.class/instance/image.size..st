accessing
image: aForm size: aPoint
	| newMorph |
	newMorph := FadingImageMorph withForm: self form.
	newMorph layout: self layout.
	newMorph extent: self extent.
	super image: aForm size: aPoint.
	self extent: aPoint.
	self addMorphBack: newMorph