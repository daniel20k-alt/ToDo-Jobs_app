//
//  TaskEditingView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 02/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    var body: some View {
        Form {
            TextField("Name", text: $task.name)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(
            task: .constant(Task(name: "To do"))
        
        )
    }
}
