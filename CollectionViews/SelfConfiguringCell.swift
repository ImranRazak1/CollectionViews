//
//  SelfConfiguringCells.swift
//  CollectionViews
//
//  Created by Imran razak on 23/10/2022.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with app: App)
}
