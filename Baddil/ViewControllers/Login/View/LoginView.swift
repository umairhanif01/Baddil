//
//  LoginView.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class LoginView: UIView {
    
    @IBOutlet weak var pageTitleLbl: UILabel!
    
    @IBOutlet weak var signInBtnMainView: UIView!
    @IBOutlet weak var signInLbl: UILabel!
    @IBOutlet weak var signInBorder: UIView!
    @IBOutlet weak var signInMainView: UIView!
    
    @IBOutlet weak var registerBtnMainView: UIView!
    @IBOutlet weak var registerLbl: UILabel!
    @IBOutlet weak var registerBorder: UIView!
    @IBOutlet weak var registerMainView: UIView!
    
    @IBOutlet weak var termsAndConditionsView: UIView!
    @IBOutlet weak var termsImageView: UIImageView!
    
    @IBOutlet var guestView: [UIView]!
    
    
    var termsStatus = false
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        registerLbl.textColor = UIColor.white.withAlphaComponent(0.5)
        registerBorder.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        
        registerMainView.isHidden = true
        termsImageView.isHidden = true
        
        let signInTap = UITapGestureRecognizer(target: self, action: #selector(signInTapListener))
        signInBtnMainView.addGestureRecognizer(signInTap)
        
        let registerTap = UITapGestureRecognizer(target: self, action: #selector(registerTapListener))
        registerBtnMainView.addGestureRecognizer(registerTap)
        
        let termsTap = UITapGestureRecognizer(target: self, action: #selector(termsTapListener))
        termsAndConditionsView.addGestureRecognizer(termsTap)
        
        let guestTap = UITapGestureRecognizer(target: self, action: #selector(guestTapListener))
        for view in guestView {
            view.addGestureRecognizer(guestTap)
        }
        
        
    }
    
    
    @objc func signInTapListener() {
        
        pageTitleLbl.text = "Log In"
        
        signInLbl.textColor = UIColor.white
        signInBorder.backgroundColor = UIColor.white
        
        registerLbl.textColor = UIColor.white.withAlphaComponent(0.5)
        registerBorder.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        
        signInMainView.isHidden = false
        registerMainView.isHidden = true
        
    }
    
    
    @objc func registerTapListener() {
        
        pageTitleLbl.text = "Registeration"
        
        registerLbl.textColor = UIColor.white
        registerBorder.backgroundColor = UIColor.white
        
        signInLbl.textColor = UIColor.white.withAlphaComponent(0.5)
        signInBorder.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        
        registerMainView.isHidden = false
        signInMainView.isHidden = true
        
    }
    
    @objc func termsTapListener() {
        if termsStatus == false {
            termsStatus = true
            termsImageView.isHidden = false
        } else if termsStatus == true {
            termsStatus = false
            termsImageView.isHidden = true
        }
    }
    
    @objc func guestTapListener() {
        
    }
    
    

    
    
    
    
    
    
    
}
