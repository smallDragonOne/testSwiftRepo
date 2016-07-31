//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//var a  = [Bool]()
//var len: Int = 0
//var b: Int = 0
//
//for i in 1...30{
//    a.append(true)
//}
//
//len = (Int)(a.count)
//while( len > 1){
//    
//    for h in (0...a.count) {
//        
//        if(a[h]){
//            b++
//            if (b == 3){
//                b = 0
//                a[h] = false
//                len = len - 1
//            }
//        }
//    }
//    println(len)
//}
//println(len)


//class  man: UIView {
//    var mas = "11"
//}
//if  let classObject  = NSClassFromString("man") as? man.Type{
//    let object: Void = classObject.initialize()
//    println(object)
//}

/// 结构体范型
//struct people<T>{
//    var item = [T]()
//    func getName(Name: T) -> T{
//        return Name
//    }
//}
//
//
//let man = people<Int>()
//man.getName(5)
//let Str = people<String>()
//Str.getName("huahau")

/***************范型区*******
/// 类的范型 
class peopleClas<T> {
    var propert: T
    init(father item: T){
        self.propert = item
    }
    
}

/// 自定义类
class custom{
    var Name: String = "11"
}

/// 字典
let man = peopleClas<[[String: Int]]>(father: [["11":12 ,"12":14]])
man.propert
let cusTomcal = custom()
/// 自定义类
let customcalss = peopleClas<custom>(father: cusTomcal)
customcalss.propert

let array = Array<custom>(arrayLiteral: cusTomcal)
*/

/// **********数组
//var man = [1 ,2 ,3]
//man.insert(0, atIndex: 1)
//
//var man2 = [1,2,3]
//man2[0] = 4
//println(man2)
//
//
//var man12: Array = [Int]()
//man12.reserveCapacity(4)
//man12.capacity


/// 排序
//var man_s = [1 ,4 ,44 ,21 , 12 , 22]
//let array = man_s.sorted { (s1:Int, s2:Int) -> Bool in
//    if s1 > s2{
//        return true
//    }
//    return false
//}
//println(array)

//let array2 = man_s.sorted {$0 > $1}
//println(array2)


//func getman(a: Int , b: Int) -> Bool{
//    return a > b
//}
//getman(10, 12)


/// 筛选
//var manss = [2 , 8 , 3 , 11 , 14]
//var article = [Int]()
//manss.flatMap { (s1) -> Array<Int> in
//    if s1 % 2 == 0{
//        article.append(s1)
//    }
//    return article
//}
//println(article)
//var firlt = manss.filter {$0 % 2 == 0}
//println(firlt)

///// 扩展元素
//var manArray = [2 , 3 ,7 ,11 , 32 ,42]
//let NewArray = manArray.map { $0 / 2}
//println(NewArray)
//
//
///// 通过闭包内对每个元素进行操作然后返回一个单独的值
//var reducearray = [1 ,2 ,3 ,4 ,5]
//let NewRedArr = reducearray.reduce(10){$0 - $1}
//println(NewRedArr)
//
//var sliceArray = [1 , 31 ,22 ,5 ,11 ,15 ,21 ,32]
//var slicAr:ArraySlice = sliceArray[2...4]
//
//var NewSlice = Array(slicAr)


///// 属性需要初始化有值，没赋值的需在init中
//struct people {
//    var leg: Int!
//}
//
//var man = people()
//man.leg = 11

/// 结构体自动构造初始化方法（自己不定义的） ，类不能自动构造初始化属性的方法，需要自己定义
//struct plant {
//    var flower: String
//}
//var plantInstance = plant(flower: "red")

/************枚举的关联绑定
//enum server{
//    case result(String ,String)
//    case error(String)
//}
//let success = server.result("chifan", "go")
//let failure = server.error("wrong")
//
//switch success{
//case let server.result(s1,s2):
//    let New = "one is \(s1) ,another is \(s2)"
//case let server.error(s3):
//    let Info = "It is \(s3)"
//}

*/


//var num = 11
//
//switch num {
//case let a where a > 1:
//    println("num")
//default:
//    break
//}


///*****函数*********///
//func getName(a: Int , b: Int) -> Int{
//    return a + b
//}
//
//getName(10, 20)

///*****方法*********///
//class name {
//    /// 方法默认内函数为外函数，第一个参数默认不写函数名
//    func getName(name1 a: Int , _ b: Int)-> Int{
//        return a + b
//    }
//}
//
//let names = name()
//names.getName(name1: 20, 10)


////*************结构体方法**************///
//struct name {
//    func getName(a: Int , b: Int) -> Int{
//        return a + b
//    }
//}
//
//let names = name()
//names.getName(10, b: 20)

/************查找数组内特定的值的序号**************/
//var names = [1 , 3 ,20 ,12 , 11  ,17]
//let name = find(names, 2)
//println(names)

/***********定义操作符****************/
///prefix | infix | postfix
//prefix operator +| {
//
//}
//
//prefix func +|(s: String) -> String{
//    return s + "go"
//}
//
//println(+|"蛋蛋")

/// 中间运算符
//infix operator ** {
//
//}
//
//func **(a: Int , b: Int) -> Int{
//    return a + b
//}
//
//println(10 ** 20)

///尾部运算符
//postfix operator &!{
//
//}
//
//postfix func &!(Str: String) -> String{
//    return  Str + "Name"
//}
//
//println("wq"&!)


//let man = [1 ,2 ,12 ,13 ,14]
//dropFirst(man)
//println(man)

/****************协议********************/


//@objc protocol getNameDelegate{
//    可选协议
//     optional func getName()
//}
//
//class father: getNameDelegate{
//    var man = "tom"
//    func getName() {
//        self.man = "Tim"
//    }
//}
//
//class children: father {
//     override func getName() {
//        self.man = "Jim"
//    }
//    
//}
//
//let _children = children()
//_children.getName()

//
//var man: Int? = 11
//let _man = man!.description
//println(_man)










