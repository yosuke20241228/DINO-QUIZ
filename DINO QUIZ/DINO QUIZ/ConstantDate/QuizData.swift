//
//  QuizData.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI

struct QuizData {
    static let knowledgeQuestions: [QuizItem] = [
        QuizItem(
            question:  "ステゴサウルスの背中の板はなんのためにあった？",
            choices: ["体温調節", "武器", "翼", "鎧"],
            correctAnswer: "体温調節"
        ),
        QuizItem(
            question: "日本で一番多く正式な名前がついた恐竜が見つかっている県はどこか？",
            choices: ["福井", "大阪", "福岡", "沖縄"],
            correctAnswer: "福井"
        ),
        QuizItem(
            question: "恐竜がいた時代は今と比べるとどうだった？",
            choices: ["暖かい", "寒い", "変わらない", "ずっと雪が降っていた"],
            correctAnswer: "暖かい"
        ),
        QuizItem(
            question: "アジア最大級の肉食恐竜でティラノサウルスの仲間は",
            choices: ["タルボサウルス", "アロサウルス", "メガロサウルス", "ギガノトサウルス"],
            correctAnswer: "タルボサウルス"
        ),
        QuizItem(
            question: "世界で最初に発見された恐竜の化石は？",
            choices: ["ティラノサウルス", "ブラキオサウルス", "イグアノドン", "アンキロサウルス"],
            correctAnswer: "イグアノドン"
        )
    ]
    
    static let tyuukyuuQuestions: [QuizItem] = [
        QuizItem(
            question:  "恐竜の足跡から分からないことはなんでしょう？",
            choices: ["走行速度", "知能レベル", "体重", "体臭"],
            correctAnswer: "体臭"
        ),
        QuizItem(
            question: "シノサウロプテリクスの尾の模様は？",
            choices: ["白色一色", "オレンジ色一色", "オレンジ色と白色の縞模様", "青色と白色の縞模様"],
            correctAnswer:  "オレンジ色と白色の縞模様"
        ),
        QuizItem(
            question: "オスとメスの化石が並んで見つかったのは？",
            choices: ["オヴィラプトル", "ヴェロキラプトル", "シティパティ", "カーン"],
            correctAnswer: "カーン"
        ),
        QuizItem(
            question: "マプサウルスの狩りの方法は？",
            choices: ["待ち伏せ", "拳銃", "集団で追いかける", "空から襲う"],
            correctAnswer: "集団で追いかける"
        ),
        QuizItem(
            question: "植物の消化を助けるために飲み込んだ石をなんという？",
            choices: ["消化石", "食石", "胃石", "腸石"],
            correctAnswer: "胃石"
        )
    ]
    
    static let zyokyuuQuestions: [QuizItem] = [
        QuizItem(
            question: "次のうち、羽毛の化石が発見されていない恐竜は？",
            choices: ["シノサウロプテリクス", "ペイピャオサウルス", "アヴィミムス", "ティラノサウルス"],
            correctAnswer: "ティラノサウルス"
        ),
        QuizItem(
            question: "次のうち、最も近年に命名された恐竜は？",
            choices: ["メガロサウルス", "イグアノドン", "ヒラエオサウルス", "ズール"],
            correctAnswer: "ズール"
        ),
        QuizItem(
            question: "胃内の溶物や鱗や皮骨を覆う角質、そこに含まれる角質まで化石化していた『奇跡の恐竜』といわれる恐竜は？",
            choices: ["デイノニクス", "ブラキオサウルス", "マイアサウラ", "ボレアロペルタ"],
            correctAnswer: "ボレアロペルタ"
        ),
        QuizItem(
            question: "北アメリカで最も豊かなジュラ紀後期の恐竜化石産地は？",
            choices: ["モリソン層", "ヘルクリーク層", "ダイナソーパーク累層", "ゾルンフォーフェン"],
            correctAnswer: "モリソン層"
        ),
        QuizItem(
            question: "生物の遺骸が死後に堆積物に取り込まれるまでに過程を研究する分野をなんという？",
            choices: ["タフォノミー", "ラガシュテッテン", "デンタルバッテリー", "フリル"],
            correctAnswer: "ラガシュテッテン"
        )
    ]
}
