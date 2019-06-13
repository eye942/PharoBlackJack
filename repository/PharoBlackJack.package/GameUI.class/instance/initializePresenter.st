initialization
initializePresenter 
	buttonSubmit action: [ 
		state := (state = $p) 
			ifTrue: [ $d ]
			ifFalse: [ 
				(state = $d)
					ifTrue: $g
				 ].
		self needRebuild: true.
		self buildWithSpecLayout: self currentSpec.
	].
	buttonHit action: [ screen label: buttonHit label. game human hit ].
	buttonStay action: [ screen label: buttonStay label. game human stay ].
	buttonFold action: [ screen label: buttonFold label. game human fold ].
	buttonQuit action: [screen label: buttonQuit label. game quit ].