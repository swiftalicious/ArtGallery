//
//  PaintingTableViewCell.swift
//  ArtGallery (IOSPT1)
//
//  Created by Jason on 5/1/19.
//  Copyright © 2019 Jason Thomas. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonTapped(on cell: PaintingTableViewCell)
}
class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        didSet{
            updateViews()
        }
    }
    
    @IBOutlet weak var PaintingImage: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    func updateViews() {
        guard let painting = painting else { return }
        PaintingImage.image = painting.image
        if(painting.isLiked) {
            likeButton.setTitle("Unlike", for: .normal)
        } else {
            likeButton.setTitle("Like", for: .normal)
        }
    }

    @IBAction func likeButtonTapped(_ sender: Any) {
        delegate?.likeButtonTapped(on: self)
    }
}
