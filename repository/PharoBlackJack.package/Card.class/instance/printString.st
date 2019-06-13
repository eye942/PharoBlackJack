printing
printString 
	| valueString suitString valueDict suitDict |
	
	suitDict := Dictionary newFrom: { 0 -> 'Uninitialized'.
	1 -> 'Clubs' .
	2 -> 'Spades' .
	3 -> 'Hearts' .
	4 -> 'Diamonds' }.
	suitString := suitDict at: suit .
	
	valueDict := Dictionary newFrom:  { 0 -> ''.
	1 -> 'A'.
	11-> 'J'.
	12 -> 'Q'.
	13 -> 'K' } .
	
	valueString := ( value between: 2 and: 10 )
		ifTrue: [ value printString ]
		ifFalse: [ valueDict at: value ] .
	
	^ valueString , '-' ,  suitString .