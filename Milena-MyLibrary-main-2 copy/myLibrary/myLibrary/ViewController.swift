//
//  ViewController.swift
//  myLibrary
//
//  Created by iOSLab on 14/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white

        let emailTextField = CustomTextField(frame: CGRect(x: 70, y: 290, width: 250, height: 40))
        emailTextField.customPlaceholder = "Email"
        view.addSubview(emailTextField)
        
        let senhaTextField = CustomTextField(frame: CGRect(x:70, y: 350, width: 250, height: 40))
        senhaTextField.customPlaceholder = "Senha"
        view.addSubview(senhaTextField)
        
        let enterButton = CustomButton(frame: CGRect(x: 150, y: 410, width: 90, height: 40))
        view.addSubview(enterButton)
        
        enterButton.addTarget(self, action: #selector(enterButtonTapped), for: .touchUpInside)
        
        let registerButton = CustomButton(frame: CGRect(x: 150, y: 500, width: 90, height: 40))
        view.addSubview(registerButton)
        
        registerButton.addTarget(self, action: #selector(enterButtonTapped), for: .touchUpInside)
    }
    
    @objc func enterButtonTapped() {
        print("Botão de entrar foi pressionado")
        
        
        let InicioViewController = inicioViewController()
        InicioViewController.modalPresentationStyle = .fullScreen
        present(InicioViewController, animated: true, completion: nil)
        
    }
}
