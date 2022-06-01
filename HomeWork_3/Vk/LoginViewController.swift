//
//  ViewController.swift
//  Vk
//
//  Created by Дмитрий Кокорин on 21.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let toTabBarController = "toTabBarController"
    
    
    
    
 
    @IBAction func pressLogin(_ sender: Any) {
        performSegue(withIdentifier: toTabBarController, sender: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    
//    let recognize = UITapGestureRecognizer(target: self, action: #selector(onTap))
//
//        loginPress.addGestureRecognizer(recognize)
        
    }
//
//    @objc func onTap() {
//            print("Вход")
//        }
    
    
    
}
    




