//
//  VotingViewController.swift
//  Survey
//
//  Created by Dongwoo Pae on 4/27/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let name = nameTextField?.text,
            let response = responseTextField?.text else {return}
            voteController?.createVote(name: name, response: response)
        
        nameTextField.text = ""
        responseTextField.text = ""
    }
    
}

