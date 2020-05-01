//
//  NewTaskView.swift
//  ToDo Jobs_app
//
//  Created by DDDD on 01/05/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
   @State var text = ""
    
    
    var body: some View {
        TextField("Task name here", text: $text)

    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
