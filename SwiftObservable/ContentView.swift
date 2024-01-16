//
//  ContentView.swift
//  SwiftObservable
//
//  Created by Javid on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            VStack {
                ForEach($viewModel.items.configs, id: \.self) { $item in
                    ConfigCell(item: $item)
                        .padding()
                }
                ForEach(viewModel.items.configs, id: \.self) {item in
                    HStack {
                        Text(item.title)
                        Text("configs => ")
                        Text("option: \(item.optionAmount)")
                        Text(" | ")
                        Text("toggle: \(item.toggleAmount.description)")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
