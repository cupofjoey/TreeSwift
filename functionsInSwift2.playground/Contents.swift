// Functions

func area(length: Int, width: Int) -> Int {
	
	
	let areaOfRoom = length * width
	return areaOfRoom
}

let areaOfFirstRoom = area(length: 20, width: 20)
let areaOfSecondRoom = area(length: 30, width: 30)

// Alternate Functions
//Void

func someFunction() {}

//or

func someFunctionTwo() -> Void{}

//or

func someFunctionThree() -> () {}

//Naming Conventions

//func move(toX: Int) Try to use prepositional phrase with the parameters in Functions

// Argument Labels

//Arguments need to have an external name and local name for example

func remove(havingValue value: String) {
	print(value)
}

remove(havingValue: "A")

// Default Values

//func carpetCost(havingArea area: Int, carpetColor color: String) -> Int {
//	//Grey carpet - $1 sq foot
//	//Tan carpet - $2/sq foot
//	// Deep Blue carpet - $4/squ foot
//	
//	var price = 0
//	
//	switch color {
//		case "gray": price = area * 1
//		case "tan": price = area * 2
//		case "blue": price = area * 4
//	default: price = 0
//	
//	}
//
//	return price
//
//
//}
//
//carpetCost(havingArea: 600, carpetColor: "blue")


//func carpetCostHaving(length: Int, width: Int, carpetColor color: String) -> Int {
//		//Grey carpet - $1 sq foot
//		//Tan carpet - $2/sq foot
//		// Deep Blue carpet - $4/squ foot
//	
//	let areaOfRoom = area(length: length, width: width)
//	
//		var price = 0
//	
//		switch color {
//			case "gray": price = areaOfRoom * 1
//			case "tan": price = areaOfRoom * 2
//			case "blue": price = areaOfRoom * 4
//		default: price = 0
//	
//		}
//	
//		return price
//
//}
//
//carpetCostHaving(length: 10, width: 20, carpetColor: "tan")

// Tuple

func carpetCostHaving(length: Int, width: Int, carpetColor color: "tan") -> (price: Int, carpetColor: String) //Tuple {
	//Grey carpet - $1 sq foot
	//Tan carpet - $2/sq foot
	// Deep Blue carpet - $4/squ foot
	
	let areaOfRoom = area(length: length, width: width)
	
	var price = 0
	
	switch color {
	case "gray": price = areaOfRoom * 1
	case "tan": price = areaOfRoom * 2
	case "blue": price = areaOfRoom * 4
	default: price = 0
		
	}
	
	return price
	
}

let result = carpetCostHaving(length: 10, width: 20)
result.1
result.0

//Scope









