//
//  InformationSection.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 20.03.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

struct InformationSection: View {
    @State var engine = false
    @State var climate = false
    @State var tires = false
    
    var body: some View {
        HStack(spacing: 10) {
            PowerEngineButton(engine: $engine)
            
            ClimateButton(climate: $climate)
            
            Button(action: {
                self.tires.toggle()
            }) {
                ZStack {
                    
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1628728348, green: 0.178205691, blue: 0.1978395293, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 180, height: 180)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: tires == false ? Color(#colorLiteral(red: 0.07670026277, green: 0.09023468978, blue: 0.07500346246, alpha: 1)): Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)), radius: 4, x: 0, y: 0)
                    
                    Image(systemName: tires == false ? "arrowtriangle.down.circle" : "arrowtriangle.up.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .foregroundColor(tires == false ? .gray : Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)))
                    
                    VStack {
                        
                        Spacer()
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Tires")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                if tires == false {
                                    Text("Low Pressure")
                                        .lineLimit(1)
                                        .foregroundColor(.gray)
                                } else {
                                    Text("High Pressure")
                                        .lineLimit(1)
                                        .foregroundColor(Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)))
                                }
                            }
                            Spacer()
                        }
                    }
                    .padding()
                    .frame(width: 180, height: 180)
                }
            }
        }
    }
}

struct InformationSection_Previews: PreviewProvider {
    static var previews: some View {
        InformationSection()
    }
}


struct PowerEngineButton: View {
    @Binding var engine: Bool
    
    var body: some View {
        Button(action: {
            self.engine.toggle()
        }) {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1628728348, green: 0.178205691, blue: 0.1978395293, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 180, height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: engine == false ? Color(#colorLiteral(red: 0.07670026277, green: 0.09023468978, blue: 0.07500346246, alpha: 1)): Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)), radius: 4, x: 0, y: 0)
                
                Image(systemName: "power")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .foregroundColor(engine == false ? .gray : Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)))
                
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Engine")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            if engine == false {
                                Text("Sleeping Mode")
                                    .lineLimit(1)
                                    .foregroundColor(.gray)
                            } else {
                                Text("Ready to Drive")
                                    .lineLimit(1)
                                    .foregroundColor(Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)))
                            }
                        }
                        Spacer()
                    }
                }
                .padding()
                .frame(width: 180, height: 180)
            }
        }
    }
}

struct ClimateButton: View {
    @Binding var climate: Bool
    
    var body: some View {
        Button(action: {
            self.climate.toggle()
        }) {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1628728348, green: 0.178205691, blue: 0.1978395293, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 180, height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: climate == false ? Color(#colorLiteral(red: 0.07670026277, green: 0.09023468978, blue: 0.07500346246, alpha: 1)): Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)), radius: 4, x: 0, y: 0)
                
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .foregroundColor(climate == false ? .gray : Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)))
                
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Climate")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            if climate == false {
                                Text("A/C is OFF")
                                    .lineLimit(1)
                                    .foregroundColor(.gray)
                            } else {
                                Text("A/C is ON")
                                    .lineLimit(1)
                                    .foregroundColor(Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)))
                            }
                        }
                        Spacer()
                    }
                }
                .padding()
                .frame(width: 180, height: 180)
            }
        }
    }
}
