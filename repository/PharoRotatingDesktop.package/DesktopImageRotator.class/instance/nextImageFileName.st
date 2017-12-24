accessing-images
nextImageFileName
	^ PolymorphSystemSettings desktopImageFileName
		ifNotNil: [ :file | file asPath parent asFileReference files atRandom fullName ]