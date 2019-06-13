initialization
openGame: game
	| morph |
	morph := BoardMorph new.
	morph game: game.
	^ morph