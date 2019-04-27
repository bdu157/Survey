//
//  PollingTabBarViewController.swift
//  Survey
//
//  Created by Dongwoo Pae on 4/27/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
    
    let voteController = VoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for childVC in children {
            if var childVC = childVC as? VoteControllerProtocol {  //to pick up the ones that have VoteControllerProtocols
                childVC.voteController = voteController
            }
        }
    }
}
