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
        VStack {
            Button {
                selectedQuizData = QuizData.knowledgeQuestions
                isShowingQuizView = true
            } label: {
                Text("恐竜初級クイズ")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title.bold())
                    .background(Color.originalSkin)
                    .foregroundStyle(Color.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button {
                selectedQuizData = QuizData.tyuukyuuQuestions
                isShowingQuizView = true
            } label: {
                Text("恐竜中級クイズ")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title.bold())
                    .background(Color.originalSkin)
                    .foregroundStyle(Color.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button {
                selectedQuizData = QuizData.zyokyuuQuestions
                isShowingQuizView = true
            } label: {
                Text("恐竜上級クイズ")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title.bold())
                    .background(Color.originalSkin)
                    .foregroundStyle(Color.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
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

