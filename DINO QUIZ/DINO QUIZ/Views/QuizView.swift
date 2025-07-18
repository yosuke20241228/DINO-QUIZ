//
//  QuizView.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI

struct QuizView: View {
    @State private var currentQuestionIndex = 0
    @State private var correctCount = 0
    @State private var isShowingScoreView = false
    @State private var answerHistory: [AnswerRecord] = []
    
    @State private var isAnswerCorrect = false
    @State private var isShowingResultSymbol = false
    @State private var correctAnswerText: String? = nil
    
    @Binding var quizItems: [QuizItem]
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("問題番号: \(currentQuestionIndex + 1)/\(quizItems.count)")
                    .font(.headline)
                    .padding(10)
                    .background(Color.originalBrown)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Text(quizItems[currentQuestionIndex].question)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalLightGreen)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.originalBrown, lineWidth: 5)
                    )
                    .frame(maxHeight: .infinity)
                    .padding(.horizontal, 50)
                
                ForEach(quizItems[currentQuestionIndex].choices, id: \ .self) { choice in
                    Button {
                        let correct = choice == quizItems[currentQuestionIndex].correctAnswer
                        isAnswerCorrect = correct
                        correctAnswerText = correct ? nil : "正解は「\(quizItems[currentQuestionIndex].correctAnswer)」でした"
                        
                        if correct {
                            correctCount += 1
                        }
                        
                        answerHistory.append(AnswerRecord(
                            question: quizItems[currentQuestionIndex].question,
                            selectedAnswer: choice,
                            correctAnswer: quizItems[currentQuestionIndex].correctAnswer,
                            isCorrect: correct
                        ))
                        
                        isShowingResultSymbol = true
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                            isShowingResultSymbol = false
                            correctAnswerText = nil
                            
                            if currentQuestionIndex + 1 >= quizItems.count {
                                isShowingScoreView = true
                            } else {
                                currentQuestionIndex += 1
                            }
                        }
                    } label: {
                        Text(choice)
                            .font(.title.bold())
                            .foregroundStyle(Color.originalBrown)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color.originalSkin)
                            )
                            .padding(.horizontal, 20)
                    }
                }
            }
            .padding()
            
            // ○×表示
            if isShowingResultSymbol {
                Text(isAnswerCorrect ? "○" : "✗")
                    .font(.system(size: 1000))
                    .minimumScaleFactor(0.1)
                    .foregroundStyle(isAnswerCorrect ? .green : .red)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.5))
            }
            
            // 正解のテキスト表示
            if isShowingResultSymbol, let answerText = correctAnswerText {
                VStack {
                    Spacer()
                    Text(answerText)
                        .font(.title2)
                        .padding()
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                        .padding(.bottom, 60)
                }
                .transition(.opacity)
            }
        }
        .backgroundImage()
        .fullScreenCover(isPresented: $isShowingScoreView) {
            ScoreView(
                scoreText: "\(quizItems.count)問中\(correctCount)問正解！",
                answerHistory: answerHistory
            )
        }
    }
}


#Preview {
    QuizView(quizItems: .constant(QuizData.knowledgeQuestions))
}
