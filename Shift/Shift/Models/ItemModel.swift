//
//  ItemModel.swift
//  Shift
//
//  Created by Hassan Shakeel on 28/06/2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
