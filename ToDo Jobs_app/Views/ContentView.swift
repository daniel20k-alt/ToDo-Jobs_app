//
//  ContentView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var storedTasks: StoredTasks
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(storedTasks.tasks) { index in
                    RowView(task: self.$storedTasks.tasks[index])
                }
                .onMove { sourceIndices, destinationIndex in
                    self.storedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
                .onDelete { indexSet in
                    self.storedTasks.tasks.remove(atOffsets: indexSet)
                    
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                Button(action: { self.modalIsPresented = true })
                { Image(systemName: "plus" )})
            
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(storedTask: self.storedTasks)

        
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(storedTasks: StoredTasks())
    }
}

