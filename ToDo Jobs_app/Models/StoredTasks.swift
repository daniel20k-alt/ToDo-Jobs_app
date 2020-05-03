//
//  StoredTasks.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import Combine

class StoredTasks: ObservableObject {
    
    @Published var prioritizedTasks = [
        PrioritizedTasks.init(priority: .high, names: [
        
        "clean up room",
        "clean dust"
        ]),
        
        
        PrioritizedTasks(priority: .medium, names: [
    
        "learn new song",
        "read a book"
        ]),
        
        PrioritizedTasks(priority: .low, names: [
        
            "paint the walls"
        ]),
        
        PrioritizedTasks(priority: .no, names: [
            
            "other"]
        )
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
    
    
    
    
}

private extension StoredTasks.PrioritizedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init(priority: priority, tasks: names.map { Task(name: $0)})
    }
}
