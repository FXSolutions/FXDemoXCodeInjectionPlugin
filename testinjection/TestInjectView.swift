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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        render()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render() {
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.addSubview(testLabel)
        testLabel.frame = CGRectMake(50, self.frame.height-40, 100, 20)
        testLabel.text = "test2"
        
        print("\(testLabel.frame)")
        print("\(self.frame)")
        
    }

}
