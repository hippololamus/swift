//
//  FirstViewController.swift
//  Todo List
//
//  Created by Erik Van Lankvelt on 11/20/15.
//  Copyright © 2015 Hippololamus. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTodos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tblTodos.reloadData()
    }
    
    // UITableViewDelegate
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if ( editingStyle == UITableViewCellEditingStyle.Delete ) {
            
            todoManager.todos.removeAtIndex( indexPath.row )
            tblTodos.reloadData()
        }
    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoManager.todos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "")
        
        cell.textLabel?.text = todoManager.todos[ indexPath.row ].name
        cell.detailTextLabel?.text = todoManager.todos[ indexPath.row ].description
        
        return cell
    }


}

