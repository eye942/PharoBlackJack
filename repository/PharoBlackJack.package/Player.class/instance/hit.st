api
hit
	active
		ifFalse: [ ^ nil ].
	self addCard: game deck.
	^ self bestHandValue