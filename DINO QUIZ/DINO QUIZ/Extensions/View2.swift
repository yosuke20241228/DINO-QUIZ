//
//  View2.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/09.
//

import SwiftUI

extension View {
    @ViewBuilder
    func backgroundImage2(_ image: Image = Image("background_image2")) -> some View {
        ZStack {
            image
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            self
        }
    }
}
