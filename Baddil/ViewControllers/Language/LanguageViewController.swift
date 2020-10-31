//
//  LanguageViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 28/10/2020.
//

import UIKit

class LanguageViewController: UIViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func engBtnListener(_ sender: Any) {
        let controller = CountryViewController()
        controller.language = "eng"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func arabicBtnListener(_ sender: Any) {
        let controller = CountryViewController()
        controller.language = "ar"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
}
