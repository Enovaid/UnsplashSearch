//
//  MainTabBarController.swift
//  popytka
//
//  Created by Айдана on 1/28/21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generateNavigationController(rootViewController: photosVC, title: "Photos"),
            generateNavigationController(rootViewController: ViewController(), title: "Favourites")
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String) -> UIViewController {
        let navicationVC = UINavigationController(rootViewController: rootViewController)
        navicationVC.tabBarItem.title = title
//        navicationVC.tabBarItem.image =
        return navicationVC
    }
}
