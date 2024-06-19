//
//  CustomButton.swift
//  myLibrary
//
//  Created by MIlena Soares  on 04/06/24.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        // Configurações do botão
        backgroundColor = .systemGray
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        // Sombras
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.25
        
        // Título do botão
        setTitle("Entrar", for: .normal)
        
    }
}
