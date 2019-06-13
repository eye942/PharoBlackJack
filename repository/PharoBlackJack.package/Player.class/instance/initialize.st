initialization
initialize
	super initialize.
	active := False .
	cards := OrderedCollection newFrom: #().
	aces := 0 .