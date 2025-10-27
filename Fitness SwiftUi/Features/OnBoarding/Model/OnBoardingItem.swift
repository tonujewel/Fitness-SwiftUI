//
//  OnBoardingItem.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import Foundation
import SwiftUI

struct OnBoardingItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
    let background: AnyView
}


struct FitnessGoalModel: Identifiable {
    
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
}
