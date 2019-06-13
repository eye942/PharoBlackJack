playing
play
	|handValue|
	
	handValue := self bestHandValue .
	
	[handValue <= 17] whileTrue: 
		[ self hit. 
		  handValue := self bestHandValue 
		].
	(handValue > 21)
		ifTrue: [ ^'Bust' ]
		ifFalse: [ ^handValue ]