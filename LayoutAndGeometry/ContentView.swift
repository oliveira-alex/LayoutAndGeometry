//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Alex Oliveira on 01/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("live")
                .font(.caption)
            Text("long")
            Text("and")
                .font(.title)
            Text("prosper")
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
