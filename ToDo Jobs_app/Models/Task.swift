//
//  Task.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    
    let id = UUID()
    var name: String
    var completed = false
    
}
