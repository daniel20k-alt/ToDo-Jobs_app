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
                ForEach(storedTasks.prioritizedTasks) { index in SectionView(prioritizedTasks: self.$storedTasks.prioritizedTasks[index])
                    
                }
            }
        .listStyle(GroupedListStyle())
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

