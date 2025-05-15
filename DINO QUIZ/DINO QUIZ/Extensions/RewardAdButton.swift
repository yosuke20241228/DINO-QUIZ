//
//  RewardAdButton.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/16.
//

import SwiftUI
import UIKit
import GoogleMobileAds

struct RewardAdButton: View {
    @Binding var hasWatchedAd: Bool  // ✅ ScoreView側と状態連携
    @StateObject var adViewModel = RewardAdViewModel()
    
    var body: some View {
        Button("広告を見て報酬を得る") {
            if let root = UIApplication.shared.connectedScenes
                .compactMap({ $0 as? UIWindowScene })
                .first?.windows.first?.rootViewController {
                adViewModel.showAd(from: root) {
                    print("報酬ゲット！")
                    hasWatchedAd = true  // ✅ 状態更新
                }
            }
        }
        .disabled(!adViewModel.isAdReady)
        .padding()
        .background(adViewModel.isAdReady ? Color.green : Color.gray)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}
