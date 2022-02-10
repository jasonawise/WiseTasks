//
//  ContentView.swift
//  Shared
//
//  Created by Jason Wise on 2/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var taskName = ""
    @State private var tasks = ["item 1", "item 2"]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Wise Tasks")
                .font(.title).padding()
           
            HStack {
                TextField("Add a task...", text: $taskName)
                    .padding()
                Button("Add") {
                    return 
                }
                .padding(.trailing, 20)
                .buttonStyle(.bordered)
            }
            List {
                ForEach(tasks, id: \.self) {
                    Text("\($0)")
                }
            }
        }
    }
//    func addTask(task: String) -> Array<String> {
//        // push task to the tasks array
//        return tasks.append(task)
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
