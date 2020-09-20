//
//  ContentView.swift
//  Neumorphism
//
//  Created by Den on 2020-09-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color(NSColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)))
            ControlsView()
        }
        
        
            .frame(width: 500, height: 300, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
