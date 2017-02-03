var todo: [String] = ["Finish Collections Course", "Buy Groceries", "Respond to emails", "Pick up Dry Cleaning", "Order books online", "Mow the lawn"]

let item = todo[0]

for task in todo{
	print(task)
}

// Ranges

//Closed Range Operator

// a...b creates a range of values of everything between those two values.

//Half Open Range Operator

// 1..<5 Everything between 1 and one less than 5 

for number in 1...10{
	print("\(number) times 5 is equal to \(number)")
}

// While Loop

var x = 0

while x <= 20 {
	print(x)
	x += 1
}

var index = 0

while index < todo.count {
	print(todo[index])
	index += 1
}

/*
Repeat While Loop

repeat {
	statements
} while condition

*/

var counter = 1

while counter < 1 {
	print("I'm inside the while loop")
		counter += 1
}

//this will give an error

repeat {
	print("I'm inside the while loop!")
	counter += 1
} while counter < 1









