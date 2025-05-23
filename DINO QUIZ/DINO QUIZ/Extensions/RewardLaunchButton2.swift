//
//  RewardLaunchButton2.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/23.
//

import SwiftUI
import UIKit

struct RewardLaunchButton: View {
    @Binding var isNavigatingToLookback: Bool
    @StateObject var adViewModel = RewardAdViewModel()
    @State private var currentVC: UIViewController?
    
    var body: some View {
        Button {
            if let vc = currentVC {
                adViewModel.showAd(from: vc) {
                    isNavigatingToLookback = true
                }
            }
        } label: {
            Image(.launch)
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
