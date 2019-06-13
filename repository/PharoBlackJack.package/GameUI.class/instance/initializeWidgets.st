initialization
initializeWidgets 
	"widget instantiation"
	screen := self newLabel.
	textEntry := self newTextInput .
	buttonSubmit := self newButton .
	buttonHit := self newButton.
	buttonStay := self newButton.
	buttonFold := self newButton.
	buttonQuit := self newButton.
	boardMorph := (BoardMorph openGame: game) asSpecAdapter.
	"widget config"
	screen label: 'Play Blackjack'.
	buttonSubmit 
		label: 'Submit'.
	buttonHit 
		label: 'Hit';
		icon: (self iconNamed:#thumbsUp).
	buttonStay
		label: 'Stay';
		icon: (self iconNamed: #thumbsDown).
	buttonFold
		label:'Fold';
		icon: (self iconNamed: #testRed).
	buttonQuit
		label: 'Quit';
		icon: (self iconNamed: #smallQuit).
		
	state := $p.
	"specification of order or focus"
	self focusOrder
		add: screen;
		add: textEntry ;
		add: buttonSubmit ;
		add: boardMorph ;
		add: buttonHit ;
		add: buttonStay ;
		add: buttonFold;
		add: buttonQuit 