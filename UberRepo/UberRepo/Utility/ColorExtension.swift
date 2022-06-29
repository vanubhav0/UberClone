//
//  ColorExtension.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//

import Foundation
import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static let backgroundColor: UIColor = .rgb(red: 25, green: 25, blue: 25)
    
    static let blueTint: UIColor = .rgb(red: 17, green: 154, blue: 237)
    
}
