//
//  ViewController.swift
//  FacebookAPISample
//
//  Created by Francini Carvalho on 03/09/17.
//  Copyright © 2017 Francini Carvalho. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // if user is logged in, go to next view, else request for login
        if let accessToken = AccessToken.current {
            print(accessToken.userId)
        } else {
            let loginButton = LoginButton(readPermissions: [ .publicProfile, .email, .userFriends ])
            loginButton.center = view.center
            
            view.addSubview(loginButton)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

