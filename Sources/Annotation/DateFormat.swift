//
//  File.swift
//  
//
//  Created by 汤世昭 on 2019/11/7.
//

import Foundation

@propertyWrapper
public struct DateFormat<T> {
    public let format: String
    
    public var wrappedValue: Value {
        get {
           return value
        }
        set {
            value = newValue
        }
    }
    
    init(format: String) {
        self.format = format
    }
    
}
