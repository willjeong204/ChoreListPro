//
//  ViewController.swift
//  onTask Project 2
//
//  Created by Jackie Wang on 4/26/18.
//  Copyright © 2018 Jackie Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var elements = ["broom", "cook", "dishes", "fold laundry", "litterbox"]
    let users = ["UserA", "UserB", "UserC"]
    
    @IBOutlet weak var addTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var date: UILabel!
    
    @IBAction func addButton(_ sender: UIButton) {
        insertRow()
    }
    
    func insertRow(){
        elements.append(addTextField.text!)
        let indexPath = IndexPath(row: elements.count - 1, section: 0)
        
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        addTextField.text = "Enter Text"
        
        
    }
    var finished = false
    
    @IBAction func addRemove(_ sender: UIButton) {
        finished = !finished
        if finished{
            sender.setImage(UIImage(named: "done button 60x60"), for: .normal)
            
        }
        else{
            sender.setImage(UIImage(named: "addandedit.png"), for: .normal)

        }
    }
    
    
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let currDate = Date()
        self.date.text = currDate.toString(dateFormat: "MMM-dd")
        
        


    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        cell.choreLabel.text = elements[indexPath.row]
        cell.choreImage.image = UIImage(named: elements[indexPath.row])
        cell.userType.text = users[Int(arc4random_uniform(3))]
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            elements.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }
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

