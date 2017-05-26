//
//  HomeViewController.swift
//  DYZB
//
//  Created by supin－tech on 2017/5/25.
//  Copyright © 2017年 supin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
        //设置UI界面
        setUpUI()
    }
}


// MARK: - 设置UI界面
extension HomeViewController{
    
    fileprivate func setUpUI(){
        
         //1.设置导航栏
        setUpNavigatBar()
    }
    
    private func setUpNavigatBar(){
        
       //1.左边按钮
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        //2.设置右边的items
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
        
    }
}
