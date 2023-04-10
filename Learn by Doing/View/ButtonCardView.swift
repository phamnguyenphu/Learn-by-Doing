//
//  ButtonCardView.swift
//  Learn by Doing
//
//  Created by Pham Nguyen Phu on 10/04/2023.
//

import SwiftUI

struct ButtonCardView: View {
    // MARK: - PROPERTY

    let buttonName: String
    let buttonColor: [Color]

    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)

    // MARK: - BODY

    var body: some View {
        Button {
            hapticImpact.impactOccurred()
        } label: {
            HStack {
                Text(buttonName.uppercased())
                    .fontWeight(.heavy)
                Image(systemName: "arrow.right.circle")
                    .fontWeight(.medium)
            }
            .foregroundColor(.white)
            .padding(.vertical)
            .padding(.horizontal, 25)
            .background(.linearGradient(colors: buttonColor, startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
        }
    }
}

struct ButtonCardView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCardView(buttonName: cardData[0].callToAction, buttonColor: cardData[0].gradientColors)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
