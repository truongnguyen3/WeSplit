//
//  ContentView.swift
//  01_WeSplit
//
//  Created by Truong Huu Nguyen on 5/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        
        Form {
            Section {
                TextField(value: $checkAmount, format: .currency(code: Locale.current.identifier), label: {
                    Text("Amount")
                })
                .keyboardType(.decimalPad)
            }
            
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.identifier))
            }
            
        }
    }
}

#Preview {
    ContentView()
}
