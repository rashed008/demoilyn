//
//  HomeViewController.swift
//  ILYN App
//
//  Created by Mominur Rahman on 9/11/18.
//  Copyright © 2018 BYSL Global. All rights reserved.
//

import UIKit
//import CarbonKit

class HomeViewController: UIViewController { //, CarbonTabSwipeNavigationDelegate
    
    @IBOutlet weak var homeIcon: UIImageView!
    @IBOutlet weak var browseIcon: UIImageView!
    @IBOutlet weak var accountIcon: UIImageView!
    @IBOutlet weak var helpIcon: UIImageView!
    
    
    var unTappedIcon = ["shoppingCart"]
    var tappedIcon = ["search"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        let items = ["All",  "WOMEN",  "MEN",  "KIDS",  "HOME",  "CITY"]
//        let carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: items, delegate: self)
//        carbonTabSwipeNavigation.insert(intoRootViewController: self)
        
        //Change the toolbar background color, font color, tint color
        
//        carbonTabSwipeNavigation.toolbar.isTranslucent = false
//
//        carbonTabSwipeNavigation.toolbar.barTintColor = UIColor.black
//        carbonTabSwipeNavigation.setIndicatorColor(UIColor.orange)
//        carbonTabSwipeNavigation.setIndicatorHeight(2)
//        carbonTabSwipeNavigation.setTabExtraWidth(16)
//
//        carbonTabSwipeNavigation.toolbar.clipsToBounds = true
//        carbonTabSwipeNavigation.setSelectedColor(UIColor.white, font: UIFont.systemFont(ofSize: 12))
//        carbonTabSwipeNavigation.setNormalColor(UIColor.lightGray, font: UIFont.systemFont(ofSize: 12))
        
        addLeftBarIcon()
    }
    
//    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
//
//              let screen = self.storyboard?.instantiateViewController(withIdentifier: "demo") as! demo
//
//                return screen
//
    
//           guard let storyboard = storyboard else { return UIViewController() }
//                if index == 0 {
//                    
//                    let storyboard = UIStoryboard(name: "All", bundle: nil)
//                    let secondViewController = storyboard.instantiateViewController(withIdentifier: "AllViewController") as! AllViewController
//                    self.present(secondViewController, animated: true, completion: nil)
//                    
//                    
//                 //   return storyboard.instantiateViewController(withIdentifier: "All")
//                } else if index == 1 {
//                    return storyboard.instantiateViewController(withIdentifier: "Women")
//                }
//                return storyboard.instantiateViewController(withIdentifier: "Men")
//    }
    
    
    //set iamge for vanigation bar
    func addLeftBarIcon() {
    
    let logoImage = UIImage.init(named: "mainLogo")
    let logoImageView = UIImageView.init(image: logoImage)
    logoImageView.frame = CGRect(x:0.0,y:0.0, width:200,height:300)
    logoImageView.contentMode = .scaleAspectFit
    let imageItem = UIBarButtonItem.init(customView: logoImageView)
    let widthConstraint = logoImageView.widthAnchor.constraint(equalToConstant: 200)
    let heightConstraint = logoImageView.heightAnchor.constraint(equalToConstant: 300)
    heightConstraint.isActive = true
    widthConstraint.isActive = true
    navigationItem.leftBarButtonItem =  imageItem
    }
    
    
    
    @IBAction func OnTapHomeButton(_ sender: UITapGestureRecognizer) {
        print("Home")
        self.homeIcon.image = UIImage.init(named: "search")
        self.helpIcon.image = UIImage.init(named: "shoppingCart")
        self.accountIcon.image = UIImage.init(named: "shoppingCart")
        self.browseIcon.image = UIImage.init(named: "shoppingCart")
    }
    
    
    @IBAction func OnTapBrowseButton(_ sender: UITapGestureRecognizer) {
        print("Browse")
         self.browseIcon.image = UIImage.init(named: "search")
         self.homeIcon.image = UIImage.init(named: "shoppingCart")
         self.accountIcon.image = UIImage.init(named: "shoppingCart")
         self.helpIcon.image = UIImage.init(named: "shoppingCart")
    }
    
    
    @IBAction func OnTapAccountButton(_ sender: Any) {
        print("Account")
        self.accountIcon.image = UIImage.init(named: "search")
        self.browseIcon.image = UIImage.init(named: "shoppingCart")
        self.homeIcon.image = UIImage.init(named: "shoppingCart")
        self.helpIcon.image = UIImage.init(named: "shoppingCart")
    }
    
    @IBAction func OnTapHelpButton(_ sender: Any) {
        print("Help")
        self.helpIcon.image = UIImage.init(named: "search")
        self.accountIcon.image = UIImage.init(named: "shoppingCart")
        self.browseIcon.image = UIImage.init(named: "shoppingCart")
        self.homeIcon.image = UIImage.init(named: "shoppingCart")
        
    }
    


}
