//
//  ViewControllerDemo.swift
//  testinjection
//
//  Created by kioshimafx on 2/14/16.
//  Copyright © 2016 FXSolutions. All rights reserved.
//

import UIKit

class ViewControllerDemo: UIViewController {
    
    override func loadView() { view = TestInjectViewStevia() }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Here we want to reload the view after injection
        on("INJECTION_BUNDLE_NOTIFICATION") {
            self.view = TestInjectViewStevia()
        }
    }
    
}