//
//  AnswerRecord.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/22.
//
import Foundation

struct AnswerRecord: Identifiable {
    let id = UUID()
    let question: String
    let selectedAnswer: String
    let correctAnswer: String
    let isCorrect: Bool
}
