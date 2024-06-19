//
//  EmailTextField.swift
//  myLibrary
//
//  Created by MIlena Soares  on 21/05/24.
//

import UIKit

class CustomTextField: UITextField {
    // Variável para armazenar o placeholder
    var customPlaceholder: String? {
        didSet {
            placeholder = customPlaceholder
        }
    }
    // Variável para armazenar o tipo de teclado
    var customKeyboardType: UIKeyboardType = .default {
        didSet{
            keyboardType = customKeyboardType
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setup()
    }
    private func setup() {
        autocapitalizationType = .none
        borderStyle = .roundedRect
    }
    
}
