//
//  Painting.swift
//  ArtGallery (IOSPT1)
//
//  Created by Jason on 5/1/19.
//  Copyright © 2019 Jason Thomas. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.isLiked = isLiked
        self.image = image
    }
}
