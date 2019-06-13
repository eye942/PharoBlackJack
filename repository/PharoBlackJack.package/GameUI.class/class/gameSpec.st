specs
gameSpec
^ SpecLayout composed
	newRow: 
		[ :row |
			row add: #boardMorph ]
		origin: 0 @ 0 corner: 1 @ 0.8 ;
	newRow: 
		[ :row |
			row add: #buttonHit; add: #buttonStay]
		origin: 0 @ 0.8 corner: 1 @ (0.8+(0.35*0.2));
	newRow: 
		[:row | 
			row
				newColumn:
					[:c | c add: #buttonFold] left: 0 right: 0.25;
				newColumn: 
					[ :c | c add: #buttonQuit ] left:0.75 right: 0 ]
		origin: 0 @ (0.8+(0.35*0.2)) corner: 1 @ (0.8+(0.7*0.2));
	newRow: 
		[ :row | row add: #screen ]
	origin: 0 @ (0.8+(0.7*0.2)) corner: 1 @ 1;
	yourself