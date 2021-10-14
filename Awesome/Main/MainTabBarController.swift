//
//  MainTabBarController.swift
//  Awesome
//
//  Created by Nicholas on 2021/10/12.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addChildController(child: AzureDragonController(), childTitle: "青龙", image: "suit.heart", selectedImage: "suit.heart", index: 0)
        self.addChildController(child: VermilionBirdController(), childTitle: "朱雀", image: "suit.club", selectedImage: "suit.club", index: 1)
        self.addChildController(child: WhiteTigerController(), childTitle: "白虎", image: "suit.diamond", selectedImage: "suit.diamond", index: 2)
        self.addChildController(child: BlackTortoiseController(), childTitle: "玄武", image: "suit.spade", selectedImage: "suit.spade", index: 3)
        
        self.tabBar.tintColor = .red
    }
    
}

extension MainTabBarController {
    func addChildController(child: UIViewController, childTitle: String, image: String, selectedImage: String, index: Int) {
        let navController = MainNavigationController(rootViewController: child)
        child.title = childTitle
        child.tabBarItem.tag = index
        child.tabBarItem.image = UIImage(systemName: image)
        child.tabBarItem.selectedImage = UIImage(systemName: selectedImage)
        self.addChild(navController)
    }
}
