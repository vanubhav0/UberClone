//
//  AuthButton.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//

import Foundation
import UIKit

class AuthButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setTitleColor(.init(white: 1, alpha: 0.5), for: .normal)
        backgroundColor = .blueTint
        titleLabel?.font = .boldSystemFont(ofSize: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
