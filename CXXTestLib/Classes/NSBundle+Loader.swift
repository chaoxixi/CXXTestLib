//
//  NSBundle+Loader.swift
//  CXXTestLib
//
//  Created by xichaogao on 2020/8/14.
//

import Foundation
public  enum moduleType : Int  {
    /**字体*/
   case  Font = 0
    /**公共资源图片*/
   , Images = 1
};
public var ModuleTypeArray = ["Font","Images"]
public  func  ModuleTypeString(moduleType: moduleType) -> String {
    return ModuleTypeArray[moduleType.rawValue]
}
class mediatorClass: NSObject {
}
public extension Bundle{
    class func bundleWithModuleType() -> Bundle {
        
        let bundle = Bundle.init(path:Bundle.init(for: mediatorClass.self).path(forResource: "Images", ofType: "bundle")!)
        return bundle!
    }
}
