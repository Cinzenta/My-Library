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
        
        let emailTextField = CustomTextField(frame: CGRect(x: 90, y: 290, width: 250, height: 40))
        emailTextField.customPlaceholder = "Email"
        view.addSubview(emailTextField)
        
        let senhaTextField = CustomTextField(frame: CGRect(x:90, y: 350, width: 250, height: 40))
        senhaTextField.customPlaceholder = "Senha"
        view.addSubview(senhaTextField)
        
        let enterButton = CustomButton(frame: CGRect(x: 170, y: 410, width: 100, height: 40))
        view.addSubview(enterButton)
        
        enterButton.addTarget(self, action: #selector(enterButtonTapped), for: .touchUpInside)
    }
    
    @objc func enterButtonTapped() {
        print("Botão de entrar foi pressionado")
        
        // Inicializando a nova ViewController
        // let nextViewController = NextViewController()   //01
        
        // Apresentando a nova ViewController de forma modal
        // nextViewController.modalPresentationStyle = .fullScreen  //01
        // present(nextViewController, animated: true, completion: nil)  //01
        
        let InicioViewController = inicioViewController()
        InicioViewController.modalPresentationStyle = .fullScreen
        present(InicioViewController, animated: true, completion: nil)
        
        // Inicializando a nova ViewController
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        print("storyboard",storyboard)
//        
//        if let inicioViewController = storyboard.instantiateViewController(withIdentifier: "InicioViewController") as? inicioViewController {
//            print("Botão de entrar foi pressionado2")
//            // Empurrando a nova ViewController na pilha de navegação
//            navigationController?.pushViewController(inicioViewController, animated: true)
//            print("Botão de entrar foi pressionado3")
//        }else {
//            print("Não foi possível encontrar o ViewController com identificador 'InicioViewController'")
//        }
        
        
        // class NextViewController: UIViewController {   //01
        class IinicioViewController: UIViewController {
            override func viewDidLoad() {
                super.viewDidLoad()
                view.backgroundColor = .white
                // Configurar a próxima ViewController
            }
        }
        
        
    }
}
