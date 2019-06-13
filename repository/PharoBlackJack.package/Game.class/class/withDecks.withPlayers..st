initialization
withDecks:n withPlayers: p
	|game k|
	game := self new. 
	
	((p * 4) <  (n*52))
		ifFalse: [
			k := (p / 13) roundUpTo: 1.
			UIManager default alert: 'Changed decks from ', n printString, ' to ', k printString, '.'.
			]
		ifTrue: [ 
			k := n].
	game 
		deck: (Deck withDecks: k);
		players: p.
	^ game
	