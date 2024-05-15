//
//  ContentView.swift
//  SportsU
//
//  Created by Oscar Epp on 5/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ScheduleView()
                .tabItem {
                    Label("Athletics", systemImage: "football.fill")
                }
            ScheduleView()
                .tabItem {
                    Label("Something Else", systemImage: "house.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
