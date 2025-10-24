//
//  CustomTextField.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    var placeholder: String
    var iconName: String = "profile"
    
    var body: some View {
        HStack(spacing: 10) {
            
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 24,height: 24)
                .foregroundColor(Color(hex: "#A5A3B0"))
            
            TextField(placeholder,text: $text)
                .font(Font.custom("Poppins", size: 14))
                .foregroundColor(Color(hex: "#A5A3B0"))
                .disableAutocorrection(true)
                .textInputAutocapitalization(.none)
        }
        .padding(.horizontal,14)
        .padding(.vertical,16)
        .background(Color(hex: "#F7F8F8"))
        .cornerRadius(12)
     
    }
}



