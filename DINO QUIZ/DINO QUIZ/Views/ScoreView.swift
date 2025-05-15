//
//  ScoreView.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI

struct ScoreView: View {
    let scoreText: String
    @State private var hasWatchedAd = false  // ✅ 広告視聴状態
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(scoreText)
                .font(.system(size: 40).bold())
                .foregroundStyle(.originalBlack)
                .stroke(color: .originalSkin, width: 5)
            
            Spacer()
            
            // ✅ 広告視聴ボタン（状態連携）
            RewardAdButton(hasWatchedAd: $hasWatchedAd)
            
            Spacer()
            
            // ✅ 広告視聴後にのみ戻るボタン表示
            if hasWatchedAd {
                Button {
                    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                    windowScene?.windows.first?.rootViewController?.dismiss(animated: true)
                } label: {
                    Image(.topButton)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                }
            } else {
                Text("広告を視聴するとトップに戻れます")
                    .foregroundColor(.gray)
                    .padding()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundImage2()
    }
}

#Preview {
    ScoreView(scoreText: "正解数：8 / 10")
}
