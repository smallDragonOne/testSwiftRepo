//: Playground - noun: a place where people can play



import UIKit

//
//let str = "dfgsfdslhkgkkhgfjdgf"
//var counta = 0 , countA = 0 , count = 0
//
//for c in str {
//    switch c{
//        case "a":
//        ++counta
//        case "s":
//        ++countA
//    default:
//        ++count
//    }
//}
//println(count)


//class newList {
//    static let newType = [
//        "1" : ("天晴", "fdsf"),
//        "2" : ("牛逼","reergt"),
//        "3" : ("还天气" , "we")
//    
//    ]
//}
//
//println(newList.newType["1"].0)

/// 创建数组
//var data = [Dictionary<String , AnyObject>](count:6, repeatedValue: [:])
//
//var typeList = [
//    ( "全部",13),
//    ("停产通知",13),
//    ("活动通知",13),
//    ("新品发布",13),
//    ("返利/价保",13),
//    ("其他",13),
//    
//]
//AnyObject
//let dic: [AnyObject] = ["shd":"fd" , "dd":"dfg"]

//let str = "-123"
//
//let b = str.toInt()!
//println(b)


//
//var narray = ["1" ,"2" , "3" , "4"]
//narray.removeAtIndex(3)
//println(narray)
//println(narray.last)


//var dfmatter = NSDateFormatter()
//dfmatter.dateFormat = "yyyy-MM-dd"
//var date = dfmatter.dateFromString("1013-21-23")
//println(date)


/// ＊＊＊＊＊＊＊＊＊＊时间戳
//var dateStamp: NSTimeInterval =
/// ＊＊＊＊＊＊＊＊＊＊时间戳转换
var gmt = "1437082539000"
if gmt != ""{
    let gmt_s = (gmt as NSString).doubleValue
    let date: Double = gmt_s / 1000.0
    let dd = NSDate(timeIntervalSince1970: date)
    let dfmatter = NSDateFormatter()
    dfmatter.dateFormat="yyyy－MM－dd"
    let showTime = dfmatter.stringFromDate(dd)
}

let dfmatter = NSDateFormatter()
dfmatter.dateFormat="yyyy－MM－dd"
let calder = NSCalendar.currentCalendar()

let dateCom = NSDateComponents()
dateCom.year = -2

let datecom = calder.dateByAddingComponents(dateCom, toDate: NSDate(), options: NSCalendarOptions(rawValue: 0))

let str1 = dfmatter.stringFromDate(datecom!)

/// 字符串转换成时间戳

let date = dfmatter.dateFromString("2000－02－25")!

let dateTravel = date.timeIntervalSince1970


print(dateTravel)

//let  date = NSDate()
//let formatter = NSDateFormatter()
//formatter.dateFormat = "yyyy-MM-dd"
//formatter.dateFromString("2002-10-8")
//
//let time = formatter.stringFromDate(date)


//let calendar = NSCalendar.currentCalendar()
//
//
//let comps = NSDateComponents()
//comps.month = -1
//calendar.dateByAddingComponents(comps, toDate: NSData(), options: 0)


//var dfmatter11 = NSDateFormatter()
//dfmatter11.dateFormat="yyyy－MM－dd"
//var Mydate = dfmatter11.dateFromString("2014－3-30")
//

//let calder = NSCalendar.currentCalendar()
//let dateCom = NSDateComponents()
//dateCom.month = -1
//dateCom.year = -1
//dateCom.day = -1
//let date = calder.dateByAddingComponents(dateCom, toDate: NSDate(), options: NSCalendarOptions(rawValue: 0))
//
//let simpleFormt = NSDateFormatter()
//simpleFormt.dateFormat = "yyyy-MM"
//let date1 = simpleFormt.stringFromDate(date!)


//   时间选择提前一个月
//let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
//let comps = NSCalendarUnit.CalendarUnitMonth
//let com = calendar!.components(comps, fromDate: Mydate!)
//com.month = -1
//let startTime = calendar!.dateByAddingComponents(com, toDate: Mydate!, options: .MatchFirst)
//let formatter1 = NSDateFormatter()
//formatter1.dateFormat = "yyyy-MM-dd"
//let time1 = formatter1.stringFromDate(startTime!)

//
//let dou: Double = 12.00667
//let dous = NSString(format: "%.2f", dou)
////dous.doubleValue * 100.0 / 10.0
////if dous.doubleValue * 100.0 % 10.0 == 0{
////    println("ok")
////}
////println(dou)
//println(round((dou * 100.0)) / 100.0)
//let douss = NSString(format: "%.2f", round((dou * 100.0)) / 100.0)



//
//let a: String = "tre"
//
//if a != ""{
//let b = a.toInt()!
//}



//let text =  "234.00"
//if  text != ""{
//    println(text)
//}
//


//let bb: CInt = 12
//let cc: Int = Int(bb)





////let person = ["name": "dsdss"  , "name1" : "sddf"  , "zhou": "" , "ou": "" ]

//let predicate = NSPredicate(format: "name == 'dsd'")
//
//let person1 = predicate.predicateWithSubstitutionVariables(person)

///  数组倒置
//let person = ["1" , "3" , 43 , "fsdg" ]
//person.reverse()

//struct Bank {
//    static var coinsInBank = 10_000
//    static func vendCoins(var numberOfCoinsToVend: Int) -> Int {
//        numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
//        coinsInBank -= numberOfCoinsToVend
//        return numberOfCoinsToVend
//    }
//    static func receiveCoins(coins: Int) {
//        coinsInBank += coins
//    }
//    var a = "23"
//}
//
//
//var pop = Bank()
//pop.a = "234"
//
//typealias c = Bank
//c.coinsInBank


//struct people {
//    var cc: String = "23"
//    
//    init() {
//        cc = "345"
//    }
//    func changeAc() -> String{
//        return cc
//    }
//    
//    func chashfsfj(change: String){
//        people().cc = change
//    }
//    
//}
//
//let pop = people()
//pop.chashfsfj("sfer")


//class people{
//    var cc = "23"
//    func changeAbc(chage: String){
//        self.cc = chage
//    }
//}
//
//var pop = people()
//pop.changeAbc("dhgsf")


//struct person{
//    var hh = "34"
//    mutating func chageNum(change: String){          /// 变异方法可以修改结构体的属性
                                                            /// 否则只能调用
//        self.hh =  change
//    }
//}
//
//var  pop = person()
//pop.chageNum("arew")



//let aa = 12
//
//let b = 47 / 8

//let str: NSDictionary = ["num": "112"]
//if let sts = str["num"] as? NSString{
//    println(sts)
//
//}



//var aa: NSNumber = 64.67734
//println(aa.integerValue)

//
//let aa: NSDictionary = ["s": 1 , "b": "3"]

//if let dir = aa["s"] as? NSString{
//    println(dir.integerValue)
//}


//let asp = [ "13" , "wer" , "43" , "13"]
//
//let asd = asp.filter(){ $0 == "13" }
//
//println(asd)


//let a = ["12": "bb" , "13": "44"]
////for (key  , vuale) in a{
////    println(a.keys)
////}
//var  array = [AnyObject]()
//for  key in a.keys{
//    array.append(key)
//}
//println(array)


//let a: UIButton = UIButton(frame: CGRectZero)
//if a.isKindOfClass(UIControl){
//    println("shi")
//}
//
//
//if a is UIButton{
//    println("23")
//}
//
//
//let b: Int = 11
//
// NSLog("%s","json解析失败")
////let a = "json解析失败"
////NSLog("%s", a)
//println("json解析失败")

//enum massageType: Int{
//    case payInfo = 1
//    case logistInfo
//    case orderInfo
//    case promoInfo
//    case luckDrawInfo
//    case cutDownInfo
//}
//
//println(massageType.cutDownInfo.rawValue)


///// 推送类型
//class dsad{
//    static let massageType = [
//        "1":  "massgeInfo1.png",
//        "2":  "massgeInfo2.png",
//        "3":  "massgeInfo3.png",
//        "4":  "massgeInfo4.png",
//        "5":  "massgeInfo5.png",
//        "6":  "massgeInfo6.png",
//        "7":  "massgeInfo6.png",
//    ]
//}
//
//println(dsad.massageType["4"])
//
//let a = ["we": "" , "yu": "ew"]
//if let v = a["we"]{
//    if NSURL(string: v) != nil{
//        println(3244)
//    }
//}

//
//println(8 >> 3)

//
//struct people {
//    var bb = "sdgf"
//    subscript(index: Int)-> String{
//        get{
//            if index % 2 == 0{
//                return  "hjk"
//            }
//            else{
//                return  "wwrw"
//            }
//        }
//        
//    }
//}
//
//let man = people()
//man[3]


//struct people {
//    static var bb = "sfv"
//}
//
//enum personal: Int {
//    
//    case tag = 1
//    case leg
//    case body
//}
//
//personal.leg.rawValue

/// ＊＊＊＊＊＊＊下角标

//struct word {
//    var first = "ewwe"
//    subscript(Index:Int)-> String{
//        return first + "rwe"
//    }
//}
//
//let wo = word()
//wo[3]



/// test class
//class people: NSObject{
//    var man: String
//    override init(){
//        man = "hjk"
//    }
//}
//
//let mans = people()
//println(mans.man)
//println(mans.classForCoder)
//
//if mans is people{
//    println("ok")
//}
//
//if mans .isKindOfClass(people){
//    println("ok")
//}



///// bundle 类访问资源  主要mainbundle
//let name = NSBundle.mainBundle().pathForResource("ImgName", ofType: "img")
//
///// other 的 bundle
//let nextName = NSBundle(path: "otherBunlde")?.pathForResource("Imgname", ofType: "img")




//class people: NSObject{
//    var man = 11
//    var woman = "12"
//    var mm:kkk = kkk()
//}
//
//class kkk: NSObject{
//    
//}
//
//let po = people()
//let oop = kkk()
//println(po.mm.classForCoder)
//if (po.mm) .isMemberOfClass(people) {
//    println(11)
//}

//
//class paper:NSObject {
//    let color = { ()->Int in return 3}
//}
//
//let p = paper()
//println(p.classForKeyedArchiver)


let name11:(width: CGFloat ,height: CGFloat) = (10 , 20)

let name = CGSize(name11)




