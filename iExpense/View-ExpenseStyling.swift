//
//  View-ExpenseStyling.swift
//  iExpense
//
//  Created by Dom Bryan on 09/01/2022.
//

import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return self.font(.body).foregroundColor(.green)
        } else if item.amount < 100 {
            return self.font(.title3).foregroundColor(.orange)
        } else {
            return self.font(.title).foregroundColor(.red)
        }
    }
}
