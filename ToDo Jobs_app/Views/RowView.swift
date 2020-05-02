//
//  RowView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 02/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct RowView: View {
  @Binding  var task: Task
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            Text(task.name)
  
        }
    }
}



struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "To do")))
    }
}
