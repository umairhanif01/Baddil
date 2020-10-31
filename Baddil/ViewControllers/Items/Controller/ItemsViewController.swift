//
//  ItemsViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class ItemsViewController: UIViewController {
    
    @IBOutlet var mainView: ItemsView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initNavigationBar()
        
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
        
        mainView.initCollectionViewCell()
        
    }
    
    
    
    func initNavigationBar() {
        
        self.navigationItem.title = "Items"
        
        let backButton = UIButton()
        backButton.frame = CGRect(x: 0, y: 0, width: 30, height: 40)
        backButton.addTarget(self, action: #selector(backBtnListener), for: .touchUpInside)
        backButton.setImage(UIImage(named: "ChevronNav"), for: .normal)
        
        let barBtn = UIBarButtonItem(customView: backButton)
        
        self.navigationItem.leftBarButtonItem = barBtn
    }
    
    @objc func backBtnListener() {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension ItemsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemsCollectionViewCell", for: indexPath) as? ItemsCollectionViewCell {
            
            
            return cell
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? ItemsCollectionViewCell {
            let controller = ItemDetailViewController()
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
}
extension ItemsViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: mainView.collectionView.frame.size.width, height: 400)
    }
}

