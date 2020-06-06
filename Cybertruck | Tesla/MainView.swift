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
    @State var showSettings = false
    @State var showClimate = false
    
    @ObservedObject var data = CybertruckData()
    
    var body: some View {
        ZStack {
            //Background
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView() {
                VStack {
                    //Header starts here
                    TopSection(showSettings: $showSettings, showClimate: $showClimate)
                    //Header ends here
                    
                    Image("CybertruckMainView")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.frame(height: 220)
                        .frame(width: UIScreen.main.bounds.width - 40)
                    
                    //Status bar starts here
                    StatusSection()
                    //Status bar ends here
                    HStack {
                        Text("Information")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                    }.padding([.leading, .top])
                    
                    //Information section starts here
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack(alignment: .leading) {
                            InformationSection()
                        }.padding(.all)
                    }
                    //Information section ends here
                    
                    
                    TextField("Set the distance", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .keyboardType(.numberPad)
                    
                    Button(action: {
                        
                    }) {
                        Text("Button")
                    }
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
        MainView()
    }
}

struct TopSection: View {
    @Binding var showSettings: Bool
    @Binding var showClimate: Bool
    
    @ObservedObject var data = CybertruckData()
    var body: some View {
        HStack {
            //Command button starts here
            Button(action: {
                self.showClimate.toggle()
            }) {
                ZStack {
                    CircleButtonsShape()
                    Image(systemName: "command")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(#colorLiteral(red: 0.4980392157, green: 0.5176470588, blue: 0.537254902, alpha: 1)))
                }
            }
            .clipShape(Circle())
            .frame(width: 63, height: 63)
            .padding()
            .modifier(Shadows())
            
            //Command button ends here
            
            Spacer()
            
            //Custom name of Cybertruck starts here
            VStack {
                Text("Tesla")
                    .foregroundColor(Color.gray)
                
                Text(data.customCarName)
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
            }
            //Custom name of Cybertruck ends here
            
            Spacer()
            
            //User button starts here
            
            Button(action: {
                self.showSettings.toggle()
            }) {
                ZStack {
                    CircleButtonsShape()
                    
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(#colorLiteral(red: 0.4980392157, green: 0.5176470588, blue: 0.537254902, alpha: 1)))
                    
                }
                .clipShape(Circle())
                .frame(width: 63, height: 63)
                .padding()
                .modifier(Shadows())
            }.sheet(isPresented: $showSettings) {
                SettingsView()
            }
            //User button ends here
        }
    }
}

struct StatusSection: View {
    
    @ObservedObject var data = CybertruckData()
    
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
                        Text("\(data.chargePercent)%")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
//                        Text("\(cybertruckData.chargePercent)%")
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)
                    }
                }
                
                //range status
                HStack {
                    Image(systemName: "location.fill")
                        .foregroundColor(.gray)
                    VStack(alignment: .leading) {
                        Text("Range")
                            .foregroundColor(.gray)
                        Text("\(data.range) km")
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
                        Text("\(data.temperature)°C")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }.padding(.leading)
        }
    }
}
