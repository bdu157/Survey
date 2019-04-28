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
            if var childVC = childVC as? VoteControllerProtocol {
                childVC.voteController = voteController
            }
        }

    }
}


/*
 Thank you for quick response! it makes more sense now. another question. Would this work without using protocols? I would see it as no because swift vocabulary and Places apps have segue to pass datas to next viewController but this one has no way to pass data through? am i understanding correctly?
 
 */
