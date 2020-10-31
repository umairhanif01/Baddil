//
//  LoginViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 28/10/2020.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var mainView: LoginView!
    @IBOutlet weak var phoneNmbrTxtFld: UITextField!
    
    @IBOutlet weak var signInBtnView: CustomView!
    
    override func viewDidLoad() {
        
        let siginInTap = UITapGestureRecognizer(target: self, action: #selector(signIntapListener))
        signInBtnView.addGestureRecognizer(siginInTap)
        
    }
    
    @objc func signIntapListener() {
        let controller = OTPViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
}
