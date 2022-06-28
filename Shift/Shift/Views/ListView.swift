//
//  ListView.swift
//  Shift
//
//  Created by Hassan Shakeel on 28/06/2022.
//

import SwiftUI

struct ListView: View {
    
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
               ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        //.listStyle(PlainListStyle())
        .navigationTitle("Must 🟥")
        .navigationBarItems(
        leading: EditButton(),
        trailing: NavigationLink("Add", destination: AddView())
         )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}

