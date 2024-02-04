//
//  AnimationsListView.swift
//  LottieAnimationsList
//
//  Created by Nikita Zhdanov on 2024-02-03.
//

import SwiftUI

struct AnimationsListView: View {
    var body: some View {
        NavigationStack {
            
            List(favourites) { favourite in
            
                NavigationLink {
                    LottieView(animationNamed: favourite.fileName).navigationTitle(favourite.description)
                } label: {
                    Text(favourite.description)
                }
                
            }
        }
    }
}

#Preview {
    AnimationsListView()
}
