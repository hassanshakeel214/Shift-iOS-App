//
//  ShiftApp.swift
//  Shift
//
//  Created by Hassan Shakeel on 25/06/2022.
//

import SwiftUI

/*MVVM Architecture
  Model - data point
    view - UI
    viewmodel - managers models for view
 */

@main
struct ShiftApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
