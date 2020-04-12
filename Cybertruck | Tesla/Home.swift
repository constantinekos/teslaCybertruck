//
//  Home.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 03.03.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State private var showMainView = false
    @State private var showSettings = false
    
    var body: some View {
        
        ZStack {
            if showMainView {
                MainView(cybertruckData: CybertruckData())
            } else {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    SettingsButton(showSettings: $showSettings)
                    
                    CarInfoSection(cybertruckData: CybertruckData())
                    
                    Spacer()
                    
                    OpenCarSection(showMainView: $showMainView)
                    
                }
                //GeometryReader { g in
                    HStack {
                        Spacer()
                        Image("teslaCybertruckCutted")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 220)
                            .offset(y: 60)
                    }
                //}
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct SettingsButton: View {
    @Binding var showSettings : Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            //Settings button starts here
            Button(action: {
                self.showSettings.toggle()
            }) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1)), Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 69, height: 69)
                        .clipShape(Circle())
                        .blur(radius: 8)
                    
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 63, height: 63)
                        .clipShape(Circle())
                    
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(#colorLiteral(red: 0.4980392157, green: 0.5176470588, blue: 0.537254902, alpha: 1)))
                    
                }
                .clipShape(Circle())
                .frame(width: 63, height: 63)
            }
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
        }.padding()
            .shadow(color: Color(#colorLiteral(red: 0.1215686275, green: 0.1411764706, blue: 0.1529411765, alpha: 1)), radius: 7, x: 7, y: 7)
            .shadow(color: Color(#colorLiteral(red: 0.2823529412, green: 0.3137254902, blue: 0.3411764706, alpha: 1)), radius: 7, x: -7, y: -7)
    }
}

struct CarInfoSection: View {
    let cybertruckData: CybertruckData
    
    var body: some View {
        VStack {
            Text("Tesla")
                .foregroundColor(Color(#colorLiteral(red: 0.4980392157, green: 0.5176470588, blue: 0.537254902, alpha: 1)))
            
            //Custom car name
            Text("Cybertruck")
                .font(.custom("Gilroy-Bold", size: 44))
                .foregroundColor(.white)
            
            //Distance/range
            HStack(alignment: .top, spacing: 10) {
                Text("\(cybertruckData.range)")
                    .font(.custom("Gilroy-UltraLight", size: 190))
                
                Text("km")
                    .font(.custom("Gilroy-Bold", size: 20))
            }
            .frame(height: 200)
            .padding(.top, 18.0)
            .foregroundColor(.white)
        }
    }
}

struct OpenCarSection: View {
    @Binding var showMainView : Bool
    
    var body: some View {
        VStack(spacing: 26) {
            Text("A/C is turned on")
                .foregroundColor(Color(#colorLiteral(red: 0.4980392157, green: 0.5176470588, blue: 0.537254902, alpha: 1)))
            
            //Unlock button starts here
            Button(action: {
                self.showMainView.toggle()
            }) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.368627451, blue: 0.6392156863, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .blur(radius: 2)
                    
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.368627451, blue: 0.6392156863, alpha: 1)), Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 94, height: 94)
                        .clipShape(Circle())
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 22, height: 28)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                .clipShape(Circle())
                .shadow(color: Color(#colorLiteral(red: 0.1215686275, green: 0.1411764706, blue: 0.1529411765, alpha: 1)), radius: 10, x: 10, y: 10)
                .shadow(color: Color(#colorLiteral(red: 0.1843137255, green: 0.2235294118, blue: 0.2392156863, alpha: 1)), radius: 10, x: -10, y: -10)
            }
            //Unlock button ends here

            Text("Tap to open the car")
                .foregroundColor(Color.white)
        }
    }
}
