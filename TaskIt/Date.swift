//
//  Date.swift
//  TaskIt
//
//  Created by Marco F.A. Corzani on 26.10.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import Foundation

class Date {

    class func from (#year:Int, month:Int, day:Int) -> NSDate {
    
        var components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        var gregorianCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
        
        var date = gregorianCalendar?.dateFromComponents(components)  // in XCode 6.1 you need to put "?" NCalendar returns an optional
        
        return date! // here you unwrap it
    }
    
    
    // Gibt das INT Datum als String aus!
    
    class func toString(#date:NSDate) -> String {
    
        let dateStringFormatter = NSDateFormatter()
        
        dateStringFormatter.dateFormat = "dd.MM.yyyy"
        
        let dateString = dateStringFormatter.stringFromDate(date)
        
        return dateString
    
    }
}
