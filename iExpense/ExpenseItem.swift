//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Dom Bryan on 06/01/2022.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
