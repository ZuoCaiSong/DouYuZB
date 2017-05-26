//
//  PageTitleView.swift
//  DYZB
//
//  Created by supin－tech on 2017/5/25.
//  Copyright © 2017年 supin. All rights reserved.
//

import UIKit




// MARK: - 定义常量
private let KScrollLineH : CGFloat = 2

private let kNormalColor : (CGFloat, CGFloat, CGFloat) = (85, 85, 85)
private let kSelectColor : (CGFloat, CGFloat, CGFloat) = (255, 128, 0)

class PageTitleView: UIView {
    
   fileprivate var titles: [String]
    
   // MARK: - 懒加载属性
    fileprivate lazy var titleLabels : [UILabel] = [UILabel]()
    
    fileprivate lazy var scrollView: UIScrollView = {
        
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        
        return scrollView
    }()
    
    fileprivate lazy var scrollLine : UIView = { //滚动的线条
        
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    
    
    
    
   // 自定义构造函数
    init(frame: CGRect, titles: [String]) {
        
        self.titles = titles
        
        super.init(frame: frame)
        
        // 设置UI
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK:- 设置UI界面
fileprivate extension PageTitleView {
   
    fileprivate func setupUI() {
    
        //1. 添加UIScrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //2.添加title到对应的label
        setUptitleLabels()
        
        // 3.设置底线和滚动的滑块
        setupBottomLineAndScrollLine()
    }
    
    
    fileprivate func setUptitleLabels() {
    
        // 0. 确定label的一些frame的值
        let labelW : CGFloat = frame.width / CGFloat(titles.count)
        
        let labelH : CGFloat = frame.height - KScrollLineH
        
        let labelY : CGFloat = 0
        
        for (index, title) in titles.enumerated(){
            
            // 1.创建label
            let label = UILabel()
            
            // 2.设置Label的属性
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor(r: kNormalColor.0, g: kNormalColor.1, b: kNormalColor.2)
            label.textAlignment = .center
            
            // 3.设置label的frame
            let labelX: CGFloat = labelW * CGFloat(index)
            
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            
            // 4.添加、保存
            scrollView.addSubview(label)
            titleLabels.append(label)
            // 5. 给label添加手势
            label.isUserInteractionEnabled = true;
//            let tapGes = UITapGestureRecognizer(target: self, action: #selector(self.titleLabelClick(_:)))
//            label.addGestureRecognizer(tapGes)
        }
    }
    
    
    fileprivate func setupBottomLineAndScrollLine() {
        
        // 1. 添加底线
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height - lineH, width: frame.width, height: lineH)
        
        addSubview(bottomLine)
        
        // 2 添加scrollViewLine
        guard let firstLabel = titleLabels.first else {
            return
        }
        firstLabel.textColor = UIColor(r: kSelectColor.0, g: kSelectColor.1, b: kSelectColor.2)
        
        scrollView.addSubview(scrollLine)
        
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - KScrollLineH, width: firstLabel.frame.width, height: KScrollLineH)
    }
}
