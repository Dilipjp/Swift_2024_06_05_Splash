//
//  ContentView.swift
//  splash
//
//  Created by User on 2024-06-05.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplashScreen = true
    
    var body: some View {
        ZStack{
            MainContentView()
                .opacity(showSplashScreen ? 0 : 1)
            if showSplashScreen{
                SplashScreenView()
                    .transition(.opacity)
            }
        }
        .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            showSplashScreen = false
                        }
                    }
                }
    }
}

#Preview {
    ContentView()
}
