//
//  SplashScreenView.swift
//  splash
//
//  Created by User on 2024-06-05.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack{
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width:100,height: 100)
            Text("Splash Screen")
                .font(.largeTitle)
                .padding()
        }
        .background(Color.white)
    }
}

