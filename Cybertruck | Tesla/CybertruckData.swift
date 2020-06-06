//
//  CybertruckData.swift
//  Cybertruck | Tesla
//
//  Created by constantine kos on 11.04.2020.
//  Copyright © 2020 constantine kos. All rights reserved.
//

import Foundation


class CybertruckData: ObservableObject {
    @Published var chargePercent = 51
    @Published var customCarName = "Cybertruck"
    @Published var range = 297
    @Published var temperature: Int = 22
    @Published var climateToggle = false
    @Published var engineToggle = false
    @Published var tiresPressure = false
    
    
    func climateChangeToggle() {
        climateToggle.toggle()
    }
    
    func setDistance() -> Int {
        self.range
    }
    
    func setCarName() {
        self.customCarName = ""
    }
}
