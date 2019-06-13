helper
decks: n	
	deck := (1 to: n) flatCollect: 
		[ :i| (1 to: 4) flatCollect: 
			[:s | (1 to: 13) collect: 
				[ :v | Card new
					value: v suit: s;
			 		yourself ]
				]
	] .
	deck shuffle. 
	
	^ self
		resetCounter;
		yourself .