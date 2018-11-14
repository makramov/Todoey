//
//  ViewController.swift
//  Todoey
//
//  Created by Mansur Akramov on 11/13/18.
//  Copyright © 2018 Mansur Akramov. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    //MARK: Creating hardcordet array.
    
    let arrayItems = ["Buy banana","Buy apple","Buy pinch"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
    }
    
    //MARK: Table view methods here
    
    //Number of rows in section
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayItems.count
    }
    //Cell for row at index path
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoList", for: indexPath)
        cell.textLabel?.text = arrayItems[indexPath.row]
        return cell
        
    }
    //did select row at index path method here.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
           tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }

}

