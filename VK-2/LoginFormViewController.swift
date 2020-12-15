//
//  LoginFormViewController.swift
//  VK-2
//
//  Created by Julie on 09.12.2020.
//

import UIKit

class LoginFormViewController: UIViewController {

    @IBOutlet weak var loginInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    let login = "admin"
    let password = "123"
    
    @IBAction func signInButton(_ sender: Any) {
        if loginInput.text! == login && passwordInput.text! == password {
            print("Authorization succeeded")
        } else {
            print("Authorization unsucceeded")
        }
        
    }
    
 
    @objc func hideKeyboard() {
        self.view?.endEditing(true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view?.addGestureRecognizer(hideKeyboardGesture)
    }
    

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if loginInput.text! == login && passwordInput.text! == password {
            return true
        } else {
            //создаем контроллер
            let alert = UIAlertController(title: "Error", message: "Incorrect input data", preferredStyle: .alert)
            //создаем кнопку
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            //добавлем кнопку на каонтроллер
            alert.addAction(action)
            //показываем контроллер
            present(alert, animated: true, completion: nil)
            return false
        }
    }
}
