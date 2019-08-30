//
//  ProgressBarHelper.swift
//  ProgressBar
//
//  Created by Daljeet Singh on 31/08/19.
//  Copyright © 2019 Daljeet Singh. All rights reserved.
//


import UIKit

class ProgressBar: UIView {
    
    let lowerBar = UIView()
    let upperBar = UIView()
    
    var lowerBarColor: UIColor = .white
    var progressColor : UIColor = .blue
    
    var progress : CGFloat = 0.5 // in percentage
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        lowerBar.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
        lowerBar.backgroundColor = lowerBarColor
        lowerBar.layer.cornerRadius = 10
        self.addSubview(lowerBar)
        
        upperBar.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width * progress, height: self.bounds.size.height)
        upperBar.backgroundColor = progressColor
        upperBar.layer.cornerRadius = 10
        self.addSubview(upperBar)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        lowerBar.backgroundColor = lowerBarColor
        upperBar.backgroundColor = progressColor
        
        lowerBar.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
        upperBar.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width * progress, height: self.bounds.size.height)
        
        super.layoutSubviews()
    }
    
}
