//
//  CountryViewController.swift
//  Baddil
//
//  Created by Umair Hanif on 28/10/2020.
//

import UIKit

class CountryViewController: UIViewController {

    @IBOutlet var mainView: CountryView!
    
    var countryNames = ["Saudi Arabia", "Qatar", "Kuwait", "Bahrain", "Oman", "Emirates", "Jordan", "UK"]
    var countryNamesArabic = ["المملكة العربية", "دولة قطر", "الكويت", "البحرين", "سلطنة عمان", "الإمارات", "الأردن", "برطانیہ"]
    var countryImages = ["Arabia", "Qatar", "Kuwait", "Bahrain", "Oman", "Emirates", "Jordan", "UK"]
    
    var language = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
        
        mainView.initCollectionViewCell()
        
    }
    
    
    
    
    
    
}

extension CountryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countryNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryCollectionViewCell", for: indexPath) as? CountryCollectionViewCell {
            
            if language == "eng" {
                cell.titleLbl.text = countryNames[indexPath.row]
            } else if language == "ar" {
                cell.titleLbl.text = countryNamesArabic[indexPath.row]
            }
            cell.CountryImageView.image = UIImage(named: countryImages[indexPath.row])
            
            return cell
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CountryCollectionViewCell {
            cell.mainView.backgroundColor = .white
            cell.titleLbl.textColor = .black
            
            
            let controller = LoginViewController()
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CountryCollectionViewCell {
            cell.mainView.backgroundColor = UIColor(red: 80.0/255, green: 80.0/255, blue: 80.0/255, alpha: 0.25)
            cell.titleLbl.textColor = UIColor(red: 255.0/255, green: 255.0/255, blue: 255.0/255, alpha: 0.55)
        }
    }
    
    
}
extension CountryViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: mainView.collectionView.frame.size.width / 2, height: 60)
    }
}
