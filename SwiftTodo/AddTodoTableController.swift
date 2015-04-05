//
//  AddTodoTableController.swift
//  SwiftTodo
//
//  Created by Oritex-Macbook-Pro on 2015. 4. 5..
//  Copyright (c) 2015년 yyg. All rights reserved.
//

 import UIKIT

class AddTodoTableController : UITableViewController,UITextFieldDelegate
{
    
    @IBOutlet var textField : UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        doneButton.enabled = false 
        textField.delegate = self
    }
    @IBAction func doneButtonClick(sender: AnyObject) {
        todoList.append(textField.text) // add todo
        dismissViewControllerAnimated(true, completion: nil) // move mainview
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let oldText: NSString = textField.text
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        doneButton.enabled = (newText.length > 0)
        return true
    }
         
}