//
//  DetailView.swift
//  ShoppingApp
//
//  Created by Jaspal Singh on 2023-03-07.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corner: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct DetailView: View {
    @State var fruit: fruitTitle
    var body: some View {
        VStack(alignment: .leading,spacing: 25) {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape(corner: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: .orange)
    }
}
