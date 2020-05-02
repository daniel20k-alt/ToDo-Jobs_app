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
    
    var body: some View {
        
        Form {
            
            TextField("Task name here", text: $text)
            Button("Adauga") {
                
                self.storedTask.tasks.append(Task(name: self.text))
               
                
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
