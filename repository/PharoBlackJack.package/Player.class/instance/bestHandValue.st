helper
bestHandValue
	| minValue numAces|
	
	minValue := cards inject: 0 into: [:sum :card | sum + card value ].
	numAces := aces.
	
	minValue := minValue + (numAces * 10).
	
	(minValue > 21)
		ifTrue: [
			[numAces > 0] whileTrue: [
				numAces := numAces -1.
				minValue := minValue - 10.
				(minValue <= 21 )
					ifTrue: [ ^ minValue ]
			].
			^ 'Bust'
		]
		ifFalse: [
			^ minValue
		]