//
//  View+.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/04.
//

import SwiftUI

extension View {
    @ViewBuilder
    func stroke(color: Color, width: CGFloat = 1) -> some View {
        modifier(StrokeBackground(strokeSize: width, strokeColor: color))
    }
    
    @ViewBuilder
    func backgroundImage(_ image: Image = Image(.background)) -> some View {
        ZStack {
            image
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            self // 元のコンテンツを上に配置
        }
    }
}


