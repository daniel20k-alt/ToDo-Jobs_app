//
//  ContentView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var storedTasks: StoredTasks

    var body: some View {
        
        List(storedTasks.tasks) { task in
            Text(task.name)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(storedTasks: StoredTasks())
    }
}
}
