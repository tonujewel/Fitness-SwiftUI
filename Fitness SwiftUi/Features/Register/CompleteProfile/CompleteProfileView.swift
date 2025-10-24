//
//  CompleteProfileView.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct CompleteProfileView: View {
    
    @State private var animate = true
    
    @State private var birthDate = Date()
    @State private var gender = ""
    @State private var showDatePicker = false
    @State private var showGenderPicker = false
    
    @State private var email = ""
    @EnvironmentObject var router : Router

    
    var body: some View {
        
        GeometryReader{ size in
            
            VStack{
                
                VStack {
                    ZStack(alignment: .center) {
                        
                        CompleteProfileBg()
                            .fill(primaryGradient)
                        
                        Image("CompleteProfileImg")
                            .resizable()
                            .scaledToFit()
                            .frame(height: max(0, (size.size.height / 3)))
                            .opacity(animate ? 1 : 0)
                            .offset(y: animate ? 0 : 40)
                            .animation(.easeOut(duration: 0.6).delay(0.1), value: animate)
                    }
                    .frame(height: size.size.height / 3)
                    
                    VStack(alignment: .center, spacing: 12) {
                        Text("Let’s complete your profile")
                            .font(Font.custom("Poppins", size: 24).weight(.bold))
                            .foregroundColor(Color(red: 0.12, green: 0.09, blue: 0.09))
                            .opacity(animate ? 1 : 0)
                            .offset(y: animate ? 0 : 20)
                            .animation(.easeOut(duration: 0.5).delay(0.3), value: animate)
                        
                        Text("It will help us to know more about you!")
                            .font(Font.custom("Poppins", size: 14))
                            .foregroundColor(Color(red: 0.72, green: 0.71, blue: 0.76))
                            .opacity(animate ? 1 : 0)
                            .offset(y: animate ? 0 : 20)
                            .animation(.easeOut(duration: 0.5).delay(0.45), value: animate)
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 20)
                    
                    VStack(spacing: 16) {
                        
                        CustomDatePickerButton(
                            selectedDate: birthDate,
                            placeholder: "Birth Date"
                        ) {
                            showDatePicker = true
                        }
                        
                        CustomDropDownButton(
                            text: gender,
                            placeholder: "Gender",
                            iconName: "gender"
                        ) {
                            showGenderPicker = true
                        }
                        
                   

                        HStack(spacing: 16) {
                            CustomTextField(text: $email, placeholder: "Your Weight", iconName: "scale")
                            
                            Text("KG")
                                .font(Font.custom("Poppins", size: 12).weight(.medium))
                                .foregroundColor(.white)
                                .frame(width: 48, height: 48)
                                .background(primaryGradient) // Add background color
                                .cornerRadius(14)
                        }
                        
                        HStack(spacing: 16) {
                            CustomTextField(text: $email, placeholder: "Your Height", iconName: "height")
                            
                            Text("CM")
                                .font(Font.custom("Poppins", size: 12).weight(.medium))
                                .foregroundColor(.white)
                                .frame(width: 48, height: 48)
                                .background(primaryGradient) // Add background color
                                .cornerRadius(14)
                        }
                        
               
                        GradientButton(title: "Next"){
                            print("Next Button Tapped")
                            
                            router.push(.successRegistration)
                        }
                        .padding(.top, 30)
                        
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                .sheet(isPresented: $showDatePicker) {
                    DatePickerSheet(selectedDate: $birthDate, isPresented: $showDatePicker)
                        .presentationDetents([.medium])
                }
                .sheet(isPresented: $showGenderPicker) {
                    GenderPickerSheet(selectedGender: $gender, isPresented: $showGenderPicker)
                        .presentationDetents([.height(400)])
                }
            }
            
            
        }
        
    }
}


struct DatePickerSheet: View {
    @Binding var selectedDate: Date
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                DatePicker(
                    "",
                    selection: $selectedDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
                .padding()
                
                Button(action: {
                    isPresented = false
                }) {
                    Text("Done")
                        .font(Font.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Select Date")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

struct GenderPickerSheet: View {
    @Binding var selectedGender: String
    @Binding var isPresented: Bool
    
    let genderOptions = ["Male", "Female", "Other", "Prefer not to say"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(genderOptions, id: \.self) { option in
                    HStack {
                        Text(option)
                            .font(Font.custom("Poppins", size: 14))
                        
                        Spacer()
                        
                        if selectedGender == option {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedGender = option
                        isPresented = false
                    }
                }
            }
            .navigationTitle("Select Gender")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

#Preview {
    CompleteProfileView()
}
