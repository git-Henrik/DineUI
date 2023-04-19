//
//  ContentView.swift
//  DineUI
//
//  Created by Davin Henrik on 4/15/23.
//

// NavigationStack = UINavigationController & UINavigationBar
// Moving between screens and the bar across the top.

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationStack {
            List {
                // Each section of the menu
                ForEach(menu) { section in
                    // replace list with section
                    // creates titles for each menu section
                    Section(section.name) {
                        // Each item in each section
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                // create item row for each item in section.
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                ItemDetail(item: item)
            }
            // title attached to the list not the NavStack.
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
