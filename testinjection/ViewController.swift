//
//  ViewController.swift
//  testinjection
//
//  Created by kioshimafx on 2/14/16.
//  Copyright © 2016 FXSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TestInject"
        
        on("INJECTION_BUNDLE_NOTIFICATION") {
            self.view = TestInjectView()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

