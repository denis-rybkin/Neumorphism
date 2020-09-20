//
//  CircleButton.swift
//  Neumorphism
//
//  Created by Den on 2020-09-20.
//

import SwiftUI

struct CircleButton: View {
    
    let color: Color
    let icon: String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
            Text(icon)
                .foregroundColor(Color.black.opacity(0.25))
                .font(.system(size: fontSize()))
        }
        .neumorphic()
    }
    
    private func fontSize() -> CGFloat {
        if icon.count > 1 {
            return 20
        } else {
            return 30
        }
    }
}

