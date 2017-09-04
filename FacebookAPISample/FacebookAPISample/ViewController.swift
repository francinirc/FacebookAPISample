//
//  ViewController.swift
//  FacebookAPISample
//
//  Created by Francini Carvalho on 03/09/17.
//  Copyright © 2017 Francini Carvalho. All rights reserved.
//

import UIKit
import FacebookLogin


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

