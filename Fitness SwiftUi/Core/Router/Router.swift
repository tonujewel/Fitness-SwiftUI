//
//  Router.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//


import SwiftUI
internal import Combine

@MainActor
final class Router: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var root: AppRoute = .onBoarding // ✅ Track root route
    
    func push(_ route: AppRoute) {
        path.append(route)
    }
    
    func replace(with route: AppRoute) {
        root = route // ✅ Change the root
        path = NavigationPath() // Clear the stack
    }
    
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    func reset() {
        path = NavigationPath()
    }
}
