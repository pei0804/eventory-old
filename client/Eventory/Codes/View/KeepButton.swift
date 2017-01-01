//
//  KeepButton.swift
//  Eventory
//
//  Created by jumpei on 2016/12/30.
//  Copyright © 2016年 jumpei. All rights reserved.
//

import UIKit

class KeepButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup() {
        layer.cornerRadius = 4.0
    }
    
    func active() {
        layer.backgroundColor = Colors.main.CGColor
        layer.borderColor = UIColor.clearColor().CGColor;
        layer.borderWidth = 0;
        setTitleColor(UIColor.whiteColor(), forState: .Normal)
        setImage(UIImage(named:"keepActive.png"), forState: .Normal)
        
    }
    
    func noActive() {
        layer.backgroundColor = UIColor.clearColor().CGColor
        layer.borderColor = Colors.main.CGColor;
        layer.borderWidth = 2;
        setTitleColor(Colors.main, forState: .Normal)
        setImage(UIImage(named:"keepNoActive.png"), forState: .Normal)
    }
}