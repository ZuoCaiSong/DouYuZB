//
//  PageTitleView.swift
//  DYZB
//
//  Created by supin－tech on 2017/5/25.
//  Copyright © 2017年 supin. All rights reserved.
//

import UIKit

class PageTitleView: UIView {
    
    var titles: [String]
   // 自定义构造函数
    init(frame: CGRect, titles: [String]) {
        
        self.titles = titles
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK:- 设置UI界面
extension PageTitleView {

    
    
}
