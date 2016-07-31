//: Playground - noun: a place where people can play

let str = "gfdjkhsfkjd"
println(str)


class employee{
    
    
    var person: String = "d"
    var man: String = "hua" {
        willSet(newVuale){
            self.person = "hd"
            println("新值\(newVuale)")
        }
        didSet(oldVaule){
            println("旧值\(oldVaule)")
        }
    }
}

var people = employee()
println(people.person)

people.man = "10"
people.man = "20"
people.man = "hua"


let airports = ["Tyo": "ds"  , "china" : "cinese"]

for(i , vuale) in airports{
    println("\(i) : \(vuale)")
}

for vuale in airports.values{
    println(vuale)
}

