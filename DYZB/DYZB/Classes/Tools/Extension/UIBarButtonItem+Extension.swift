//
//  UIBarButtonItem+Extension.swift
//  DYZB
//
//  Created by supin－tech on 2017/5/25.
//  Copyright © 2017年 supin. All rights reserved.
//

import UIKit

extension UIBarButtonItem {

    convenience init(imageName: String, highImageName: String = "", size: CGSize = .zero){
        
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        
        if highImageName != ""{
            
            btn.setImage(UIImage(named: highImageName), for: .highlighted)

        }
        
        if size == .zero {
            btn.sizeToFit()
        }else{
        
            btn.frame = CGRect(origin: .zero, size:size)
        }
        
        self.init(customView: btn)
    }

}
