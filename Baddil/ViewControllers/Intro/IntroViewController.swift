//
//  IntroViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 28/10/2020.
//

import UIKit

class IntroViewController: UIViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let controller : LanguageViewController = LanguageViewController()
            self.navigationController?.pushViewController(controller, animated: true)
            self.removeFromParent()
        }
        
        
    }
    
    
    
    
    
}
