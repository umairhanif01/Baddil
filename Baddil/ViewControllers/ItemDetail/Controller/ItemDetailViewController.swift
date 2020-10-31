//
//  ItemDetailViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class ItemDetailViewController: UIViewController {
    
    @IBOutlet var mainView: ItemDetailView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initNavigationBar()
        
        mainView.itemCollectionView.delegate = self
        mainView.itemCollectionView.dataSource = self
        
        mainView.liveBidCollectionView.delegate = self
        mainView.liveBidCollectionView.dataSource = self
        
        mainView.initCollectionViewCell()
        
        mainView.similarItemsTableView.delegate = self
        mainView.similarItemsTableView.dataSource = self
        
        mainView.initTableViewCell()
        
        
    }
    
    func initNavigationBar() {
        
        self.navigationItem.title = "Item Details"
        
        let backButton = UIButton()
        backButton.frame = CGRect(x: 0, y: 0, width: 30, height: 40)
        backButton.addTarget(self, action: #selector(backBtnListener), for: .touchUpInside)
        backButton.setImage(UIImage(named: "ChevronNav"), for: .normal)
        
        let favouriteButton = UIButton()
        favouriteButton.frame = CGRect(x: 0, y: 0, width: 30, height: 40)
        favouriteButton.addTarget(self, action: #selector(favoriteListener), for: .touchUpInside)
        favouriteButton.setImage(UIImage(named: "HeartIconNav"), for: .normal)
        
        let leftBtn = UIBarButtonItem(customView: backButton)
        let rightBtn = UIBarButtonItem(customView: favouriteButton)
        
        self.navigationItem.leftBarButtonItem = leftBtn
        self.navigationItem.rightBarButtonItem = rightBtn
        
    }
    
    @objc func backBtnListener() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func favoriteListener() {
        
    }
    
    
    
    
}

extension ItemDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //ItemImagesCollectionView
        if collectionView == mainView.itemCollectionView{
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemImagesCollectionViewCell", for: indexPath) as? ItemImagesCollectionViewCell {
                
                
                return cell
            }
            
        }
        
        //LiveBidCollectionView
        if collectionView == mainView.liveBidCollectionView{
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveBidsCollectionViewCell", for: indexPath) as? LiveBidsCollectionViewCell {
                
                
                
                return cell
                
            }
            
        }
        
        
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}

extension ItemDetailViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == mainView.itemCollectionView {
            return CGSize(width: 80, height: mainView.itemCollectionView.frame.size.height)
        }
        
        if collectionView == mainView.liveBidCollectionView {
            return CGSize(width: mainView.liveBidCollectionView.frame.size.width, height: 25)
        }
        
        return CGSize(width: 0, height: 0)
    }
}





extension ItemDetailViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SimilerItemsTableViewCell", for: indexPath) as? SimilerItemsTableViewCell {
            
            if indexPath.row == 0 {
                
            }
            
            if indexPath.row == 1 {
                
            }
            
            return cell
        }
        return UITableViewCell()
    }
    
    
}
