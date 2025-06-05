//
//  ContentView.swift
//  01_WeSplit
//
//  Created by Truong Huu Nguyen on 5/6/25.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var name: String = ""
    @State private var selectedStudent: String? = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter your name", text: $name)
                    .background(.pink)
                    .padding()
                    .background(.purple)
                
                Picker("Select a student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
