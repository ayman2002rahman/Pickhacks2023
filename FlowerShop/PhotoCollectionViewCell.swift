//
//  PhotoCollectionViewCell.swift
//  FlowerShop
//
//  Created by Shakthivel Gnanasekaran on 4/16/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell:
    UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images = [
            UIImage(named: "dandelion-head-flowers"),
            UIImage(named: "iris"),
            UIImage(named: "Jasmine-Grand-Duke-of-Tuscany-Jasminum-sambac-jasmine-flower-plant-for-sale-600x600"),
            UIImage(named: "single-red-rose"),
        
            
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
    }
    
    required init?(coder: NSCoder) {
        
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
}
