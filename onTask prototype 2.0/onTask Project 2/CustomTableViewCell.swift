//
//  CustomTableViewCell.swift
//  onTask Project 2
//
//  Created by Will Jeong on 5/4/18.
//  Copyright © 2018 Jackie Wang. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var choreImage: UIImageView!
    
    @IBOutlet weak var checkButton: UIButton!
    
    var checked = false;
    let checkMark = UIImage(named: "checked box") as UIImage!
    let uncheckMark = UIImage(named: "unchecked box") as UIImage!
    let removeButton = UIImage(named: "remove button") as UIImage!
    var editting = false
    
    @IBAction func edditingFunction(_ sender: UIButton) {
        
        
    }
    
    
    
    @IBAction func checkButton(_ sender: UIButton) {
        if editting == false{
            checked = !checked
            if checked{
                sender.setImage(checkMark, for: .normal)
                //sender.setBackgroundImage(checkMark, for: .normal)
                
            }
            else{
                sender.setImage(uncheckMark, for: .normal)
                //sender.setBackgroundImage(uncheckMark, for: .normal)
                
            }
        }
        
    }
    @IBOutlet weak var choreLabel: UILabel!
    
    @IBOutlet weak var userType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    

}
