//
//  Helper.swift
//  InstaMarket
//
//  Created by Umair Hanif on 23/10/2020.
//

import Foundation
import UIKit

class Helper {
    
    static func customUITextField(arrayOfTxtFld : [UITextField]) {
        for txtFld in arrayOfTxtFld {
            txtFld.layer.borderWidth = 0.6
            txtFld.layer.borderColor = UIColor(red: 203.0/255, green: 203.0/255, blue: 203.0/255, alpha: 1).cgColor
            txtFld.layer.cornerRadius = 5
            txtFld.textColor = UIColor.black
        }
    }
    
}
