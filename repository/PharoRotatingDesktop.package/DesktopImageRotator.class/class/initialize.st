initialize
initialize
	"DesktopImageRotator initialize"

	super initialize.
	WorldInstances := IdentityBag new.
	PeriodNever := #Never.
	PeriodMinute := #'Every Minute'.
	Period5Minutes := #'Every 5 Minutes'.
	Period10Minutes := #'Every 10 Minutes'.
	Period15Minutes := #'Every 15 Minutes'.
	Period30Minutes := #'Every 30 Minutes'.
	PeriodHour := #'Every Hour'.
	PeriodDay := #'Every Day'