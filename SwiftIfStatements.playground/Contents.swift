// Swift If Statements

/* var temperature = 22

if temperature < 18 {
    print("It's getting chilly. I recommend wearing a light sweater.")
} else if temperature < 12 {
    print("It's getting cold, let's get that jacket out.")
} else {
    print("It feels great outside. A t-shirt will do.")
}
*/

// we need to have a different way of putting this

var temperature = 9

if temperature < 12 {
    print("It's getting cold, let's get that jacket out.")
} else if temperature < 18 {
    print("It's getting chilly. I recommend wearing a light sweater.")
} else {
    print("It feels great outside. A t-shirt will do.")
}

// Logical Operators

if temperature > 7 && temperature < 12 {
    print("Might want to wear a scarf with that jacket")
}

var isRaining = true
var isSnowing = false

if isRaining || isSnowing {
    print("Get out those boots!")
}

if !isRaining {
    print("Yay the sun is out!")
}

//Switch Statement

/*switch value to consider {
 case value1: Respond to value1
 case value2: Respond to value2
 default: do something else (kind of like an else statement)
}

*/

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGW", "JFK", "ORY"]

for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK": print("New York")
    case "LHR", "LGW": print("London")
    case "CDG", "ORY": print("Paris")
    case "HKG": print("Hong Kong")
    default: print("I don't know what city that airport is in!")
    }
}

import GameKit

let randomTemperature = GKRandomSource.sharedRandom().nextInt(upperBound: 150)


switch randomTemperature {
case 0..<32: print("Forget Clothes, you are basically a popsicle")
case 32..<45: print("It's quite cold. You'll need a jacket.")
case 45..<70: print("It's a bit chilly. I recommend wearing a light sweater")
case 70...100: print("It's quite hot! T-shirt weather.")
default: print("Don't even bother to go out.")
}





