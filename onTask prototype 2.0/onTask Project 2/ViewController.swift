//
//  ViewController.swift
//  onTask Project 2
//
//  Created by Jackie Wang on 4/26/18.
//  Copyright © 2018 Jackie Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var taskNameLabel: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var date: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.checkButtonTapped(checkButton)
        let currDate = Date()
        
        self.date.text = currDate.toString(dateFormat: "dd-MMM-yyyy")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        checkButton.setImage(UIImage(named: "checkmark.png"), for: .normal)
    }
    
    
    
    
    
    
}

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
}

