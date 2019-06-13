as yet unclassified
currentSpec
	(#($p  $d) contains: state)
		ifTrue:[^ self class requestSpec]
		ifFalse: [ ^ self class gameSpec ].
		