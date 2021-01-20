//
//  OnboardingCollectionViewCell.swift
//  RestaurantApp
//
//  Created by Gleb on 20.01.2021.
//

import UIKit
import  Lottie

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var actionButton : UIButton!
    
    var actionButtonDidTap:(() -> Void)?
    
    func configure(with slide: SlideModel) {
        titleLabel.text = slide.title
        actionButton.backgroundColor = slide.buttonColor
        actionButton.setTitle(slide.buttonTitle, for: .normal)
        
        playAnimation(with: slide.animationName)
    }
    
    private func playAnimation(with animationName: String) {
        let animation = Animation.named(animationName)
        animationView.animation = animation
        animationView.loopMode = .loop
        
        if !animationView.isAnimationPlaying {
            animationView.play()
        }
    }
    
    @IBAction func actionButtonTap(_ sender: UIButton) {
        actionButtonDidTap?()
    }
    
}
