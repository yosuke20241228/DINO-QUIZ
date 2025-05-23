//
//  LookbackView.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/22.
//

import SwiftUI

struct LookbackView: View {
    let records: [AnswerRecord]
    let onClose: () -> Void
    
    var body: some View {
        NavigationStack {
            content
                .navigationTitle("復習一覧")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("閉じる") {
                            onClose()
                        }
                    }
                }
        }
    }
    
    @ViewBuilder
    var content: some View {
        ScrollView {
            VStack(spacing: 24) {
                ForEach(records) { record in
                    singleQuestionView(for: record)
                }
            }
            .padding(.top)
        }
    }
    
    @ViewBuilder
    func singleQuestionView(for record: AnswerRecord) -> some View {
        VStack(spacing: 16) {
            Text(record.question)
                .font(.title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.originalLightGreen)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.originalBrown, lineWidth: 5)
                )
                .padding(.horizontal, 40)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text("あなたの答え：")
                        .font(.title2.bold())
                    Text(record.selectedAnswer)
                        .foregroundStyle(record.isCorrect ? .green : .red)
                }
                
                HStack {
                    Text("正解：")
                        .font(.title3.bold())
                    Text(record.correctAnswer)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 40)
        }
    }
}

#Preview {
    
}
