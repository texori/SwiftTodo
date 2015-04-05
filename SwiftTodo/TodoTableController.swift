//
//  TodoTableController.swift
//  SwiftTodo
//
//  Created by Oritex-Macbook-Pro on 2015. 4. 5..
//  Copyright (c) 2015년 YYG. All rights reserved.
//

import UIKit


var todoList = [String]()


class TodoTableController : UITableViewController
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // table view count
        return todoList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("todoCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = todoList[indexPath.row]
        return cell
    }
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            todoList.removeAtIndex(indexPath.row) // delete arrayindex
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic) // remove cell
        }
    }
}