//
//  DineUIApp.swift
//  DineUI
//
//  Created by Davin Henrik on 4/15/23.
//

import SwiftUI

@main
struct DineUIApp: App {
    // make a new order object as app is launched
    // keep object alive entire lifetime of the program
    // pass into ContentView
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
