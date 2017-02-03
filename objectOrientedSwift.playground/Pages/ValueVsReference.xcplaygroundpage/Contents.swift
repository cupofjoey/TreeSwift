struct User {
	var fullName: String
	var email: String
	var age: Int
}

var someUser = User(
	fullName: "Joe Hill",
	email: "joe@jkh3.com",
	age: 37
)

var anotherUser = someUser
anotherUser.email

someUser.email = "joseph.hill@forrent.com"

anotherUser.email
//It's the same as the original email

class Person {
	var fullName: String
	var email: String
	var age: Int
	
	init(name: String, email: String, age: Int) {
		self.fullName = name
		self.email = email
		self.age = age
	}
}

var somePerson = Person(name: "Tim Cook", email: "tim.cook@apple.com", age: 54)

somePerson.email = "tcook@apple.com"




