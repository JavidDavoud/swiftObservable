//
//  ItemModel.swift
//  SwiftObservable
//
//  Created by Javid on 1/15/24.
//

import Foundation

struct ItemModel: Hashable, Codable {
    var configs: [ConfigModel]
}

struct ConfigModel: Codable, Hashable {
    var id: Int
    var title: String
    var description: String
    var optionAmount: Int
    var toggleAmount: Bool
}

extension ConfigModel {
    static var initalData: [ConfigModel] = [.init(id: 0, title: "Item 0", description: "Description 0", optionAmount: 0, toggleAmount: false), .init( id: 1, title: "Item 1", description: "Description 1", optionAmount: 0, toggleAmount: false), .init(id: 2, title: "Item 2", description: "Description 2", optionAmount: 0, toggleAmount: false)]
}
