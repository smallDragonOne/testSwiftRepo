//: Playground - noun: a place where people can play

import UIKit


class people{
    
          var a: Int = 4
 private  let  b: String = "你好"
    private let x: Int = 13
    
}

class chinese: people{
    var leg = "很长的"
    var h  = "teacher"
    weak var hh:people!
    
  func  show(){
    let hh_S:people = people()
    hh = hh_S
    hh.a = 10
    p
    }
    
}

var p = people()
var ff:people!
let ch = chinese()
ch.a = 11
ch.show()
print(p)
//ch.a = 5
print(ch.b)
ff = ch  /// 父类得到子类的值
print(ch.a)




