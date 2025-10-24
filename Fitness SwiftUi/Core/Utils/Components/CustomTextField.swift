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

struct CustomDropDownButton: View {
    
    var text: String
    var placeholder: String
    var iconName: String
    var onTap: () -> Void
    
    var body: some View {
        HStack(spacing: 10) {
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(Color(hex: "#A5A3B0"))
            
            Text(text.isEmpty ? placeholder : text)
                .font(Font.custom("Poppins", size: 14))
                .foregroundColor(Color(hex: text.isEmpty ? "#A5A3B0" : "#000000"))
            
            Spacer()
            
            Image("down_arrow")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(Color(hex: "#A5A3B0"))
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 16)
        .background(Color(hex: "#F7F8F8"))
        .cornerRadius(12)
        .onTapGesture {
            onTap()
        }
    }
}

struct CustomDatePickerButton: View {
    
    var selectedDate: Date
    var placeholder: String
    var onTap: () -> Void
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        HStack(spacing: 10) {
            Image("calendar")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(Color(hex: "#A5A3B0"))
            
            Text(dateFormatter.string(from: selectedDate))
                .font(Font.custom("Poppins", size: 14))
                .foregroundColor(Color(hex: "#000000"))
            
            Spacer()
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 16)
        .background(Color(hex: "#F7F8F8"))
        .cornerRadius(12)
        .onTapGesture {
            onTap()
        }
    }
}
