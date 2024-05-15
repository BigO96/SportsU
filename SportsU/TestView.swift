//
//  TestView.swift
//  SportsU
//
//  Created by Oscar Epp on 5/14/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var presentSideMenu: Bool

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentSideMenu.toggle()
                }) {
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                Spacer()
            }
            .padding()
            
            Spacer()
            Text("Home View")
            Spacer()
        }
    }
}

struct SideMenuView: View {
    @Binding var presentSideMenu: Bool

    var body: some View {
        VStack(alignment: .leading) {
            Button("Home") {
                presentSideMenu = false
            }
            .padding()
            Spacer()
        }
        .frame(width: 250)
        .background(Color.white)
        .border(Color.gray, width: 1)
    }
}

struct MainTabbedView: View {
    @State private var presentSideMenu = false

    var body: some View {
        ZStack {
            HomeView(presentSideMenu: $presentSideMenu)
            
            if presentSideMenu {
                SideMenuView(presentSideMenu: $presentSideMenu)
//                    .transition(.move(edge: .leading))
            }
        }
    }
}

#Preview{
    MainTabbedView()
}

import SwiftUI

struct SidebarNavigationView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Home View")) {
                    Label("Home", systemImage: "house")
                }
                NavigationLink(destination: Text("Settings View")) {
                    Label("Settings", systemImage: "gear")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Menu")

            Text("Select an item from the menu")
        }
    }
}

struct SidebarNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarNavigationView()
    }
}
