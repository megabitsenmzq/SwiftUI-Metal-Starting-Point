//
//  ColorEffectView.swift
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/11/30.
//

import SwiftUI

struct ColorEffectView: View {
    @State var startDate = Date()
    var body: some View {
        TimelineView(.animation) { timeline in
            let time  = startDate.distance(to: timeline.date)
            
            ExampleContent()
                .colorEffect(
                    ShaderLibrary.testColorEffect(
                        .boundingRect,
                        .float(time)
                    )
                )
                .clipped()
        }
    }
}

#Preview {
    ColorEffectView()
}
