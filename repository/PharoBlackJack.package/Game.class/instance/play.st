playing
play 
	players
		do: [ :p | p active: true. p play. p active: false ] .
	
	