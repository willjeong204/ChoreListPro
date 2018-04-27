//
//  ViewController.swift
//  onTask Project 2
//
//  Created by Jackie Wang on 4/26/18.
//  Copyright © 2018 Jackie Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var taskNameLabel: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        checkButton.setImage(UIImage(named: "checkmark"), for: .normal)
    }
    
    
    
    
    
    
}

