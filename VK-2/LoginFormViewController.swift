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
    
 
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
