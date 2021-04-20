//
//  ViewController.swift
//  Assignment Notebook
//
//  Created by Christian Carnalla on 4/16/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 
    
    
    
    @IBOutlet weak var tableView: UITableView!
   
    
    @IBOutlet weak var textField: UITextField!
 
    var assignments = ["Geometry packet", "Computer Programming Final Unit App", "Biology Classkick"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mycell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        mycell.textLabel!.text = assignments[indexPath.row]
        return mycell
    }
    
    @IBAction func addAssignment(_ sender: UIBarButtonItem) {
        if let newAssignment = textField.text {
            assignments.append(newAssignment)
            tableView.reloadData()
            
        } else {
            print("No Assignment Entered")
        }
    }
    
}

