api
start 
	"Start the game"
	|nPlayers nDecks game|
	nPlayers := (UIManager default request: 'How many players will there be' initialAnswer:'0' title:'BlackJack' ) asNumber .
	nDecks := (UIManager default request: 'How many decks will be played?' initialAnswer: '0' title: 'BlackJack') asNumber.
	game := self withDecks: nDecks withPlayers: nPlayers.
	game startUI.
	