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
    
    
    var loadingView1 = UIView()
    var loadingView2 = UIView()
    var loadingView3 = UIView()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginInput.text = "admin"
        passwordInput.text = "123"
        
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view?.addGestureRecognizer(hideKeyboardGesture)
        

        
        loadingView1 = UIView(frame: CGRect(x: self.view.bounds.width / 2 - 40, y: self.view.bounds.height * 0.8, width: 20, height: 20))
        loadingView2 = UIView(frame: CGRect(x: self.view.bounds.width / 2 - 10, y: self.view.bounds.height * 0.8, width: 20, height: 20))
        loadingView3 = UIView(frame: CGRect(x: self.view.bounds.width / 2 + 20, y: self.view.bounds.height * 0.8, width: 20, height: 20))
        
        
        loadingView1.clipsToBounds = true
        loadingView2.clipsToBounds = true
        loadingView3.clipsToBounds = true
        
        loadingView1.layer.cornerRadius = loadingView1.bounds.width / 2
        loadingView2.layer.cornerRadius = loadingView2.bounds.width / 2
        loadingView3.layer.cornerRadius = loadingView3.bounds.width / 2
        
        loadingView1.backgroundColor = .systemIndigo
        loadingView2.backgroundColor = .systemIndigo
        loadingView3.backgroundColor = .systemIndigo
        
        self.view.addSubview(loadingView1)
        self.view.addSubview(loadingView2)
        self.view.addSubview(loadingView3)
        

        UIView.animate(withDuration: 1, delay: 0.0, options: [.autoreverse, .repeat], animations: {
            self.loadingView1.backgroundColor = .clear

        }, completion: nil)

        UIView.animate(withDuration: 1, delay: 0.35, options: [.autoreverse, .repeat], animations: {
            self.loadingView2.backgroundColor = .clear

        }, completion: nil)

        UIView.animate(withDuration: 1, delay: 0.70, options: [.autoreverse, .repeat], animations: {
            self.loadingView3.backgroundColor = .clear

        }, completion: nil)
            
    
        
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
