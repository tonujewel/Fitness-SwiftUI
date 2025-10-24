//
//  Fitness_SwiftUiApp.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

@main
struct Fitness_SwiftUiApp: App {
    
    @StateObject private var router = Router()

    
    init() {
        UIView.appearance().overrideUserInterfaceStyle = .light
        
        #if DEBUG
        UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
        #endif
    }
    
    var body: some Scene {
        WindowGroup {
            RootView() 
                .environmentObject(router)
                .preferredColorScheme(.light)
                .environment(\.font, .custom("Poppins-Regular", size: 14))

        }
    }
}
