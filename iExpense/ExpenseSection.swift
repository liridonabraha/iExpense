//
//  ExpenseSection.swift
//  iExpense
//
//  Created by Dom Bryan on 09/01/2022.
//

import SwiftUI

struct ExpenseSection: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    
    var body: some View {
        Section(title) {
        ForEach(expenses) { item in
            HStack {
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.headline)
                    Text(item.type)
                }
                
                Spacer()
                
                Text(item.amount, format: .localCurrency)
                    .style(for: item)
                
            }
            .accessibilityElement()
            .accessibilityLabel("\(item.name), \(item.amount.formatted(.currency(code: "GBP")))")
            .accessibilityHint(item.type)
        }
        .onDelete(perform: deleteItems)
        }
    }
}

struct ExpenseSection_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseSection(title: "Example", expenses: []) { _ in }
    }
}
