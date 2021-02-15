//
//  BigCatStructure.swift
//  BigCat
//
//  Created by Sidhartha Das on 13/02/21.
//

import Foundation
import UIKit

struct ImageData{
    var bigName: String!
    var bigUrl: String!
    var bigWeight: String!
    var bigLocation: String!
    
    static func createImageData() -> [ImageData]{
        
       return [
        .init(bigName: "Cheetah", bigUrl: "https://i.pinimg.com/originals/1a/cc/0d/1acc0d75842dacf15c46550730231c21.jpg", bigWeight: "54 kg, 119 pounds or 7.4 bowling balls", bigLocation: "Sub-Saharan Africa and Northern Iran"),
        .init(bigName: "Leopard", bigUrl: "https://i.pinimg.com/originals/ff/3f/e0/ff3fe058602b8205d4fb806c579cc01c.jpg", bigWeight: "65kg, 143 pounds or 8.9 bowling balls", bigLocation: "Africa and Asia"),
        .init(bigName: "Puma", bigUrl: "https://i.pinimg.com/474x/22/58/75/225875c276bf0eb495e678a87599ef46.jpg", bigWeight: "54 kg, 119 pounds or 7.4 bowling balls", bigLocation: "From Southern Argentina and Chile to Southeastern Alaska"),
        .init(bigName: "Jaguar", bigUrl: "https://cdn.britannica.com/09/143609-050-826EA62F/Jaguar-stream-Brazil.jpg", bigWeight: "136kg, 299 pounds or 18.7 bowling balls", bigLocation: "Southern Arizona and New Mexico to Northern Argentina and Northeastern Brazil"),
        .init(bigName: "Lion", bigUrl: "https://images.immediate.co.uk/production/volatile/sites/23/2019/10/Federico_Veronesi_Lions-cover-image-e359a4e.jpg", bigWeight: "272 kg, 598 pounds or 37.4 bowling balls", bigLocation: "Sub-Saharan Africa expect in desert and rainforests"),
        .init(bigName: "Siberian tiger", bigUrl: "https://i.pinimg.com/736x/c9/cf/1f/c9cf1f83babae423c3eba8a2b86f65e5.jpg", bigWeight: "423kg, 931 pounds or 58.2 bowling balls", bigLocation: "Northeastern China, Korea, Russia, parts of India and around the Himalayas")
       ]
    }
}
