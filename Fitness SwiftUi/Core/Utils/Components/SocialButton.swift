//
//  SocialButton.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct SocialButton: View {
    var imagePath: String
    var action: () -> Void
    
    var body: some View {
            Button(action: action) {
                Image(imagePath) // 👈 Your Google icon image asset
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                    .padding(14) // inner padding for balance
            }
            .frame(width: 60, height: 60)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12 )) // or RoundedRectangle(cornerRadius: 30)
            .overlay(
                RoundedRectangle(cornerRadius: 12 ).stroke(Color.gray.opacity(0.5), lineWidth: 1) // 👈 Grey border
            )
            .shadow(color: Color.black.opacity(0.05), radius: 3, x: 0, y: 2)
        }
}

#Preview {
    SocialButton(imagePath: "Google") {
        //
    }
}
