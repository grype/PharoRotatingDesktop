settings
periods
	^ {(PeriodNever -> 0 asDuration).
	(PeriodMinute -> 60 asDuration).
	(Period5Minutes -> 300 asDuration).
	(Period10Minutes -> 600 asDuration).
	(Period15Minutes -> 900 asDuration).
	(Period30Minutes -> 1800 asDuration).
	(PeriodHour -> 3600 asDuration).
	(PeriodDay -> 86400 asDuration)} asDictionary