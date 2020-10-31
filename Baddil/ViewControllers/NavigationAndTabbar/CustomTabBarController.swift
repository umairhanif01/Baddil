//
//  CustomTabBarController.swift
//  Baddil
//
//  Created by Umair Hanif on 31/10/2020.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        self.view.backgroundColor = UIColor(red: 219.0/255, green: 255.0/255, blue: 255.0/255, alpha: 1)
        
    }
    
    func initView() {
        
        // ////////////// NavigationBar Settings ///////////////////
        
        UINavigationBar.appearance().barTintColor = UIColor.white
        
        
        // ///////////////// Tabbar Settings//////////////////////
        
        self.tabBar.tintColor = UIColor(red: 255.0/255, green: 153.0/255, blue: 0.0/255, alpha: 1)
        
        //ViewConrtrollers
        let viewController1 =  UINavigationController(rootViewController: HomeViewController())
        viewController1.tabBarItem.image = UIImage(named: "AuctionIconTabbar")
        viewController1.tabBarItem.title = "Auction"
        viewController1.tabBarController?.tabBar.tintColor = UIColor.systemRed
        
        
        let viewController2 =  UINavigationController(rootViewController: HomeViewController())
        viewController2.tabBarItem.image = UIImage(named: "MyBidsIconTabbar")
        viewController2.tabBarItem.title = "My Bids"
        
        let viewController3 =  UINavigationController(rootViewController: HomeViewController())
        viewController3.tabBarItem.image = UIImage(named: "FavoriteIconTabbar")
        viewController3.tabBarItem.title = "Favourite"
        
        let viewController4 =  UINavigationController(rootViewController: HomeViewController())
        viewController4.tabBarItem.image = UIImage(named: "MeIconTabbar")
        viewController4.tabBarItem.title = "Me"
        
        
        self.viewControllers = [viewController1, viewController2, viewController3, viewController4]
        
    }
    
    
    @objc func  menuBtnTapped() {
        
    }
    
    @objc func  bellBtnTapped() {
        print("Bell Tapped")
    }
    
    
    
    
    
}
