//
//  SectionView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 02/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    
    @Binding var prioritizedTasks: StoredTasks.PrioritizedTasks
    
    var body: some View {
        ForEach(prioritizedTasks.tasks) { index in
            RowView(task: self.$prioritizedTasks.tasks[index])
        }
        .onMove { sourceIndices, destinationIndex in
            self.prioritizedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
        }
        .onDelete { indexSet in
            self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
            
        }
    }
}
