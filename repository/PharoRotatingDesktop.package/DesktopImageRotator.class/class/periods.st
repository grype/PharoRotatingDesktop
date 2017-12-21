settings
periods
	^ {(#'Never' -> 0 asDuration).
	(#'Every Minute' -> 60 asDuration).
	(#'Every 5 Minutes' -> 300 asDuration).
	(#'Every 10 Minutes' -> 600 asDuration).
	(#'Every 15 Minutes' -> 900 asDuration).
	(#'Every 30 Minutes' -> 1800 asDuration).
	(#'Every Hour' -> 3600 asDuration).
	(#'Every Day' -> 86400 asDuration)} asDictionary.