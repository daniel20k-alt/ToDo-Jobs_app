//
//  NewTaskView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var storedTask: StoredTasks
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var text = ""
    @State var priority: Task.Priority = .low
    
    var body: some View {
        
        Form {
            
            TextField("Task name here", text: $text)
            
            
            
            VStack {
                Text("Priority:")
            Picker("Priority", selection: $priority.caseIndex) {
                ForEach(Task.Priority.allCases.indices) { priorityIndex in
                    Text(Task.Priority.allCases[priorityIndex].rawValue.capitalized).tag(priorityIndex)
                    
                }
            }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button("Adauga") {
                
                
                let priorityIndex = self.storedTask.getIndex(for: self.priority)
                self.storedTask.prioritizedTasks[priorityIndex].tasks.append(Task(name: self.text))
               
                
                self.presentationMode.wrappedValue.dismiss()
                
            }
            .disabled(text.isEmpty)
            
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(storedTask: StoredTasks())
    }
}
