//
//  Date+Extension.swift
//  IKStaff
//
//  Created by AL on 2020/4/23.
//  Copyright © 2020 iKang. All rights reserved.
//

import Foundation


extension NSDate{
    class  func setupDateString(createString:String) -> String {
        if createString == "" {
            return createString
        }
        let  fmt = DateFormatter()
            fmt.dateFormat = "yyyy-MM-dd HH:mm:ss"
            fmt.locale = NSLocale(localeIdentifier: "en") as Locale
        
            // 2.将字符串时间,转成NSDate类型
            guard let ceateDate = fmt.date(from: createString) else {
                return ""
            }
            let nowDate = NSDate()
//            let interval = nowDate.timeIntervalSince(ceateDate)

//            if interval < 60 {
//                return "刚刚"
//            }
//
//            if interval < (60 * 60) {
//            return "\(Int(interval) / 60)分钟前"
//            }
//
//            if interval < (60 * 60 * 24){
//            return "\(Int(interval)/(60 * 60))小时前"
//            }
        
            let calendar = NSCalendar.current
        
        if calendar.isDateInToday(ceateDate) {
            fmt.dateFormat = "今天 HH:mm"
            return fmt.string(from: ceateDate)
        }
        
            if calendar.isDateInYesterday(ceateDate){
            fmt.dateFormat = "昨天 HH:mm"
            return fmt.string(from: ceateDate)
            }
        
            let gap = calendar.dateComponents([Calendar.Component.year], from: ceateDate, to: nowDate as Date)
        
            if gap.year! < 1 {
            fmt.dateFormat = "MM-dd HH:mm"
            return fmt.string(from: ceateDate)
            }
        
            fmt.dateFormat = "yyyy-MM-dd HH:mm"
            return fmt.string(from: ceateDate)
    }
    
    // 判断当前时间是否在start 与 end 之间
    class func compareNowIsBetween(start:String,end:String) -> Bool? {
     
         let  fmt = DateFormatter()
         fmt.dateFormat = "yyyy-MM-dd HH:mm:ss"
         fmt.locale = NSLocale(localeIdentifier: "en") as Locale
     
         
         guard let startDate = fmt.date(from: start) else {
             return false
         }
        guard let endDate = fmt.date(from: end) else {
             return false
         }
        if startDate.timeIntervalSinceNow < 0 &&  endDate.timeIntervalSinceNow > 0 {
           return true
        }
        return false
    }
}


   
