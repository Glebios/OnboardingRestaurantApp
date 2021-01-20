//
//  SlideModel.swift
//  RestaurantApp
//
//  Created by Gleb on 20.01.2021.
//

import Foundation
import UIKit

struct SlideModel {
    let title: String
    let animationName:String
    let buttonColor:UIColor
    let buttonTitle:String
    
   static  let collection: [SlideModel] = [
        .init(title: "Get your favourite food delivered to you  under 30 minutes anytime",
              animationName: "lottieDeliveryGuy", buttonColor: .systemYellow, buttonTitle: "Next"),
        .init(title: "We serve from choiced restaurants  in you area",
              animationName: "lottieRestaurant", buttonColor: .systemGreen, buttonTitle: "Order Now")
    
    ]
}
