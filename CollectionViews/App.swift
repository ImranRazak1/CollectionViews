//
//  App.swift
//  CollectionViews
//
//  Created by Imran razak on 18/10/2022.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
