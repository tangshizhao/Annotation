//
//  UITextFieldBinding.swift
//  Annotation
//
//  Created by 汤世昭 on 2019/11/4.
//

import UIKit


class ViewModel {
    @Observable
    var text: String? {
        didSet {
            
        }
    }
    
    @DateFormat(format: "yyyy-MM-dd HH:mm:ss")
    var date: Date?
    
    
    init() {
        self.text = "Hello"

    }
    

}


