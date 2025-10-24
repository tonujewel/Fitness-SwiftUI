//
//  RegisterView.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var fullName = ""
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isAccepted = false
    
    var body: some View {
        ScrollView{
            
            Text("Hey there,")
            Text("Create an Account")
                .font(Font.custom("Poppins", size: 20).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.12, green: 0.09, blue: 0.09))
            
            VStack(spacing: 16){
                
                CustomTextField(text: $fullName, placeholder: "Full Name")
                CustomTextField(text: $phoneNumber, placeholder: "Phone Number",iconName: "phone")
                CustomTextField(text: $email, placeholder: "Email",iconName: "message")
                CustomTextField(text: $password, placeholder: "Password",iconName: "lock")
                
                
                // Custom styled checkbox
                HStack( spacing: 16) {
                    AnimatedCheckbox(
                        isChecked: $isAccepted,
                        checkedColor: .purple,
                        uncheckedColor: .gray.opacity(0.5),
                        animationDuration: 0.3
                    )
                    
                    Text("By continuing you accept our Privacy Policy and Term of Use")
                        .foregroundColor(.primary)
                    
                }
                .padding(.top)
            }
            
            
            GradientButton(title: "Register"){
                print("Button Tapped")
            }
            .padding(.top, 60)
            
            HStack {
                // Left line
                Rectangle()
                    .fill(Color.gray.opacity(0.4))
                    .frame(height: 1)
                
                // Middle text
                Text("or")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.gray.opacity(0.8))
                    .padding(.horizontal, 8)
                
                // Right line
                Rectangle()
                    .fill(Color.gray.opacity(0.4))
                    .frame(height: 1)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            
            HStack {
                SocialButton(imagePath: "google", action: {})
                
                Spacer()
                    .frame(width: 20)
                
                SocialButton(imagePath: "fb",action: {})
            }
            .padding(.top, 20)
            
            
            HStack{
                Text("Already have an account?")
                Text("Login")
                    .bold()
                    .foregroundStyle(primaryGradient)
                    
            }.padding(.top, 20)
            
            // need to change image
            
            
            
            
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    RegisterView()
}
