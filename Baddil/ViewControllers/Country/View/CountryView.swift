//
//  CountryView.swift
//  Baddil
//
//  Created by Umair Hanif on 28/10/2020.
//

import UIKit

class CountryView: UIView {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    func initCollectionViewCell() {
        
        let nib = UINib(nibName: "CountryCollectionViewCell", bundle: nil)
        
        if let collectionView = collectionView {
            collectionView.register(nib, forCellWithReuseIdentifier: "CountryCollectionViewCell")
            collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
        }
            
        
    }
    
    

}
