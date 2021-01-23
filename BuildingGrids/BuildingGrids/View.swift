//
//  ContentView.swift
//  BuildingGrids
//
//  Created by Daniel Watson on 23/01/2021.
//

import SwiftUI

let data = Array(1...1000).map { "Item \($0)"}

let layout = [
    GridItem(.flexible(minimum: 80))
]

struct View: View {
    var body: some View {
        ScrollView {
            LazyHGrid(rows: layout, spacing: 20){
                ForEach(data, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(Color(.blue))
                            .frame(height: 50)
                        Text(item)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
