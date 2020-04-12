//
//  ClimateSettingsView.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 08.04.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

struct ClimateSettingsView: View {
    @State var turnOnOff = false
    
    var body: some View {
            
            VStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.gray)
                    .frame(width: 50, height: 8)
                
                HStack {
                    VStack(alignment: .leading) {
                        if turnOnOff == false {
                            Text("A/C is OFF")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        } else {
                            Text("A/C is ON")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        }
                            
                        if turnOnOff == false {
                            Text("Tap to turn on or swipe up to fast setup")
                            .foregroundColor(.gray)
                        } else {
                            Text("Tap to turn off or swipe up to fast setup")
                            .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        self.turnOnOff.toggle()
                    }) {
                        ZStack {
                            if turnOnOff == false {
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1)), Color(#colorLiteral(red: 0.1694294086, green: 0.1843851715, blue: 0.207218495, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    .blur(radius: 20)
                                
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1945905718, green: 0.2129093372, blue: 0.2363666549, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .frame(width: 90, height: 90)
                                    .clipShape(Circle())

                            } else {
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.368627451, blue: 0.6392156863, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    .blur(radius: 2)

                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.368627451, blue: 0.6392156863, alpha: 1)), Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .frame(width: 94, height: 94)
                                    .clipShape(Circle())
                            }


                            
                            
                            Image(systemName: "power")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                        }
                        .clipShape(Circle())
                        .shadow(color: Color(#colorLiteral(red: 0.1005997799, green: 0.1170285136, blue: 0.1281553262, alpha: 1)), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 0.1682983485, green: 0.2055572223, blue: 0.220199982, alpha: 1)), radius: 10, x: -10, y: -10)
                    }
                }
                Spacer()
            }.padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1368032383, green: 0.1496819014, blue: 0.166173127, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(40)
        .frame(height: 166)
                
    }
}

struct ClimateSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ClimateSettingsView()
    }
}
