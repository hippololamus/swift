//
//  SecondViewController.swift
//  Todo List
//
//  Created by Erik Van Lankvelt on 11/20/15.
//  Copyright © 2015 Hippololamus. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtDescription: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events
    @IBAction func btnCreateTodo_Click( sender: UIButton ) {
        todoManager.createTodo( txtDescription.text!, name: txtName.text! )
        
        self.view.endEditing( true )
        txtDescription.text = ""
        txtName.text = ""
        
        self.tabBarController?.selectedIndex = 0
    }
    
    // IOS touch functions
    
    // Remove focus on input if touch outside of it
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
         self.view.endEditing( true )
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }


}

