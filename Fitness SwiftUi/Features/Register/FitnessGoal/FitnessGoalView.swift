//
//  FitnessGoalView.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 27/10/25.
//

import SwiftUI


struct FitnessGoalView: View {
    @State var scrollPosition : Int?
    
    private let items: [FitnessGoalModel] = [
        FitnessGoalModel(title: "Improve Shape", subtitle: "I have a low amount of body fat and need / want to build more muscle", imageName: "fitness_goal1"),
        FitnessGoalModel(title: "Lean & Tone", subtitle: "I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way", imageName: "fitness_goal2"),
        FitnessGoalModel(title: "Lose a Fat", subtitle: "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass", imageName: "fitness_goal3")
    ]
    
    
    
    var body: some View {
        
        
        GeometryReader { geometry in
            
            VStack{
                
                Text("What is your goal ?")
                    .font(Font.custom("Poppins", size: 20).weight(.bold))
                    .lineSpacing(30)
                    .foregroundColor(Color(red: 0.12, green: 0.09, blue: 0.09))
                
                Text("It will help us to choose a best program for you")
                    .font(Font.custom("Poppins", size: 12))
                    .lineSpacing(18)
                    .foregroundColor(Color(red: 0.48, green: 0.44, blue: 0.45))
                
                TabView {
                    
                    ForEach(0..<items.count, id: \.self) { index in
                        
                        let data = items[index]
                        
                        ZStack{
                            
                            
                            primaryGradient.ignoresSafeArea()
                            
                            VStack{
                                
                                Image(data.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: .infinity) // full width
                                    .frame(height: geometry.size.height * 0.5) // 10% of total height
                                    .clipped()
                                
                                Text(data.title)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 18, weight: .bold))
                                    .padding(.top)
                                
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 60, height: 2)
                                    .opacity(0.5)
                                
                                Text(data.subtitle)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 14, weight: .bold))
                                    .padding(.top)
                                
                                
                                Spacer()
                                
                            }
                            .padding()
                        }
                        .frame(height: geometry.size.height * 0.7)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding()
                        
                        
                        
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                
                
                
                GradientButton(title: "Confirm", action: {
                    
                })
            }
            .padding()
        }
        
        
    }
}

#Preview {
    FitnessGoalView()
}
