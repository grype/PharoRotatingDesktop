settings
settingsForAppearanceAdditions: aBuilder
	<systemsettings>
	(aBuilder pickOne: #desktopImageRotationPeriod)
		parent: #desktopImageFileName;
		label: 'Rotate background images';
		description: 'Rotate background with an image randomly selected from the same directory';
		target: self;
		order: 1;
		default: 0;
		domainValues: self periodSelectors 