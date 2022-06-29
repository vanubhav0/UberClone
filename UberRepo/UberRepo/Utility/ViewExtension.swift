//
//  ViewExtension.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//

import Foundation
import UIKit

extension UIView {
    
    func  anchor(top: NSLayoutYAxisAnchor? = nil,
                 bottom: NSLayoutYAxisAnchor? = nil,
                 left: NSLayoutXAxisAnchor? = nil,
                 right: NSLayoutXAxisAnchor? = nil,
                 paddingTop: CGFloat = 0,
                 paddingBottom: CGFloat = 0,
                 paddingLeft: CGFloat = 0,
                 paddingRight:  CGFloat = 0,
                 height: CGFloat? = nil,
                 width: CGFloat? = nil) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func centreX(inView view: UIView, padding: CGFloat = 0) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: padding).isActive = true
    }
    
    func centreY(inView view: UIView, padding: CGFloat = 0) {
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: padding).isActive = true
    }
}
