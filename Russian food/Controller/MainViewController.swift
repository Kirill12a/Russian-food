//
//  MainViewController.swift
//  Russian food
//
//  Created by Kirill Drozdov on 11.07.2021.
//

import UIKit
import BATabBarController


class MainViewController: UIViewController, BATabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let vc3 = UIViewController()
        
        let tabBarItem  = BATabBarItem(image: UIImage(named: "intro1")!, selectedImage: UIImage(named: "intro1")!)
        let tabBarItem2 = BATabBarItem(image: UIImage(named: "intro4")!, selectedImage: UIImage(named: "intro4")!)
        let tabBarItem3 = BATabBarItem(image: UIImage(named: "intro5")!, selectedImage: UIImage(named: "intro5")!)
        
        
        let baTabBarController = BATabBarController()
        baTabBarController.viewControllers = [vc1, vc2, vc3]
        baTabBarController.tabBarItems = [tabBarItem, tabBarItem2, tabBarItem3]
        baTabBarController.delegate = self
        self.view.addSubview(baTabBarController.view)
        print("fvsfd")
        
        
        
    }
    
    func tabBarController(_ tabBarController: BATabBarController, didSelect: UIViewController) {
        
       
        
    }
    
}
