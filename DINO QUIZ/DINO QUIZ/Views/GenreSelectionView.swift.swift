//
//  GenreSelectionView.swift.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/07.
//

import SwiftUI

struct GenreSelectionView: View {
    @State var isShowingQuizView = false
    @State var selectedQuizData: [QuizItem] = []
    
    var body: some View {
        VStack(spacing: 20) {
            // 初級
            Button {
                selectedQuizData = QuizData.knowledgeQuestions
                isShowingQuizView = true
            } label: {
                Text("恐竜初級\nクイズ")
                    .font(.title.bold())
                    .foregroundStyle(Color.originalBrown)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.originalSkin)
                    )
                    .padding(.horizontal, 110)
            }
            
            // 中級
            Button {
                selectedQuizData = QuizData.tyuukyuuQuestions
                isShowingQuizView = true
            } label: {
                Text("恐竜中級\nクイズ")
                    .font(.title.bold())
                    .foregroundStyle(Color.originalBrown)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.originalSkin)
                    )
                    .padding(.horizontal, 110)
            }
            
            // 上級
            Button {
                selectedQuizData = QuizData.zyokyuuQuestions
                isShowingQuizView = true
            } label: {
                Text("恐竜上級\nクイズ")
                    .font(.title.bold())
                    .foregroundStyle(Color.originalBrown)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.originalSkin)
                    )
                    .padding(.horizontal, 110)
            }
        }
        .padding()
        .backgroundImage()
        .fullScreenCover(isPresented: $isShowingQuizView) {
            QuizView(quizItems: $selectedQuizData)
        }
    }
}

#Preview {
    GenreSelectionView()
}

