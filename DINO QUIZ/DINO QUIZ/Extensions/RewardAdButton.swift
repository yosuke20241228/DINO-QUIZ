//
//  RewardAdButton.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/16.
//

import SwiftUI
import UIKit

struct RewardAdButton: View {
    @Binding var isNavigating: Bool
    @StateObject var adViewModel = RewardAdViewModel()
    @State private var currentVC: UIViewController?
    
    var body: some View {
        Button {
            if let vc = currentVC {
                adViewModel.showAd(from: vc) {
                    isNavigating = true
                }
            }
        } label: {
            Image(.topButton)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
        }
        .disabled(!adViewModel.isAdReady)
        .padding()
        .background(adViewModel.isAdReady ? Color.green : Color.gray)
        .cornerRadius(10)
        .getHostingController { vc in
            self.currentVC = vc
        }
    }
}
