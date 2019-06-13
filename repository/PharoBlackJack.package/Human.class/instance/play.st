api
play
"Finish this"
	active
		ifTrue:[
			[(self bestHandValue) <= 21] whileTrue: [ 
			]].
	
	^self bestHandValue 