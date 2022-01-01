//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Alex Oliveira on 01/01/2022.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@oliveiraALeX__")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                Image("alex")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("More text")
                Text("Example text")
                Text("It will still align")
                Text("Full name:")
                Text("ALEX OLIVEIRA")
                    .font(.largeTitle)
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
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
