//
//  InformationSection.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 20.03.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import SwiftUI

struct InformationSection: View {
    var body: some View {
        //ScrollView(.horizontal) {
        ZStack {
            
            RoundedRectangle(cornerRadius: 16, style: .continuous)
            .fill(Color.gray)
            .frame(width: 180, height: 180)
            
            VStack(alignment: .leading) {
                Circle()
                .fill(Color.blue)
                .frame(width: 16, height: 16)
                
                Spacer()
                VStack(alignment: .leading) {
                    Text("Engine")
                    Text("Sleeping Mode")
                    .lineLimit(1)
                }
            }
            .padding()
            .frame(width: 180, height: 180)
            
        }
    }
}

struct InformationSection_Previews: PreviewProvider {
    static var previews: some View {
        InformationSection()
    }
}
