//
//  SettingsView.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 20.03.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.gray)
                .frame(width: 50, height: 8)
                    
                Text("Settings")
                .foregroundColor(.white)
                
                Spacer()
            }.padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
