//
//  MainView.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 04.03.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            //Background
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                //Start Command button
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1)), Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 69, height: 69)
                        .clipShape(Circle())
                        .blur(radius: 8)
                    
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 63, height: 63)
                        .clipShape(Circle())
                    
                    Image(systemName: "command")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(#colorLiteral(red: 0.4980392157, green: 0.5176470588, blue: 0.537254902, alpha: 1)))
                    
                }
                .clipShape(Circle())
                .frame(width: 63, height: 63)
                .padding()
                .shadow(color: Color(#colorLiteral(red: 0.1215686275, green: 0.1411764706, blue: 0.1529411765, alpha: 1)), radius: 7, x: 7, y: 7)
                .shadow(color: Color(#colorLiteral(red: 0.2823529412, green: 0.3137254902, blue: 0.3411764706, alpha: 1)), radius: 7, x: -7, y: -7)
                //End Command button
                
                Spacer()
                
                VStack {
                    Text("Tesla")
                    .foregroundColor(Color.gray)
                    
                    Text("Cybertruck")
                    .foregroundColor(Color.white)
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                //Start User button
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1)), Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 69, height: 69)
                        .clipShape(Circle())
                        .blur(radius: 8)
                    
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 63, height: 63)
                        .clipShape(Circle())
                    
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(#colorLiteral(red: 0.4980392157, green: 0.5176470588, blue: 0.537254902, alpha: 1)))
                    
                }
                .clipShape(Circle())
                .frame(width: 63, height: 63)
                .padding()
                .shadow(color: Color(#colorLiteral(red: 0.1215686275, green: 0.1411764706, blue: 0.1529411765, alpha: 1)), radius: 7, x: 7, y: 7)
                .shadow(color: Color(#colorLiteral(red: 0.2823529412, green: 0.3137254902, blue: 0.3411764706, alpha: 1)), radius: 7, x: -7, y: -7)
                //End User button
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
