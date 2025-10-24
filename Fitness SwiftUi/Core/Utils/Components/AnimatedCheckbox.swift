//
//  AnimatedCheckbox.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct AnimatedCheckbox: View {
    @Binding var isChecked: Bool
    var boxSize: CGFloat = 24
    var checkmarkSize: CGFloat = 16
    var cornerRadius: CGFloat = 4
    var strokeWidth: CGFloat = 2
    var checkedColor: Color = .blue
    var uncheckedColor: Color = .gray
    var animationDuration: Double = 0.2
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: animationDuration)) {
                isChecked.toggle()
            }
        }) {
            ZStack {
                // Unchecked state - just the border
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(isChecked ? checkedColor : uncheckedColor, lineWidth: strokeWidth)
                    .frame(width: boxSize, height: boxSize)
                
                // Checked state - filled background with checkmark
                if isChecked {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(checkedColor)
                        .frame(width: boxSize, height: boxSize)
                        .transition(.scale.combined(with: .opacity))
                    
                    Image(systemName: "checkmark")
                        .font(.system(size: checkmarkSize, weight: .bold))
                        .foregroundColor(.white)
                        .transition(.scale.combined(with: .opacity))
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
