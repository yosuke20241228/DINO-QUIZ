//
//  ScoreView.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI

struct ScoreView: View {
    let scoreText: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(scoreText)
                .font(.system(size: 40).bold())
                .foregroundStyle(.originalBlack)
                .stroke(color: .originalSkin, width: 5)
            Spacer()
            Button {
                let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                windowScene?.windows.first?.rootViewController?.dismiss(animated: true)
            } label: {
                Image(.topButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundImage2()
    }
}

#Preview {
    ScoreView(scoreText: "")
}
