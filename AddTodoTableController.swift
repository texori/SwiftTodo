//
//  AddTodoTableController.swift
//  SwiftTodo
//
//  Created by Oritex-Macbook-Pro on 2015. 4. 5..
//  Copyright (c) 2015년 yyg. All rights reserved.
//

 import UIKIT

class AddTodoTableController : UITableViewController
{
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad(){
        doneButton.enabled = false;
    }
    @IBAction func doneButtonClick(sender: AnyObject) {
        
        performSegueWithIdentifier("addSegue", sender: self)
    }
    @IBAction func textField(sender: AnyObject) {
        let text : NSString = textField.text
        
        doneButton.enabled = (text.length < 0)
    }
    @IBAction func textFieldChange(sender: AnyObject, forEvent event: UIEvent) {
        
    }
    

}