//
//  StartView.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI

struct StartView: View {
    @State var isShowingGenreSelectionView = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("恐竜\nクイズ")
                .font(.system(size: 80).bold())
                .foregroundStyle(.originalBrown)
                .stroke(color: .originalLightGreen, width: 3)
                .multilineTextAlignment(.center) // テキストを中央揃え

            Spacer()
            Button {
                isShowingGenreSelectionView = true
            } label: {
                Image(.startButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
            .fullScreenCover(isPresented: $isShowingGenreSelectionView) {
                GenreSelectionView()
            }
            Spacer()
            Text("恐竜をタップすると\nクイズが始まるよ")
                .font(.system(size:40).bold())
                .foregroundStyle(.originalBrown)
            .stroke(color: .originalSkin, width: 5)        }
        .padding()
        .backgroundImage()
        
        
        }
}

#Preview {
    StartView()
}
