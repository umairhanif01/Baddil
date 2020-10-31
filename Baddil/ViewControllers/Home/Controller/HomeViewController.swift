//
//  HomeViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var mainView: HomeView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initNavigationBar()
        
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
        
        mainView.initCollectionViewCell()
        
    }
    
    
    func initNavigationBar() {
        
        self.navigationItem.title = "Auction Companies"
        
        let searchButton = UIButton()
        searchButton.frame = CGRect(x: 0, y: 0, width: 30, height: 40)
        searchButton.addTarget(self, action: #selector(searchBtnListener), for: .touchUpInside)
        searchButton.setImage(UIImage(named: "SearchIconNav"), for: .normal)
        
        let barBtn = UIBarButtonItem(customView: searchButton)
        
        self.navigationItem.rightBarButtonItem = barBtn
    }
    
    @objc func searchBtnListener() {
        
    }
    
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CompaniesCollectionViewCell", for: indexPath) as? CompaniesCollectionViewCell {
            
            
            return cell
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CompaniesCollectionViewCell {
            let controller = ItemsViewController()
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
}
extension HomeViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: mainView.collectionView.frame.size.width, height: 300)
    }
}
