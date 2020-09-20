//
//  ViewModifiers.swift
//  Neumorphism
//
//  Created by Den on 2020-09-20.
//

import SwiftUI

extension View {
    func neiromorphic() -> some View {
        modifier(Neiromorphic())
    }
}

fileprivate struct Neiromorphic: ViewModifier {
    
    func body(content: Content) -> some View {
        let shadowOffset: CGFloat = 7
        let shadowLightColor = Color.white.opacity(0.4)
        let shadowDarkColor = Color.black.opacity(0.15)
        return content
            .shadow(color: shadowLightColor,
                    radius: shadowOffset,
                    x: -shadowOffset, y: -shadowOffset)
            .shadow(color: shadowDarkColor,
                    radius: shadowOffset,
                    x: shadowOffset, y: shadowOffset)
    }
    
}
