//
//  AnimationsListView.swift
//  LottieAnimationsList
//
//  Created by Nikita Zhdanov on 2024-02-03.
//

import UIKit
import SwiftUI
import Lottie

struct AnimationsListView: UIViewRepresentable {

    @State var animationNamed: String

    func makeUIView(context: UIViewRepresentableContext<AnimationsListView>) -> UIView {
        
        let view = UIView(frame: .zero)
        
        // Lottie View
        let animationView = LottieAnimationView()
        let animation = LottieAnimation.named(animationNamed)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        
        // Constraints
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    typealias UIViewType = UIView
    
    struct LottieView_Previews: PreviewProvider {
        static var previews: some View {
            LottieView(animationNamed: "782-check-mark-success")
        }
    }
}
