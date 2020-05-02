//
//  StoredTasks.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import Combine

class StoredTasks: ObservableObject {
   @Published var tasks = [
    "clean up room",
    "clean dust",
    "learn new song",
    "read a book",
    "paint the walls",
    "other"
        ].map { Task(name: $0) }
}
