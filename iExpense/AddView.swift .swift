//
//  AddView.swift .swift
//  iExpense
//
//  Created by Dom Bryan on 06/01/2022.
//

import SwiftUI

struct AddView_swift_: View {
    @ObservedObject var expenses: Expenses
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .localCurrency)
                    .keyboardType(.decimalPad)
                    
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct AddView_swift__Previews: PreviewProvider {
    static var previews: some View {
        AddView_swift_(expenses: Expenses())
    }
}
