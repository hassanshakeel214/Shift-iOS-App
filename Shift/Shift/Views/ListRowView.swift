//
//  ListRowView.swift
//  Shift
//
//  Created by Hassan Shakeel on 28/06/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Text(item.isCompleted ? "✅" : "❌")
                //.foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
                
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "firstitem", isCompleted: false)
    static var item2 = ItemModel(title: "seconditem", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
