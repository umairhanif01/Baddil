//
//  ItemsView.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class ItemsView: UIView {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func initCollectionViewCell() {
        
        let nib = UINib(nibName: "ItemsCollectionViewCell", bundle: nil)
        
        if let collectionView = collectionView {
            collectionView.register(nib, forCellWithReuseIdentifier: "ItemsCollectionViewCell")
            collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
        }
        
    }
    
    
    
}
