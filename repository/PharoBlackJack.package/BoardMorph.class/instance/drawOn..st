drawing
drawOn: aCanvas
	| crossHeight crossWidth horizontalBar verticalBar |
	crossHeight := self height .
	crossWidth := self width .
	Transcript
		show: crossHeight;
		cr;
		show: crossWidth.
	horizontalBar := self bounds insetBy: 0 @ crossHeight.
	verticalBar := self bounds insetBy: crossWidth @ 0.
	aCanvas fillRectangle: horizontalBar color: self color.
	aCanvas fillRectangle: verticalBar color: self color