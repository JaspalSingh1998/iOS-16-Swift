//
//  KeyViews.swift
//  CalculatorWithAnimation
//
//  Created by Jaspal Singh on 2023-02-26.
//

import SwiftUI

struct KeyViews: View {
    
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    @State var changeColor = false
    
    let buttons: [[Keys]] = [
        [.clear, .negative, .percentage, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    var body: some View {
        VStack{
            Spacer()
            HStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(changeColor ? Color("Num").opacity(0.4) : Color.pink.opacity(0.2))
                    .scaleEffect(changeColor ? 1.5 : 1.0)
                    .frame(width: 350, height: 280)
                    .animation(Animation.easeInOut.speed(0.17).repeatForever(), value: changeColor)
                    .onAppear(perform: {
                        self.changeColor.toggle()
                    })
                    .overlay(Text(value)
                        .bold()
                        .font(.system(size: 100))
                        .foregroundColor(.black))
            }.padding()
            Text("Hello Goldy!")
        }
    }
}

struct KeyViews_Previews: PreviewProvider {
    static var previews: some View {
        KeyViews()
    }
}
