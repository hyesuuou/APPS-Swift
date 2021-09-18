// if문

var age = 12

if age > 17 {
    print("운전면허 가능")
}
else {
    print("운전면허 불가능")
}


var sound = 75

if sound > 85 {
    print("시끄러움")
}
else {
    print("안시끄러움")
}

// Math
var ageMin = 18
if age < ageMin {
    let difference = ageMin - age
    print(difference)
}

// converter

var i = 25.0
var m = i * (381 / 1250)

// transfer
var order = 2555.0565748
var cutRate = 0.02
var cut = Double(order) * Double(cutRate)

var x = 5.0
var y = 30.5
var z: Float = 12.7

x * y * Double(z)

// =====
var income =  300
var day = "monday"

print("Hi there. It is \(day). I earned \(income) pounds today.")

// Logic & Boolean
var isEurope: Bool = true
if isEurope {
    print("Welcome to Europe")
}
