//
//  ContentView.swift
//  WeatherDummy
//
//  Created by Anuja Dilrukshi on 2023-02-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
                Label("Home", systemImage: "house.fill")
            }

            SearchView().tabItem {
                Label("Search", systemImage: "magnifyingglass.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
