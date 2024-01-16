//
//  ViewModel.swift
//  SwiftObservable
//
//  Created by Javid on 1/15/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var items: ItemModel = (Items ?? ItemModel(configs: ConfigModel.initalData)) {
        didSet {
            Items = items
        }
    }

}



