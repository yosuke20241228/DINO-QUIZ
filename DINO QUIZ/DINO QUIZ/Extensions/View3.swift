//
//  View3.swift
//  DINO QUIZ
//
//  Created by 山﨑　陽介 on 2025/05/22.
//

import SwiftUI

extension View {
    func getHostingController(completion: @escaping (UIViewController?) -> Void) -> some View {
        background(HostingControllerFinder(completion: completion))
    }
}

private struct HostingControllerFinder: UIViewControllerRepresentable {
    let completion: (UIViewController?) -> Void
    
    func makeUIViewController(context: Context) -> UIViewControllerFinder {
        UIViewControllerFinder(completion: completion)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerFinder, context: Context) {}
}

private class UIViewControllerFinder: UIViewController {
    let completion: (UIViewController?) -> Void
    
    init(completion: @escaping (UIViewController?) -> Void) {
        self.completion = completion
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        DispatchQueue.main.async {
            self.completion(parent)
        }
    }
}
