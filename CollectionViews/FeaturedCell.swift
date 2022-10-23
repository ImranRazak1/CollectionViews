//
//  FeaturedCell.swift
//  CollectionViews
//
//  Created by Imran razak on 23/10/2022.
//

import Foundation
import UIKit

class FeaturedCell: UICollectionViewCell, SelfConfiguringCell {
    static let reuseIdentifier: String  =  "FeaturedCell"
    
    let tagline =  UILabel()
    let name =  UILabel()
    let subTitle =  UILabel()
    let imageView =  UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let seperator = UIView(frame: .zero)
        seperator.translatesAutoresizingMaskIntoConstraints =  false
        seperator.backgroundColor = .quaternaryLabel
        
        tagline.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        tagline.textColor = .systemBlue
        
        imageView.layer.cornerRadius =  5
        imageView.clipsToBounds =  true
        imageView.contentMode = .scaleAspectFit
        
        let stackView = UIStackView(arrangedSubviews: [seperator, tagline, name, subTitle, imageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    func configure(with app: App){
        tagline.text = app.tagline.uppercased()
        name.text = app.name
        subTitle.text = app.subheading
        imageView.image = UIImage(named: app.image)
    }

    
    required init?(coder: NSCoder) {
        fatalError("Featured Cell failed to load")
    }
}
