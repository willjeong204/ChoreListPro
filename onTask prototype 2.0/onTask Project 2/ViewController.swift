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

    @IBOutlet weak var date: UILabel!
    
    @IBAction func checkBoxTouched(_ sender: UIButton) {
        let checkMark = UIImage(named: "checkmark") as UIImage!
        
        if sender.backgroundImage(for: .normal) != nil{
            sender.setBackgroundImage(nil, for: .normal)
            
        }
        else{
            sender.setBackgroundImage(checkMark, for: .normal)
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let currDate = Date()
        self.date.text = currDate.toString(dateFormat: "dd-MMM-yyyy")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

