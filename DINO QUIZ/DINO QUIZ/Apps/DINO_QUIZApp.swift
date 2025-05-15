//
//  DINO_QUIZApp.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI
import GoogleMobileAds

@main
struct DINO_QUIZApp: App {
    init() {
        MobileAds.shared.start(completionHandler: { _ in })
    }
    
    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}
