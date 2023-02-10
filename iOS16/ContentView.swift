//
//  ContentView.swift
//  iOS16
//
//  Created by TheGIZzz on 10/2/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: 0.2)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.system(size: 50))
                .fontWeight(.bold)
            Text("Switching Apps")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
            Button {
                
            } label: {
                Text("Got it")
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                    )
            }
            .accentColor(.primary)
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke()
        )
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Image("Wallpaper 2"))
    }
}
