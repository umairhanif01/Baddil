//
//  CompaniesCollectionViewCell.swift
//  Baddil
//
//  Created by Umair Hanif on 29/10/2020.
//

import UIKit

class CompaniesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainView: CustomView!
    @IBOutlet weak var companyImageView: CustomImage!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var liveView: UIView!
    @IBOutlet weak var offlineView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        companyImageView.cornerRadius = 10
        companyImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

}
