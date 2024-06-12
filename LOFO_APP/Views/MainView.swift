//
//  ContentView.swift
//  LOFO_APP
//
//  Created by tsthethi on 5/14/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewVM()
    
    var body: some View {
        if viewModel.isSignedsIn, !viewModel.currentUserId.isEmpty {
            TabView {
                ForumView()
                    .tabItem {
                        Label("Forum", systemImage: "quote.bubble.fill")
                    }
                
                MapViewRepresentable()
                    .tabItem {
                        Label("Map", systemImage: "map.fill")
                    }
                    .edgesIgnoringSafeArea(.top)
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}
    
    #Preview {
        MainView()
    }
    
