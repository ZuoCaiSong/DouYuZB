//
//  MainViewController.swift
//  DYZB
//
//  Created by supin－tech on 2017/5/25.
//  Copyright © 2017年 supin. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.orange
        addChildVc("Home")
        addChildVc("Live")
        addChildVc("Follow")
        addChildVc("Profile")
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func addChildVc(_ storyNmae: String){
        
        // 1.通过 storyboard 获取控制器
        let childVc = UIStoryboard (name: storyNmae, bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(childVc)
    }
   
}
