//
//  ContentView.swift
//  Shared
//
//  Created by Jason Wise on 2/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var taskName = ""
     var body: some View {
        VStack(alignment: .leading) {
            Text("Tasks")
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
                Text("item")
                Text("item 1")
                Text("item 2")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
