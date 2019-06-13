specs
requestSpec
<spec: #default>
^ SpecLayout composed
	newRow: 
		[ :row | row add: #screen ]
	origin: 0 @ 0.5 corner: 1 @ 0.6;
	newRow: 
		[ :row | row add: #textEntry  ]
	origin: 0 @ 0.6 corner: 1 @ 0.7;
	newRow: 
		[:row | 
			row
				newColumn: 
					[ :c | c add: #buttonSubmit ] left:0.75 right: 0 ]
		origin: 0 @ 0.7 corner: 1 @ 0.8;
	yourself