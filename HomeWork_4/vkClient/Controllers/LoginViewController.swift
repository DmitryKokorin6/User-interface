//
//  LoginViewController.swift
//  vkClient
//
//  Created by Rodion Molchanov on 24.05.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var titleImageView: UIImageView!
    
    @IBOutlet weak var titleView: UIView!
 
        let toTabBarController = "toTabBarController"
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
//        titleView.addGestureRecognizer(recognizer)
//    }

    
            //   @objc func onTap(_ sender: Any) {
//        if let sender = sender as? UITapGestureRecognizer  {
         //   self.view.endEditing(true)
//        }
        
        
        print("tap")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("willAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("didAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("willDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("didDisappear")
    }
   
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
//        if let login = userNameTextField.text,
//           login == "root" {
//            userNameTextField.backgroundColor = UIColor.green
//        }
//        else {
//            userNameTextField.backgroundColor = UIColor.magenta
//        }
//
//        if let password = passwordTextField.text,
//           password == "1234" {
//            passwordTextField.backgroundColor = UIColor.green
//        }
//        else {
//            passwordTextField.backgroundColor = UIColor.magenta
//        }
        performSegue(withIdentifier: toTabBarController, sender: nil)
    }
    
    
    
}

