//
//  ContentView.swift
//  iOS16
//
//  Created by TheGIZzz on 10/2/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var selectedMenu: Menu = .compass
    @GestureState var press = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, transaction in
                gestureState = currentState
            }
            .onEnded { value in
                showMenu = true
            }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            
            switch selectedMenu {
            case .compass:
                MessageView()
            case .card:
                Text("Card")
            case .charts:
                Text("Charts")
            case .radial:
                Text("Radial")
            case .halfsheet:
                Text("Half Sheet")
            case .gooey:
                Text("Gooey")
            case .actionbutton:
                Text("Action Button")
            }
        }
        .gesture(longPress)
        .sheet(isPresented: $showMenu) {
            MenuView(selectedMenu: $selectedMenu)
                .presentationDetents([.medium, .large])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
