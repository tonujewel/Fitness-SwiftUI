//
//  OnBoarding.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct OnBoarding: View {
    
    @State private var selectedTab = 0
    @State private var animate = false
    
    // MARK: - Data
    private let items: [OnBoardingItem] = [
        OnBoardingItem(
            title: "Track Your Goal",
            subtitle: "Don't worry if you have trouble determining your goals. We can help you determine your goals and track your goals.",
            imageName: "onboard_img_0",
            background: AnyView(OnBoardBg0().fill(primaryGradient))
        ),
        OnBoardingItem(
            title: "Get Burn",
            subtitle: "Let’s keep burning to achieve your goals. It hurts only temporarily, but giving up lasts forever.",
            imageName: "onboard_img_1",
            background: AnyView(OnBoardBg1().fill(primaryGradient))
        ),
        OnBoardingItem(
            title: "Eat Healthy",
            subtitle: "Maintain a balanced diet to help you stay fit and strong every day. You can do it!",
            imageName: "onboard_img_2",
            background: AnyView(OnBoardBg2().fill(primaryGradient))
        ),
        OnBoardingItem(
            title: "Improve Sleep",
            subtitle: "Quality sleep is the key to a healthy life. Let’s help you build the best sleeping habit.",
            imageName: "onboard_img_3",
            background: AnyView(OnBoardBg3().fill(primaryGradient))
        )
    ]
    
    var body: some View {
        
        @EnvironmentObject var router: Router
        
        GeometryReader { size in
            ZStack(alignment: .bottomTrailing) {
                
                // MARK: - TabView
                TabView(selection: $selectedTab) {
                    ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                        VStack {
                            ZStack(alignment: .bottom) {
                                item.background
                                
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: (size.size.height / 2) - 120)
                                    .opacity(animate ? 1 : 0)
                                    .offset(y: animate ? 0 : 40)
                                    .animation(.easeOut(duration: 0.6).delay(0.1), value: animate)
                            }
                            .frame(height: size.size.height / 2)
                            
                            VStack(alignment: .leading, spacing: 12) {
                                Text(item.title)
                                    .font(Font.custom("Poppins", size: 24).weight(.bold))
                                    .foregroundColor(Color(red: 0.12, green: 0.09, blue: 0.09))
                                    .opacity(animate ? 1 : 0)
                                    .offset(y: animate ? 0 : 20)
                                    .animation(.easeOut(duration: 0.5).delay(0.3), value: animate)
                                
                                Text(item.subtitle)
                                    .font(Font.custom("Poppins", size: 14))
                                    .foregroundColor(Color(red: 0.72, green: 0.71, blue: 0.76))
                                    .opacity(animate ? 1 : 0)
                                    .offset(y: animate ? 0 : 20)
                                    .animation(.easeOut(duration: 0.5).delay(0.45), value: animate)
                            }
                            .padding(.top, 20)
                            .padding(.horizontal, 16)
                            
                            Spacer()
                        }
                        .tag(index)
                        .onAppear {
                            // Trigger animation when page appears
                            withAnimation {
                                animate = false
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                                withAnimation {
                                    animate = true
                                }
                            }
                        }
                        .ignoresSafeArea()
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .ignoresSafeArea()
                
                // MARK: - Bottom Left Progress Button
                CircularProgressView(totalItems: items.count, selectedIndex: selectedTab + 1)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            if selectedTab < items.count - 1 {
                                selectedTab += 1
                            } else {
                                print("🎉 Onboarding Finished")
                                router.push(.register)
                            }
                        }
                    }
                    .padding(.trailing, 24)
                    .padding(.bottom, 40)
            }
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}



// MARK: -
import SwiftUI

struct CircularProgressView: View {
    let totalItems: Int
    let selectedIndex: Int
    
    private var progress: Double {
        Double(selectedIndex) / Double(totalItems)
    }
    
    var body: some View {
        ZStack {
            // MARK: - Outer Circle (Progress Line)
            Circle()
                .trim(from: 0, to: CGFloat(progress))
                .stroke(
                    primaryGradient,
                    style: StrokeStyle(lineWidth: 2, lineCap: .round)
                )
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 70)
                .animation(.easeInOut(duration: 0.4), value: progress)
            
            // MARK: - Inner Circle (Gradient Fill)
            Circle()
                .fill(
                    primaryGradient
                )
                .frame(width: 60, height: 60)
                .shadow(radius: 4)
            
            if selectedIndex == totalItems {
                Text("Jewel")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.white)
            } else {
                // Optional: Label or icon
                Text("\(Int(progress * 100))%")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.white)
            }
            
        }
        .ignoresSafeArea()
    }
}


#Preview {
    OnBoarding()
}
