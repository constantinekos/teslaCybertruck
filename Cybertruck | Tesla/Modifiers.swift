//
//  Modifiers.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 06.06.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

//SHADOWS OF CIRCLE BUTTONS
struct Shadows: ViewModifier {
    func body(content: Content) -> some View {
        content
        .shadow(color: Color(#colorLiteral(red: 0.1215686275, green: 0.1411764706, blue: 0.1529411765, alpha: 1)), radius: 7, x: 7, y: 7)
        .shadow(color: Color(#colorLiteral(red: 0.2823529412, green: 0.3137254902, blue: 0.3411764706, alpha: 1)), radius: 7, x: -7, y: -7)
    }
}


struct CircleButtonsShape: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1)), Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 69, height: 69)
                .clipShape(Circle())
                .blur(radius: 8)
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 63, height: 63)
                .clipShape(Circle())
        }
    }
}
