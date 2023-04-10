//
//  CardView.swift
//  Learn by Doing
//
//  Created by Pham Nguyen Phu on 10/04/2023.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTY

    let card: Card

    // MARK: - BODY

    var body: some View {
        ZStack {
            Image(card.imageName)
                .resizable()
                .scaledToFit()

            VStack {
                Text(card.title)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                Text(card.headline)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .italic()
            }
            .offset(y: -218)

            ButtonCardView(buttonName: card.callToAction, buttonColor: card.gradientColors)
                .offset(y: 210)
                .shadow(color: Color("ColorShadow"), radius: 6, x: 2, y: 3)
        }
        .frame(width: 335, height: 545)
        .background(.linearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
