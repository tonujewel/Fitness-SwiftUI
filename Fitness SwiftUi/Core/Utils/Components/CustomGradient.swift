//
//  PrimaryGradientBackground.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI


// Define globally (outside any struct, or in a constants file)
let primaryGradient = LinearGradient(
    gradient: Gradient(colors: [
        Color(hex: "#EEA4CE") , // pinkish purple
        Color(hex: "#C150F6") // bright orange
    ]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing
)

// Define globally (outside any struct, or in a constants file)
let buttonGradient = LinearGradient(
    gradient: Gradient(colors: [
        Color(hex: "#6B50F6") , // pinkish purple
        Color(hex: "#CC8FED") // bright orange
    ]),
    startPoint: .leading,
    endPoint: .trailing
)
