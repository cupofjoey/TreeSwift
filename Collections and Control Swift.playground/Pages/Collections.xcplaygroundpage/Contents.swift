//: Collections and Control Flow

// Arrays

var todo: [String] = ["Finish Collections Course", "Buy Groceries", "Respond to Emails"]

var numbers: [Int] = [3, 2, 1]

// Add new item to end of array using append method
todo.append("Pick up dry cleaning")

//Concatenating two arrays

[3, 2, 1] + [4]

//Concatenate array containing string literal to todo
todo = todo + ["Order book online"]

//Performing the same operation using the unary addtion operator
todo += ["Order second book online"]

//Immutable Arrays

let secondTaskList = ["Mow the lawn"]

//secondTaskList.append("Pay Bills") Error!!!

//Reading from Arrays

todo[0]

let firstTask = todo[0]

let thirdTask = todo[2]

//Modifying Existing Values in an Array
//Mutating an array

todo[4] = "Brush Teeth"
todo[0] = "Watch Treehouse Content"

// Insert Using Indexes

todo.insert("Watch TV", at: 2)

//Removing Items from Arrays

todo.remove(at: 2)

//Displaying Arrays

todo.count

//Dictionaries

/*

		Airport Code (Key)			Airport Name (Value)

			LGA								La Guardia
			LHR								Heathrow
			CDG								Charles De Gaulle
			HKG								Hong Kong International
			DXB								Dubai International

*/

var airportCodes: [String: String] = ["LGA": "La Guardia",
	"LHR": "Heathrow",
	"CDG": "Charles De Gaulle",
	"HKG": "Hong Kong International",
	"DXB": "Dubai International"]

let currentWeather = ["temperature": 75.0]

//A Dictionary take's key/value pairs, but arrays take a series of strings or ints

// Reading from a dictionary

airportCodes["LGA"]
airportCodes["HKG"]

// Inserting Key Value Pairs

airportCodes["SYD"] = "Sydney Airport"

airportCodes["SYD"]

airportCodes["LGA"] = "La Guardia International Airport"

airportCodes.updateValue("Dublin Airport", forKey: "DUB")

//Removing Key Value Pairs

airportCodes["DXB"] = nil
airportCodes.removeValue(forKey: "CDG")

//Dealing with Non Existent Data

let newYorkAirport = airportCodes["LGA"]

let orlandoAirport = airportCodes["MCO"]

//For In Loop



