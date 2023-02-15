//
//  ContentView.swift
//  iOS16
//
//  Created by TheGIZzz on 10/2/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    
    var body: some View {
        Button("Show Menu") {
            showMenu = true
        }
        .sheet(isPresented: $showMenu) {
            NavigationStackView()
                .presentationDetents([.medium, .large])
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
