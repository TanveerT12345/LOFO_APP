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
                
                MapView()
                    .tabItem {
                        Label("Map", systemImage: "map.fill")
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
    
