//
//  ContentView.swift
//  CalculatorWithAnimation
//
//  Created by Jaspal Singh on 2023-02-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.pink.opacity(0.3), .purple.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            KeyViews()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
