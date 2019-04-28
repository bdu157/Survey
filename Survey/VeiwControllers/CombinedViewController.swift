//
//  CombinedViewController.swift
//  Survey
//
//  Created by Dongwoo Pae on 4/27/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToVoting" {
            guard let destination = segue.destination as? VotingViewController else {return}
            destination.voteController = voteController
        }
        else if segue.identifier == "ToResults" {
            guard let desitination = segue.destination as? ResultsTableViewController else {return}
            desitination.voteController = voteController
        }
    }
}
