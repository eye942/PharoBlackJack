printing
printString
	^ ', ' join: (cards collect: [ :c | c printString ])
	