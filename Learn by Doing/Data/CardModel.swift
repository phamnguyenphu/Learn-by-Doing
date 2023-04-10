//
//  CardModel.swift
//  Learn by Doing
//
//  Created by Pham Nguyen Phu on 10/04/2023.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let imageName: String
    let callToAction: String
    let message: String
    let gradientColors: [Color]
}


