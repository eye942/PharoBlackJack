helper
addCard: deck
	"Recieve a new card"
	| card |
	card := deck drawCard . 
	cards add: card.
	((card value) = 1)
		ifTrue: [ aces := aces + 1 ].
	^ card