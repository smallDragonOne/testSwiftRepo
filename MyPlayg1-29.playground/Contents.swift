//: Playground - noun: a place where people can play

import UIKit
import Foundation

/**************swift 2.1 更新版本********************/

/// 十进制
let a = 3840
print(a >> 8)

/// 八进制
let b = 0o12
print(b>>2)

/// 十六进制
let c = 0xff
print(c>>2)

/// 二进制
let d = 0b00011100101010
print(d>>2)



var shopList = ["1" , "2" , "3" , "4" , "5" , "6" ,"7"]

/// 判断数组是否包含某个元素
let indexNum = shopList.indexOf("1")

shopList[4...6] = ["324"]
print(shopList)

///2.0特性OptionSetType ， 取代RawOptionsetType
//struct Packagingoption: OptionSetType {
//    let rawValue: Int
//    init(rawValue : Int){self.rawValue = rawValue}
//    
//    static let Box = Packagingoption(rawValue: 1)
//    static let Carton = Packagingoption(rawValue: 2)
//    static let BoxAndCar:Packagingoption = [Box , Carton]
//}



struct Poker: ArrayLiteralConvertible , CustomStringConvertible {
    var cards = [String]()
    
    init(arrayLiteral elements: String...) {
        for card in elements{
            cards.append(card)
        }
    }
    
    var description: String {
        var content = "My cards are "
        for card in self.cards {
            content += card
        }
        return content
    }
}


let pocker: Poker = ["I" , "LOVE" , "YOU"]


let bbbb = ["11" , "name" , "Jhon" , "god"]

/**********字符串长度**********/
var letters: [Character] = ["c" , "a" , "f" , "e"]
var str = String(letters)
print(letters.count)
print(str.characters.count)

letters.append("\u{0301}")
var str1 = String(letters)
var str2 = str1 as NSString
print(str1)
print(letters.count)
print(str1.characters.count)
print(str2.length)


let  name = "😊"
print(name.characters.count)     /// 1
print((name as NSString).length) /// 2
print(name.endIndex)             /// 2



/************图形特性**************/
for i in 0...100{
    sin(100 / CGFloat(i))
}


///
if #available(iOS 8.0 , *){
    print("111")
}
else{
    let stackView = UIStackView()
}



let numberName: Any = 1
if numberName is Int{
    print(111)
}


for (var a = 0 ; a < 10 ; a += 1 ){
    print(a)
}

/// swift 字典和数组值拷贝的 区别
/******字典*********/
var dic = [1:1 , 2:3 , 3: 4]
var newdic = dic
dic[1] = 2
print(dic)      ///[2:3,3:4,1:2]
print(newdic)   ///[2:3,3:4,1:1]

/*****数组*********/
var arr = [1,2,3]
var newarr = arr
arr[0] = 4
print(arr)     ///[4,2,3]
print(newarr)  ///[1,2,3]

/*************分割*************/
let firstArr = [[1, 2, 3] ,[4 , 5, 6] ,[7, 8, 9]]
let secondArr = firstArr.joinWithSeparator([-1 , -2])

var oneArr = ["foo" , "bar" , "bzz"]
oneArr.joinWithSeparator("-|-")


/*************闭包**************/
func clourse(@noescape animation: ()->Int){
    animation()
}

clourse { () -> Int in
    return 1
}

/************枚举************/
enum BookInfo: String{
    case noteBook = "1"
    case EnglishBook = "2"
    case chineseBook = "4"
}

let info = BookInfo(rawValue: "1")
if info == .noteBook{
    print("OK")
}


/************协议扩展实现协议************/
protocol proDeletion{
    func loginName(login: String  , passwd: String)-> String
    func nameWrite()-> String
}


class newClass: proDeletion{
    init(){
        
    }
}

extension proDeletion{
    func nameWrite() -> String{
        return "大哥哥"
    }
}
extension proDeletion where Self: newClass {
    
    func loginName(login: String , passwd: String)-> String{
        return login + passwd
    }
}


let intanceClass = newClass()
intanceClass.loginName("login" , passwd: "123")
intanceClass.nameWrite()

/*****************闭包*******************/
func makeNewclouse(number: Int)-> ()->Int{
    var totalNum = 0
    func otherClouse() -> Int{
        return totalNum + number
    }
    return otherClouse
}

var makeclouse = makeNewclouse(10)
var otherClouse = makeclouse
makeclouse()
makeclouse = makeNewclouse(11)
print(otherClouse())



/*********协议范型************/
protocol Cotainer {
    typealias ElementType
    mutating func append(item: ElementType)
    var count: Int{get}
    mutating func popLastElem()
    subscript(i: Int)-> ElementType{get}
}

/***********协议范型之整数结构体******************/
struct IntStack: Cotainer , ArrayLiteralConvertible{
    var item = [Int]()
    var count: Int{
        return self.item.count
    }
    init(arrayLiteral elements: Int...) {
        item = elements
    }
    mutating func append(_item: Int) {
        self.item.append(_item)
    }
    
    mutating func popLastElem() {
        self.item.removeLast()
    }
    
    subscript(i: Int) -> Int{
        return item[i]
    }
}


var newStruct1 = [1 ,2 ,3 ,4 ,5]
newStruct1.append(6)
print(newStruct1)



/************结构范型之范型结构体*************/

struct GencStack<T> : Cotainer , ArrayLiteralConvertible{
    
    var item = [T]()
    init(arrayLiteral elements: T...) {
        item = elements
    }
    
    mutating func append(_item: T) {
        self.item.append(_item)
    }
    
    mutating func popLastElem() {
        self.item.removeLast()
    }
    
    var count: Int{
        return self.item.count
    }
    
    subscript(i: Int) -> T{
        return self.item[i]
    }
}

var genicArr = ["1", "2", "3","4"]
genicArr.append("5")
print(genicArr)

let genc = ["1" , "2" , "3" , "4" , "5"]

if genicArr == genc{
    print(111)
}


let time = CACurrentMediaTime()

let date = NSTimeInterval(time)
let man = NSDate(timeIntervalSinceNow: 0)



/*********文件缓存**********/
func cachefile(Path: String)-> Int
{
    let fileManger = NSFileManager.defaultManager()
    //判断是否存在文件
    var dir: ObjCBool = false
    /// 判断path是否为一个文件
    let exists = fileManger.fileExistsAtPath(Path, isDirectory: &dir)
    if !exists {
        return 0
    }
    
    if dir {
        /// 遍历cache里面的内容 －－－－－直接和间接的内容
        let _subPaths = try? fileManger.subpathsOfDirectoryAtPath(Path)
        guard let subPaths = _subPaths else{
            return 0
        }
        var totalByte = 0
        for subpath in subPaths {
            /// 获取全路径
            let fullPath  = (Path as NSString).stringByAppendingPathComponent(subpath)
            var directory: ObjCBool = false
            fileManger.fileExistsAtPath(fullPath, isDirectory: &directory)
            if !directory{
                do{
                    let _totalByte = try fileManger.attributesOfItemAtPath(Path)
                    let _IntByte = _totalByte[NSFileSize] as! Int
                    totalByte += _IntByte
                }
                catch let error as NSError{
                    print(error.localizedDescription)
                }
               
            }
        }
        return totalByte
    }
    else{
        var totalByte = 0
        do{
            let _pathByte = try fileManger.attributesOfItemAtPath(Path)[NSFileSize] as! Int
            totalByte = _pathByte
        }
        catch let error2 as NSError{
            print(error2.localizedDescription)
        }
        return totalByte
    }
}



/*****************在documents里创建目录*******************/

/// home主目录
let home = NSHomeDirectory()
/// document目录 苹果建议将程序中建立的或在程序中浏览到的文件数据保存到该目录下，iTunes备份和恢复的时候会包含此目录
let Docpathss = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.UserDirectory,NSSearchPathDomainMask.UserDomainMask, true)
var textDir = ""
var fileManger: NSFileManager!
if Docpathss != []{
    let documentsDir: String = Docpathss[0]
    let _fileManger = NSFileManager.defaultManager()
    fileManger = _fileManger
    /// 创建test文件夹
    let _textDir: String = (documentsDir as NSString).stringByAppendingPathComponent("test")
    textDir = _textDir
    /// 创建目录
    _ = try fileManger.createDirectoryAtPath(textDir, withIntermediateDirectories: true, attributes: nil)
}

/************text文件夹中写入文件*************/
//let testFilePath = (textDir as NSString).stringByAppendingPathComponent("text0.txt")
//
///***********写入文本内容************/
//let strCont = "写入的内容"
//
//
///// swift 协议
//enum Grain{
//    case weat
//    case corn
//}
//
//protocol pizza{}
//extension pizza{
//    var crustGrain: Grain {return .weat}
//}
//
//struct SwiftPlant: pizza {
//    let crustGrain: Grain = .corn
//}
//
//let swiftPla = SwiftPlant()
//print(swiftPla.crustGrain)


var slice: Slice<Int> = [2, 3,4]

var arr = [1 , 2, 3 , ]












