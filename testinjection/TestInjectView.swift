//
//  TestInjectView.swift
//  testinjection
//
//  Created by kioshimafx on 2/14/16.
//  Copyright © 2016 FXSolutions. All rights reserved.
//

import UIKit

class TestInjectView: UIView {
    
    let testLabel = UILabel()
    
    convenience init() {
        self.init(frame:CGRectZero)
        render()
    }
    
    func render() {
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.addSubview(testLabel)
        testLabel.frame = CGRectMake(50, 100, 100, 20)
        testLabel.text = "test2"
        
        
        print("\(testLabel.frame)")
        
    }

}
