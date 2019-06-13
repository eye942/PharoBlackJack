accessing
bet 
	bet := (UIManager default request: 'How much do you want to bet?' initialAnswer:'0-',value  title:'Bets') asNumber.
	value := value - bet