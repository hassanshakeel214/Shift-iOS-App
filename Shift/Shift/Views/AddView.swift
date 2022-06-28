//
//  AddView.swift
//  Shift
//
//  Created by Hassan Shakeel on 28/06/2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    //@State var howImportant: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Create new task", text: $textFieldText)
                    .foregroundColor(.black)
                    .font(.body)
                    .frame(height: 90)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                //GroupBox {
                    //DisclosureGroup("How Important?", isExpanded: $howImportant) {
                        //NavigationLink("Must", destination: ListView())
                        //Text("Should")
                        //Text("Could")
                    //}
                    //.padding(14)
                    //.frame(height: 55)
                    //.cornerRadius(10)
                //}
                    
                
                Button(action: saveButton, label: {
                    Text("Save" .uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding(14)
                //.background()
                })
        }
        .navigationTitle("Add Item 🖋")
        .alert(isPresented: $showAlert, content: getAlert)
            
    }
}
    func saveButton() {
        if textIsAppropriate() == true {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }

    }
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Too short 😐"
            showAlert.toggle()
            return false
        }
         return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddView()
            }
        .environmentObject(ListViewModel())
        }
    }
}
