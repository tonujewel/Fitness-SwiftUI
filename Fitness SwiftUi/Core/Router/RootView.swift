//
//  RootView.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI


struct RootView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        NavigationStack(path: $router.path) {
            rootView(for: router.root)
                .navigationDestination(for: AppRoute.self) { route in
                    destinationView(for: route)
                }
        }
    }
    
    @ViewBuilder
    private func rootView(for route: AppRoute) -> some View {
        switch route {
        case .onBoarding:
            OnBoarding()
        case .login:
            LoginView()
            
        case .register:
            RegisterView()
        case .completeProfile:
            CompleteProfileView()
        case .successRegistration:
            SuccessRegistrationView()
        case .fitnessGoal:
            FitnessGoalView()
            //        case .employee:
            //            EmployeeListView()
            
        }
    }
    
    @ViewBuilder
    private func destinationView(for route: AppRoute) -> some View {
        switch route {
        case .onBoarding:
            OnBoarding()
        case .login:
            LoginView()
        case .register:
            RegisterView()
        case .completeProfile:
            CompleteProfileView()
        case .successRegistration:
            SuccessRegistrationView()
        case .fitnessGoal:
            FitnessGoalView()
            //        case .employee:
            //            EmployeeListView()
        }
    }
}
