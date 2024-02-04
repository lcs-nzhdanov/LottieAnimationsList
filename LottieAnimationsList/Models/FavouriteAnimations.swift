//
//  FavouriteAnimations.swift
//  LottieAnimationsList
//
//  Created by Nikita Zhdanov on 2024-02-03.
//


import Foundation

struct FavouriteAnimation: Identifiable {
    
    let id = UUID()
    let fileName: String
    let description: String
    
}

// Create a list of animations that are favourites
let favourites = [

    FavouriteAnimation(fileName: "Girl",
                       description: "Purple Girl")
    
]
