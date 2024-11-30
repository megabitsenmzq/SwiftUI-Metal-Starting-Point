//
//  LayerEffectView.swift
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/11/30.
//

import SwiftUI

struct LayerEffectView: View {
    @State var startDate = Date()
       
    var body: some View {
        TimelineView(.animation) { timeline in
            let time  = startDate.distance(to: timeline.date)
            ExampleContent()
                .layerEffect(
                    ShaderLibrary.testLayerEffect(
                        .boundingRect,
                        .float(time)
                    ),
                    maxSampleOffset: .init(width: 800, height: 800)
                )
                .clipped()
        }
    }
}

#Preview {
    LayerEffectView()
}
