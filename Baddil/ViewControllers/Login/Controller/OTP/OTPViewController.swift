//
//  OTPViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class OTPViewController: UIViewController {
    
    
    @IBOutlet weak var otpTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        otpTxtFld.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapArroundListener))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func tapArroundListener() {
        otpTxtFld.endEditing(true)
    }
    
    
    
}

extension OTPViewController : UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == otpTxtFld {
            let controller = CustomTabBarController()
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true, completion: nil)
        }
    }
}
