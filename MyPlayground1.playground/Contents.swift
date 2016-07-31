

class people{
    var name = ""
    var age = ""
    var district = ""
    
    init(name: String, age: String , district: String){
        self.name = name
        self.age = age
        self.district = district
    }
    
    func descriton() -> String{
        
        let b = "大家好！" + "我是\(self.name)" + "今年\(self.age)岁" + "来自\(self.district)"
        return b
    }
}


let 洪丹伟 = people(name: "洪丹伟", age: "23", district: "浙江浦江")
洪丹伟.descriton()


let b = "Guten Tag"
println("\(b[b.endIndex.predecessor()]), \(b.startIndex)")
