//
//  MainView.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 04.03.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI




struct MainView: View {
    @State var home = false
    @State var showUser = false
    @State var showClimate = false
    
    let cybertruckData: CybertruckData
    
    var body: some View {
        ZStack {
            //Background
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView() {
                VStack {
                    //Header starts here
                    TopSection(showUser: $showUser, showClimate: $showClimate)
                    //Header ends here
                    
                    Image("CybertruckMainView")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame( height: 220)
                    
                    //Status bar starts here
                    StatusSection(cybertruckData: CybertruckData())
                    //Status bar ends here
                    HStack {
                        Text("Information")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                    }.padding([.leading, .top])
                    
                    //Information section starts here
                    ScrollView(.horizontal) {
                        VStack(alignment: .leading) {
                            InformationSection()
                        }.padding(.all)
                    }
                    //Information section ends here
                    
                    Spacer()
                }
            }
            
            //This section active after long press only
            //Climate 'show details' snippet starts here
            if showClimate == true {
                VStack {
                    Spacer()
                    ClimateSettingsView()
                        .animation(.spring())
                }.edgesIgnoringSafeArea(.bottom)
            }
            //Climate 'show details' snippet ends here
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(cybertruckData: CybertruckData())
    }
}

struct TopSection: View {
    @Binding var showUser: Bool
    @Binding var showClimate: Bool
    
    
    var body: some View {
        HStack {
            //Command button starts here
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
            .onLongPressGesture {
                self.showClimate.toggle()
            }
            //Command button ends here
            
            Spacer()
            
            //Custom name of Cybertruck starts here
            VStack {
                Text("Tesla")
                    .foregroundColor(Color.gray)
                
                Text("Cybertruck")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
            }
            //Custom name of Cybertruck ends here
            
            Spacer()
            
            //User button starts here
            
            Button(action: {
                self.showUser.toggle()
            }) {
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
            }.sheet(isPresented: $showUser) {
                UserProfileView()
            }
            //User button ends here
        }
    }
}

struct StatusSection: View {
    let cybertruckData: CybertruckData
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
            }.padding(.leading)
            
            HStack(spacing: 30) {
                HStack {
                    //battery status
                    Image(systemName: "battery.100")
                        .foregroundColor(.gray)
                    VStack(alignment: .leading) {
                        Text("Battery")
                            .foregroundColor(.gray)
                        Text("\(cybertruckData.chargePercent)%")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                
                //range status
                HStack {
                    Image(systemName: "location.fill")
                        .foregroundColor(.gray)
                    VStack(alignment: .leading) {
                        Text("Range")
                            .foregroundColor(.gray)
                        Text("\(cybertruckData.range) km")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                
                //temperture status
                HStack {
                    Image(systemName: "thermometer")
                        .foregroundColor(.gray)
                    VStack(alignment: .leading) {
                        Text("Temperture")
                            .foregroundColor(.gray)
                        Text("\(cybertruckData.temperature)°C")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }.padding(.leading)
        }
    }
}
