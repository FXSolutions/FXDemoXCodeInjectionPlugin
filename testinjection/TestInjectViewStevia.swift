//
//  TestInjectViewStevia.swift
//  testinjection
//
//  Created by kioshimafx on 2/14/16.
//  Copyright © 2016 FXSolutions. All rights reserved.
//

import UIKit

class TestInjectViewStevia: UIView {

    let email = UITextField()
    let password = UITextField()
    let login = UIButton(type: UIButtonType.System)
    
    convenience init() {
        self.init(frame:CGRectZero)
        render()
    }
    
    func render() {
        backgroundColor = .whiteColor()
        
        sv([
            email.placeholder("Email").style(fieldStyle), //.style(emailFieldStyle),
            password.placeholder("Password").style(fieldStyle).style(passwordFieldStyle),
            login.text("Login").style(buttonSytle).tap(loginTapped)
            ])
        
        layout([
            80,
            |-email-| ~ 50,
            8,
            |-password-| ~ 50,
            "",
            |login| ~ 80,
            0
            ])
    }
    
    func fieldStyle(f:UITextField) {
        f.borderStyle = .RoundedRect
        f.font = UIFont(name: "Avenir-Book", size: 24)
        f.returnKeyType = .Next
    }
    
    func passwordFieldStyle(f:UITextField) {
        f.secureTextEntry = true
        f.returnKeyType = .Done
    }
    
    func buttonSytle(b:UIButton) {
        b.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        b.setTitleColor(UIColor ( red: 0.0, green: 0.6574, blue: 1.0, alpha: 1.0 ), forState: UIControlState.Highlighted)
        b.backgroundColor = UIColor.lightGrayColor().colorWithAlphaComponent(0.5)
        b.titleLabel?.font = UIFont(name: "Avenir-Book", size: 24)
    }
    
    func loginTapped() {
        //Do something
    }
    
}
