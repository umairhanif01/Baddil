//
//  ItemDetailView.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class ItemDetailView: UIView {
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    @IBOutlet weak var liveBidCollectionView: UICollectionView!
    
    @IBOutlet weak var similarItemsTableView: UITableView!
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    func initCollectionViewCell() {
        
        let nib = UINib(nibName: "ItemImagesCollectionViewCell", bundle: nil)
        
        if let collectionView = itemCollectionView {
            collectionView.register(nib, forCellWithReuseIdentifier: "ItemImagesCollectionViewCell")
            collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
        }
        
        let liveBidnib = UINib(nibName: "LiveBidsCollectionViewCell", bundle: nil)
        
        if let collectionView = liveBidCollectionView {
            collectionView.register(liveBidnib, forCellWithReuseIdentifier: "LiveBidsCollectionViewCell")
            collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
        }
        
    }
    
    
    func initTableViewCell() {
        
        let nib = UINib(nibName: "SimilerItemsTableViewCell", bundle: nil)
        
        if let tableView = similarItemsTableView {
            tableView.register(nib, forCellReuseIdentifier: "SimilerItemsTableViewCell")
        }
        
    }
    
    
}
