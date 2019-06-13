printing
printString
	|cardStr|
	cardStr := (cards collect: [ :c | c printString ]).
	cardStr at: 1 put: '*'.

	^ ', ' join: cardStr