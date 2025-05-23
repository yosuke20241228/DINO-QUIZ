//
//  ScoreView.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI

struct ScoreView: View {
    let scoreText: String
    let answerHistory: [AnswerRecord]
    @State private var isNavigatingToStart = false
    @State private var isNavigatingToLookback = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text(scoreText)
                    .font(.system(size: 40).bold())
                    .foregroundStyle(.originalBlack)
                    .stroke(color: .originalSkin, width: 5)
                
                Spacer()
                
                // ✅ 緑ボタン（広告視聴でStartへ）
                RewardAdButton(isNavigating: $isNavigatingToStart)
                    .navigationDestination(isPresented: $isNavigatingToStart) {
                        StartView()
                    }
                
                Spacer()
                
                // ✅ オレンジボタン（広告視聴でLookbackへ）
                RewardLaunchButton(isNavigatingToLookback: $isNavigatingToLookback)
                    .fullScreenCover(isPresented: $isNavigatingToLookback) {
                        LookbackView(records: answerHistory) {
                            isNavigatingToLookback = false
                        }
                    }
                
                Spacer()
            }
            .padding()
            .backgroundImage2()
        }
    }
}



#Preview {
    ScoreView(
        scoreText: "正解数：3 / 5",
        answerHistory: [
            AnswerRecord(
                question: "恐竜の名前は？",
                selectedAnswer: "ティラノサウルス",
                correctAnswer: "ティラノサウルス",
                isCorrect: true
            ),
            AnswerRecord(
                question: "日本の恐竜化石が多い県は？",
                selectedAnswer: "沖縄",
                correctAnswer: "福井",
                isCorrect: false
            )
        ]
    )
}
