//
//  GradientButton.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct GradientButton: View {
    
    var title: String
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(buttonGradient)
                .clipShape(Capsule())
        }
        .buttonStyle(PlainButtonStyle())
    }
}

