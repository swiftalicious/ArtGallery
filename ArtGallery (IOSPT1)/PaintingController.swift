//
//  PaintingController.swift
//  ArtGallery (IOSPT1)
//
//  Created by Jason on 5/1/19.
//  Copyright © 2019 Jason Thomas. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    init() {
        loadPaintingFromAssets()
    }
    
    
    func loadPaintingFromAssets() {
        for i in 1...12 {
            let image: String = "Image\(i)"
            guard let UIImage = UIImage(named: image) else { return }
            let painting = Painting(image: UIImage)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
}
