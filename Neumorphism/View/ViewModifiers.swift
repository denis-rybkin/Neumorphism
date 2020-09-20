//
//  ViewModifiers.swift
//  Neumorphism
//
//  Created by Den on 2020-09-20.
//

import SwiftUI

extension View {
    func neumorphic() -> some View {
        modifier(Neumorphic())
    }
}

fileprivate struct Neumorphic: ViewModifier {
    
    let shadowOffset: CGFloat = 7
    let shadowLightColor = Color.white.opacity(0.4)
    let shadowDarkColor = Color.black.opacity(0.15)
    
    func body(content: Content) -> some View {
        return content
            .shadow(color: shadowLightColor,
                    radius: shadowOffset,
                    x: -shadowOffset, y: -shadowOffset)
            .shadow(color: shadowDarkColor,
                    radius: shadowOffset,
                    x: shadowOffset, y: shadowOffset)
    }
    
}
