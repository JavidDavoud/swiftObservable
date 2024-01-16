//
//  Array.swift
//  SwiftObservable
//
//  Created by Javid on 1/15/24.
//

import Foundation

var Items: ItemModel? {
    
    get{
        guard let data = UserDefaults.standard.data(forKey: "SAVED_ITEMS") else {
            return nil
        }
        do {
            let decoder = JSONDecoder()
            let person = try decoder.decode(ItemModel.self, from: data)
            return person
        } catch {
            print("failed to read data from userdefaults")
            return nil
        }

    }set{
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(newValue)
            UserDefaults.standard.set(data, forKey: "SAVED_ITEMS")
        } catch {
            print("failed to save new value to userdefaults")
        }

    }
}
