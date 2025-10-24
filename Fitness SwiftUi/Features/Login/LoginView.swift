//
//  LoginView.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var fullName = ""
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var router : Router
    
    var body: some View {
        
        VStack{
            
            Text("Hey there,")
            Text("Welcome Back")
                .font(Font.custom("Poppins", size: 20).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.12, green: 0.09, blue: 0.09))
            
            VStack(spacing: 16){
                CustomTextField(text: $email, placeholder: "Email",iconName: "message")
                CustomTextField(text: $password, placeholder: "Password",iconName: "lock")
                Text("Forgot your password?")
                
            }
            Spacer()
            
            GradientButton(title: "Login"){
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
                Text("Don’t have an account yet?")
                Text("Register")
                    .bold()
                    .foregroundStyle(primaryGradient)
                
            }
            .padding(.top, 20)
            .onTapGesture {
                router.push(.register)
            }
            
        }
        .padding(.horizontal, 16)
        
    }
}

#Preview {
    LoginView()
}
