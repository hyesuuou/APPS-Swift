// Declaring and Calling Functions

func consoleLog(){
    print("Hi Guys")
}

consoleLog()
consoleLog()
consoleLog()
consoleLog()

func dayOfWeek(day: String, month: Int) {
    print("Today is \(day). We are in \(month)")
}

dayOfWeek(day: "Monday", month: 3)
dayOfWeek(day: "Sunday", month: 4)


func multiply(x: Int, y: Int) {
    print(x * y)
}

multiply(x: 7, y: 5)

func multi(x: Int, y: Int) -> Int {
    return x * y
}

var result: Int = multi(x: 8, y: 2)
result / 4

// func takes 3 doubles add them and return an Int
func add(x: Double, y: Double, z: Double) -> Int {
    return Int(x + y + z)
}

print(add(x: 6.2, y: 4.6, z: 8.3))

/*// Class
class Car {
    var brand = ""
    var modelYear = 0
    var color = ""
    
    func drive(){
        print("부릉부릉")
    }
    
    func intro(){
        print("This \(color) \(brand) is \(modelYear) model")
    }
    
    func add(){
        modelYear = modelYear + 10
    }
}

var myCar = Car()
myCar.modelYear = 2010
myCar.modelYear
myCar.color = "blue"
myCar.brand = "ford"
myCar.drive()
myCar.add()
myCar.intro()

var sportCar = Car()
sportCar.brand = "ferrari"
sportCar.modelYear = 2020
sportCar.modelYear
*/
class Pen {
    var brand = "faber castel"
    var length = 5.10
    var color = ""
}

var redPen = Pen()

// 상속
class Vehicle {
    var brand = ""
    var modelYear = 0
    
    func drive() {
        print("운전드르르르르릉")
    }
}

class Truck: Vehicle {
    override func drive() {
        print("핏핏핏핏")
    }
}

class Car: Vehicle {
    var color = ""
    
    override func drive() {
        super.drive()
        print("Car 부릉부릉")
    }
}

var myCar = Car()
myCar.modelYear = 20
myCar.color = "blue"
myCar.brand = "ford"
myCar.drive()

var myTruck = Truck()
myTruck.modelYear
Truck().drive()


