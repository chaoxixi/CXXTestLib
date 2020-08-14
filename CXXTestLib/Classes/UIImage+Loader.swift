//
//  UIImage+Loader.swift
//  CXXTestLib
//
//  Created by xichaogao on 2020/8/14.
//

import Foundation


public extension UIImage {
   class func loadImageNamed(name:String) -> UIImage {
        let bundle =  Bundle.bundleWithModuleType()
        if  UIImage.responds(to: #selector(UIImage.init(named:in:compatibleWith:)))  {
            return  UIImage(named: name, in: bundle, compatibleWith: nil)!
        }
        else {
            return UIImage.init(contentsOfFile: bundle.path(forResource: name, ofType: nil)!)!
        }
        
        
    }
    
}
