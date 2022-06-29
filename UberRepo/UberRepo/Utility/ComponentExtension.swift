//
//  ComponentExtension.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//

import Foundation
import UIKit

extension UITextField {
    
    func textField(withPlaceholder value: String, isSecureText: Bool) -> UITextField {
        let tf = UITextField.init()
        tf.textColor = .white
        tf.borderStyle = .none
        tf.isSecureTextEntry = isSecureText
        tf.keyboardAppearance = .dark
        tf.isSecureTextEntry = isSecureText
        tf.font = .systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString.init(string: value, attributes: [.foregroundColor: UIColor.lightGray])
        return tf
    }
    
}

extension UIView {
    
    func  inputContainerView(image: UIImage, textField:  UITextField) -> UIView {
        let view = UIView()
        
        let imageView = UIImageView.init()
        imageView.image = image
        imageView.alpha = 0.85
        view.addSubview(imageView)
        imageView.centreY(inView: view)
        imageView.anchor(left: view.leftAnchor, paddingLeft: 8, height: 24, width: 24)
        
        view.addSubview(textField)
        textField.centreY(inView: view)
        textField.anchor(bottom: view.bottomAnchor ,left: imageView.rightAnchor, right: view.rightAnchor, paddingBottom: 8, paddingLeft: 8)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        view.addSubview(dividerView)
        dividerView.anchor(bottom: view.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor, paddingLeft: 8, paddingRight: 8, height: 0.75)
        return view
    }
}
