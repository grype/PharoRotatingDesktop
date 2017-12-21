baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				project: 'Scheduler'
				with: [ spec
						className: #ConfigurationOfScheduler;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/TorstenBergmann/Scheduler/main/' ].
			spec package: #'PharoRotatingDesktop' with: [ spec requires: #('Scheduler') ].
			spec group: 'default' with: #(#'PharoRotatingDesktop') ]