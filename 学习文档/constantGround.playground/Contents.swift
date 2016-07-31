//: Playground - noun: a place where people can play

import UIKit

/// **********常用表达式收集************///
struct constantGroud{
    /// appDelegate
    static let appDeleInstance = UIApplication.sharedApplication().delegate
    /// 通知中心实例
    static let notifiCenter = NSNotificationCenter.defaultCenter()
    /// 屏幕宽
    static let screenWidth = UIScreen.mainScreen().bounds.size.width
    /// 屏幕高
    static let screenHeight = UIScreen.mainScreen().bounds.size.height
    /// 屏幕尺寸
    static let screenBounds = UIScreen.mainScreen().bounds
    
    /// 起点
    static let zeroCoordinate: CGFloat = 0
    
    /// 状态栏高度
    static let statusBarHeight: CGFloat = 20
    
    /// bar 按钮宽高
    static let barItemWH: CGFloat = 30
    /// 导航条高度
    static let navBarHeight: CGFloat = 44
    
    /// 底部高度
    static let tapBarHeight: CGFloat = 49
    
    /// 顶部高度
    static let statusNavHeight: CGFloat = 64
    
    /// userDef
    static let userDeinfo = NSUserDefaults.standardUserDefaults()
    
    /// 文件路径
    static let channelFilePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.UserDirectory, NSSearchPathDomainMask.UserDomainMask, true)
    /// 判断机器类型  iphone , iphone Simulator  ipod touch
    static let isIphone = UIDevice.currentDevice().model
    
    /// 当前状态bar 高度
    static var statusBarH_now:CGFloat{
        return UIApplication.sharedApplication().statusBarFrame.height
    }
    
    /// 读取NSDictionary里键值
    static func getValueForKey(a:NSDictionary?,key:String?)-> String{
        if a == nil || key == nil {
            return ""
        }
        else{
            let temp: AnyObject? = a![key!]
            if temp == nil{
                return ""
            }
            else{
                return temp!.description
            }
        }
    }
    
    
    /// 清空windows.subviews，显示根页面（首页）
    static func clear(){
        //keyWindow
        var window  = UIApplication.sharedApplication().keyWindow
        if (window == nil || window!.windowLevel != UIWindowLevelNormal)
        {
            let windows = UIApplication.sharedApplication().windows
            for tmpWin in windows
            {
                if (tmpWin.windowLevel == UIWindowLevelNormal)
                {
                    window = tmpWin
                    break
                }
            }
        }
        //移除UITransitionView
        if window != nil && window!.rootViewController != nil{
            window!.rootViewController!.view = nil
            window!.rootViewController!.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    /// 统一管理输出，方便注销
    static func myPrintln<T>(str:T){
        ///println(str)
    }
    
    /// 观察对象释放
    static func deinitPrint (str:String){
        myPrintln("deinit \(str)")
    }
    
    /// 文本编辑框内容拼接
    static func textFieldEdit(text:String?,range:NSRange,string:String)->String{
        if text == nil{
            return ""
        }
        let orgin = text! as NSString
        
        var pre = ""
        var post = ""
        let loc = range.location
        let len = range.length
        
        let breakStart = loc
        let breakEnd = breakStart + len
        pre = orgin.substringWithRange(NSRange(location: 0, length: breakStart))
        post = orgin.substringWithRange(NSRange(location: breakEnd, length: (orgin.length - breakEnd)))
        return pre + string + post
    }
    
    /// 自定义回退到某页面
    ///
    /// - parameter from: 愿页面
    /// - parameter to:  目标页面
    /// - parameter designCon: 指定的页面
    static func goBackController(from from:UIViewController,to:AnyClass ,designCon: AnyClass){
        //println(from.classForCoder.description())
        var thisPage:UIViewController = from
        //println(thisPage.classForCoder.description())
        while(!thisPage.isKindOfClass(designCon)){
            //println(thisPage.classForCoder.description())
            if thisPage.presentingViewController != nil{
                thisPage = thisPage.presentingViewController!
                if(thisPage.isKindOfClass(to)){
                    thisPage.dismissViewControllerAnimated(true, completion: nil)
                    break
                    
                }
            }
            else{
                break
            }
        }
    }
    
    
    /// 自定义回退到某页面
    ///
    /// - parameter from: 愿页面
    /// - parameter to:  目标页面
    /// :paran: present  跳转新页面
    /// - parameter designCon: 指定页面
    static func goBackOrNewController(from from: UIViewController , to: AnyClass ,designCon: AnyClass) -> Bool{
        var thisPage:UIViewController = from
        /// 是否找到对应页面
        var isBreak = false
        while(!thisPage.isKindOfClass(designCon)){
            if thisPage.presentingViewController != nil{
                thisPage = thisPage.presentingViewController!
                if(thisPage.isKindOfClass(to)){
                    isBreak = true
                    break
                    
                }
            }
            else{
                break
            }
        }
        
        return isBreak
        
    }
    
    
    /// 获取某控件距离屏幕顶部的高度
    ///
    /// - parameter view: self.view
    /// - parameter ob:  目标控件
    static func getViewToTop(view:UIView,ob:UIView)->CGFloat{
        var top:CGFloat = 0
        var subView: UIView = ob
        var rect = subView.frame
        top += rect.size.height
        //println("height:\(top)")
        while(true){
            // 有上级view
            if let superV = subView.superview{
                rect = subView.frame
                // 该view的偏移量
                top += rect.origin.y
                //println("top:\(rect.origin.y)")
                if let scrollV = superV as? UIScrollView{
                    top -= scrollV.contentOffset.y
                    //println("contentOffset: -\(scrollV.contentOffset.y)")
                }
                
                // 如果上级view是self.view
                if superV === view{
                    break
                }
                
                subView = superV
            }else{
                break;
            }
        }
        //println("topss:\(top)")
        /// 70 其他输入法高度
        return top + UIScreen.mainScreen().bounds.size.width / 360 * 70
    }
    
    /// 创建时间和结束时间
    static func selectTime(start: Bool) -> String{
        /// 开始时间
        if start{
            let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
            let comps = NSCalendarUnit.Month
            if calendar != nil{
                let com = calendar!.components(comps, fromDate: NSDate())
                com.month = -1
                let startTime = calendar!.dateByAddingComponents(com, toDate: NSDate(), options: .MatchFirst)
                let formatter = NSDateFormatter()
                formatter.dateFormat = "yyyy-MM-dd"
                let time = formatter.stringFromDate(startTime!)
                return time
            }
            else{
                return ""
            }
            
        }
        else{   /// 结束时间
            let formatter = NSDateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            let time = formatter.stringFromDate(NSDate())
            return time
        }
        
    }
    
    
    ///删除文件夹
    static func deleteDirectory(cachePath:String) {
        let fileManager = NSFileManager.defaultManager()
        // 文件夹不存在
        if !fileManager.fileExistsAtPath(cachePath){
            return
        }
        
        let _contents = try? fileManager.contentsOfDirectoryAtPath(cachePath)
        if let contents = _contents {
            for pathComponent in contents {
                let path = (cachePath as NSString).stringByAppendingPathComponent(pathComponent)
                var isDir:ObjCBool = false
                let sDirExist = fileManager.fileExistsAtPath(path, isDirectory: &isDir)
                if(sDirExist){
                    if(isDir){
                        // 文件夹
                        //println("文件夹:"+pathComponent)
                        deleteDirectory(path)
                    }else{
                        do {
                            try fileManager.removeItemAtPath(path)
                        } catch let error1 as NSError {
                            print(error1.description)
                        }
                    }
                }
            }
        } else {
            //Log.error("Failed to list directory", error)
        }
        
    }
    
    
    /// 计算文件夹大小
    /// size = 0,path
    static func getDirectorySize(inout size:UInt64,cachePath:String) {
        let fileManager = NSFileManager.defaultManager()
        // 文件夹不存在
        if !fileManager.fileExistsAtPath(cachePath){
            return
        }
        let _contensts = try? fileManager.contentsOfDirectoryAtPath(cachePath)
        
        
        if let contents = _contensts  {
            for pathComponent in contents {
                let path = (cachePath as NSString).stringByAppendingPathComponent(pathComponent)
                var isDir:ObjCBool = false
                let sDirExist = fileManager.fileExistsAtPath(path, isDirectory: &isDir)
                if(sDirExist){
                    if(isDir){
                        // 文件夹
                        //println("文件夹:"+pathComponent)
                        getDirectorySize(&size,cachePath: path)
                    }else{
                        do {
                            let attributes : NSDictionary = try fileManager.attributesOfItemAtPath(path)
                            
                            size += attributes.fileSize()
                        } catch let error1 as NSError {
                            print(error1.description)
                        }
                    }
                }
            }
        } else {
            //Log.error("Failed to list directory", error)
        }
    }
}
