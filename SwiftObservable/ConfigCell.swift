//
//  ConfigCell.swift
//  SwiftObservable
//
//  Created by Javid on 1/15/24.
//

import SwiftUI

struct ConfigCell: View {
    @Binding var item: ConfigModel
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title + "    " + item.description)
            HStack {
                Picker("", selection: $item.optionAmount) {
                    Text("0").tag(0)
                    Text("1").tag(1)
                    Text("2").tag(2)
                }
                .pickerStyle(.segmented)
                Spacer()
                Toggle("", isOn: $item.toggleAmount)
            }
        }
    }
}

struct ConfigCell_Previews: PreviewProvider {
    static var previews: some View {
        ConfigCell(item: .constant(ConfigModel.initalData.first!))
    }
}
