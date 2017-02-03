let coordinate1: (x: Int, y: Int) = (0,0)
coordinate1.x

/* A Structure, or Struc is a flexible data type that allows you group together related values and model them as a unit
When naming Structs, you can use Uppercase Camel Case
*/

//struct Point {
//	let x: Int
//	let y: Int
//}

//The constants above are properties of the structure, or "stored properties"

//let coordinatePoint = Point(x: 0, y: 0)

/* This is an instance above, we can use the struct definition which gives us a blueprint and we can pass different values to get different results. Much like you can put various liquids in an ice cube tray. The Ice Cube Tray is the Struct, the instances are what the struct can make (frozen fruit juice, soda, water, whatever) */



//coordinatePoint.x

//Using Functions with Objects

struct Point {
	let x: Int
	let y: Int
	
	init(x: Int, y: Int) {
		self.x = x
		self.y = y
		//self refers to naming objects within an object

	}
	
	///Returns the surrounding points in range of
	///the current one
	func points(inRange range: Int = 1) -> [Point] {
		///the empty array is to store point objects
		var results = [Point]()
		
		let lowerBoundOfXRange = x - range
		let upperBoundOfXRange = x + range
		
		let lowerBoundOfYRange = y - range
		let upperBoundOfYRange = y + range

		for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
			for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
				let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
				results.append(coordinatePoint)
			}
		}
		
		return results
		
	}
}


let coordinatePoint = Point(x: 0, y: 0)

coordinatePoint.x

// Methods is a function associated with a specific type

// The method above is an instance method, it can only be called when we have an instance (return statement for instance)


coordinatePoint.points()

//Structures, or structs, are one of the named types in Swift that allow you to encapsulate related properties and behaviors. You can define it, give it a name and then use it in your code.


// Classes

//Enimies

class Enemy {
	var life: Int = 2
	let position: Point
	
	init(x: Int, y: Int) {
		self.position = Point(x: x, y: y)
	}
	
	func decreaseLife(by factor: Int) {
		life -= factor
	}

}

class SuperEnemy: Enemy { //By typing "Enemy" here, SuperEnemy is inheriting the attributes of the Enemy Class, and is a subclass of the superclass Enemy
	let isSuper: Bool = true
	//we need to override the subclass init method
	override init(x: Int, y: Int) {
		super.init(x: x, y: y)
		self.life = 50
	}
	
}



//Towers
class Tower {
	let position: Point
	var range: Int = 1
	var strength: Int = 1
	
	init(x: Int, y: Int) {
		self.position = Point(x: x, y: y)
	}
	
	func fire(at enemy: Enemy) {
		if isInRange(of: enemy) {
			enemy.decreaseLife(by: strength)
			print("Gotcha")
		}else{
		print("Darn, out of range")
		}
		
	}
	
	func isInRange(of enemy: Enemy) -> Bool {
		let availablePositions = position.points(inRange: range)
		
		for point in availablePositions {
			if point.x == enemy.position.x && point.y == enemy.position.y {
				return true
			}
		}
		
		return false
	}
}

class LaserTower: Tower {
	override init(x: Int, y: Int){
		super.init(x: x, y: y)
		self.range = 100
		self.strength = 100
	}
	override func fire(at enemy: Enemy) {
		while enemy.life >= 0 {
			enemy.decreaseLife(by: strength)
		}
		print("Enemy Destroyed!")
	}
}

let firstTower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)
let superEnemy = SuperEnemy(x: 1, y: 1)
let laserTower = LaserTower(x: 2, y: 2)

//superEnemy inherits from Enemy, and becomes a "subclass" of the class "Enemy"
//You can refine the subclass, like increasing the life from 1 to 50

firstTower.fire(at: enemy)

// Class Inheritance

/* Initializing a Subclass
1. Provide values for properties of the subclass

2. Once the subclass is initialized, provide values for properties of the base class


*/
firstTower.fire(at: superEnemy)
laserTower.fire(at: superEnemy)


