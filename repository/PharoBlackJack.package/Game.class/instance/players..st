initialization
players: n
	"Takes more than 0 players"
	[n > 0] assert.
	players :=  OrderedCollection with: (Player new game: self).
	players 
		addAll: ((1 to: n-1) collect: [ :i | Bot new game: self ]);
		shuffle;
		add:  dealer.