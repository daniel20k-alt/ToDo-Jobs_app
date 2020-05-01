//
//  ContentView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var storedTasks = StoredTasks()

    var body: some View {
        List(storedTasks.tasks.indices) { index in
            Text(self.storedTasks.tasks[index].name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
