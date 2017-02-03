struct Person {
	let firstName: String
	let middleName: String?
	let lastName: String
	
	func fullName() -> String {
		if middleName == nil {
			return firstName + " " + lastName
		} else {
			return firstName + " " + middleName! + " " + lastName
		}
	}
}

//the ! is terrible. do not do this, EVER

let me = Person(firstName: "Joe", middleName: nil, lastName: "Hill")

//and optional indicates there is a value in this case middleName is a String, or the optional has no value at all. 

//Working with Optional Types

let airportCodes = ["CDG": "Charles De Gaulle"]
let newYorkAirport = airportCodes["JFK"]

if let newYorkAirport = airportCodes["JFK"] {
	print(newYorkAirport)
} else {
	print("Whoops! That key does not exist!")
}

let weatherDictionary: [String: [String: String]] = [
	"currently": ["temperature": "22.3"],
	"daily": ["temperature": "22.3"],
	"weekly": ["temperature": "22.3"]
]

//if let daily = weatherDictionary["daily"] {
//	if let highTemp = dailyWeather["temperature"] {
//		print(highTemp)
//	}
//}

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
	print(highTemperature)
}

//if let

struct Friend{
	let name: String
	let age: String
	let address: String?
}

func new(friendDictionary: [String: String]) -> Friend? {
	if let name = friendDictionary["name"], let age = friendDictionary["age"] {
		let address = friendDictionary["address"]
		return Friend(name: name, age: age, address: address)
	} else {
		return nil
	}
}

//Guard Statements
// Early Exit

func newFriend(friendDictionary: [String : String]) -> Friend? {
	guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
		return nil
	}
	let address = friendDictionary["address"]
	return Friend(name: name, age: age, address, address)
}

























