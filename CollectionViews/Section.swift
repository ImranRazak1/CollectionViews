//
//  Section.swift
//  CollectionViews
//
//  Created by Imran razak on 18/10/2022.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
    
}
