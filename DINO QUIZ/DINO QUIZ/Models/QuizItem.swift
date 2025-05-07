//
//  QuizItem.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/07.
//

import SwiftUI

struct QuizItem {
    let question: String
    var questionImage: Image? = nil
    var choices: [String]
    let correctAnswer: String
}
