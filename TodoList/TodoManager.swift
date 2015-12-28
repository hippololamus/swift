//
//  TodoManager.swift
//  Todo List
//
//  Created by Erik Van Lankvelt on 11/20/15.
//  Copyright © 2015 Hippololamus. All rights reserved.
//

import UIKit

var todoManager: TodoManager = TodoManager()

struct todo {
    var description = ""
    var name = ""
    
}

class TodoManager: NSObject {
    var todos = [ todo ]()
    
    func createTodo( description: String, name: String ) {
        todos.append( todo( description: description, name: name ))
    }
}
