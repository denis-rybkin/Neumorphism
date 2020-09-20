//
//  ControlsView.swift
//  Neumorphism
//
//  Created by Den on 2020-09-20.
//

import SwiftUI

struct ControlsView: View {
    
    private let tintColor = Color(NSColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00))
    private let buttonSize = CGSize(width: 70, height: 50)
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(tintColor)
                .cornerRadius(20)
                .neumorphic()
            VStack(spacing: 25) {
                Text("Liar - Garland Noose")
                    .font(.system(size: 23))
                    .foregroundColor(Color.black.opacity(0.3))
                    .frame(height: buttonSize.height)
                ProgressView()
                    .frame(width: buttonSize.width * 3)
                HStack {
                    CircleButton(color: tintColor, icon: "◀︎◀︎")
                        .frame(width: buttonSize.width, height: buttonSize.height)
                        .neumorphic()
                    CircleButton(color: tintColor, icon: "▶︎")
                        .frame(width: buttonSize.width, height: buttonSize.height)
                        .neumorphic()
                    CircleButton(color: tintColor, icon: "▶︎▶︎")
                        .frame(width: buttonSize.width, height: buttonSize.height)
                        .neumorphic()
                }
                
            }
            
        }
            .frame(width: 300, height: 200, alignment: .center)
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
