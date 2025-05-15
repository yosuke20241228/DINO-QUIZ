//
//  RewardAdViewModel.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/12.
//

import SwiftUI
import GoogleMobileAds

class RewardAdViewModel: NSObject, ObservableObject, FullScreenContentDelegate {
    private var rewardedAd: RewardedAd?
    @Published var isAdReady = false
    
    override init() {
        super.init()
        loadRewardAd()
    }
    
    func loadRewardAd() {
        let request = Request()
        
        print("📡 広告ロード開始")
        RewardedAd.load(with: "ca-app-pub-3940256099942544/5224354917", request: request) { ad, error in
            if let error = error {
                print("❌ Ad load failed: \(error.localizedDescription)")
                return
            }
            
            print("✅ 広告ロード成功")
            self.rewardedAd = ad
            self.rewardedAd?.fullScreenContentDelegate = self
            self.isAdReady = true
        }
    }
    
    func showAd(from rootViewController: UIViewController, onReward: @escaping () -> Void) {
        guard let ad = rewardedAd else {
            print("⚠️ 広告が準備できていません")
            return
        }
        
        print("📢 広告を表示します")
        self.isAdReady = false
        
        ad.present(from: rootViewController, userDidEarnRewardHandler: {
            let reward = ad.adReward
            print("🎉 報酬獲得！\(reward.amount) \(reward.type)")
            onReward()
            self.loadRewardAd()
        })
    }
    
    @objc func adDidDismissFullScreenContent(_ ad: FullScreenPresentingAd) {
        print("🔄 広告が閉じられました。次の読み込みを開始します")
        loadRewardAd()
    }
}
