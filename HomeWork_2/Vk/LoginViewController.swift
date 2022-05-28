//
//  ViewController.swift
//  Vk
//
//  Created by Дмитрий Кокорин on 21.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginPress: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        
    let recognize = UITapGestureRecognizer(target: self, action: #selector(onTap))
    
        loginPress.addGestureRecognizer(recognize)
        
    }
    
    @objc func onTap() {
            print("Вход")
        }
}
    




