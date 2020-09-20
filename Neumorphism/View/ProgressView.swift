//
//  ProgressView.swift
//  Neumorphism
//
//  Created by Den on 2020-09-20.
//

import SwiftUI

struct ProgressView: View {
    
    private let height: CGFloat = 5
    
    var progress = 0.7
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.black.opacity(0.1))
                .cornerRadius(height / 2)
                .frame(height: height)
            Rectangle()
                .fill(Color.black.opacity(0.25))
                .cornerRadius(height / 2)
                .frame(width: 70,
                       height: height, alignment: .leading)
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
