//
//  PollingTabBarViewController.swift
//  Survey
//
//  Created by Dongwoo Pae on 4/27/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for childVC in children {
            if let childVC = childVC as? VoteControllerProtocol {
                childVC.voteController = voteController
            }
        }
    }
    
    let voteController = VoteController()
}
