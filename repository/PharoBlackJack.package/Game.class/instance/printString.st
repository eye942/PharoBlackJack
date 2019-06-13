printing
printString
	^ String streamContents: [:stream | players asStringOn: stream delimiter: (String cr) ] 