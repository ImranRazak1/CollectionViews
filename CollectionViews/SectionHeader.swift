//
//  SectionHeader.swift
//  CollectionViews
//
//  Created by Imran razak on 24/10/2022.
//

import Foundation
import UIKit

class SectionHeader: UICollectionReusableView{
    
    static let reuseIdentifier: String = "SectionHeader"
    
    let title = UILabel()
    let subtitle = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let seperator =  UIView(frame: .zero)
        seperator.translatesAutoresizingMaskIntoConstraints = false
        seperator.backgroundColor =  .quaternaryLabel
        
        title.textColor = .label
        title.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 22, weight: .bold))
        subtitle.textColor = .secondaryLabel
        
        let stackView =  UIStackView(arrangedSubviews: [seperator, title, subtitle])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            seperator.heightAnchor.constraint(equalToConstant: 1),
            
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
            
        
        ])
        
        
        stackView.setCustomSpacing(10, after: seperator)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Stop trying to make storyboards happen.")
    }
    
}
