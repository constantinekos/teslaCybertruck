//
//  UserProfileView.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 08.04.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

struct UserProfileView: View {
    @State var guestEmail = ""
    @State var secretToken = ""
    @State var showToken = false
    
    var body: some View {
        VStack(alignment: .center) {
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.gray)
                .frame(width: 50, height: 8)
            
            Text("Guest Mode")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
            
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Email")
                        .foregroundColor(.white)
                    
                    TextField("  Enter your Email", text: self.$guestEmail)
                        .frame(width: 350, height: 50)
                        .background(Color.gray)
                        .cornerRadius(5)
                }
            }.padding(.top)
            
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 10) {
                    
                    HStack {
                        Text("Secret Token")
                            .foregroundColor(.white)
                        Spacer()
                        
                        Button(action: {
                            self.showToken.toggle()
                        }) {
                            showToken ? Image(systemName: "eye.slash.fill") :
                                Image(systemName: "eye.fill")
                        }.foregroundColor(Color(#colorLiteral(red: 0.06666666667, green: 0.6588235294, blue: 0.9921568627, alpha: 1)))
                        
                        
                    }.frame(width: 350)
                    
                    if showToken == false {
                        SecureField("  Enter your Secret Token", text: $secretToken)
                            .frame(width: 350, height: 50)
                            .background(Color.gray)
                            .cornerRadius(5)
                    } else {
                        TextField("  Enter your Secret Token", text: $secretToken)
                            .frame(width: 350, height: 50)
                            .background(Color.gray)
                            .cornerRadius(5)
                    }
                }
            }.padding(.top)
            
            Text("Check your email to find the invite mail from the owner, enter the Secret Token from the mail. \nHave a trouble? Write to us.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()
            
            
            Spacer()
        }.padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2078431373, green: 0.2274509804, blue: 0.2509803922, alpha: 1)), Color(#colorLiteral(red: 0.0862745098, green: 0.09019607843, blue: 0.1058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
