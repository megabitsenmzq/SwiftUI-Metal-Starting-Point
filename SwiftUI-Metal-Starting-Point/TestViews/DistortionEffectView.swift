//
//  DistortionEffectView.swift
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/11/30.
//

import SwiftUI

struct DistortionEffectView: View {
    @State var startDate = Date()
       
    var body: some View {
        TimelineView(.animation) { timeline in
            let time  = startDate.distance(to: timeline.date)
            ExampleContent()
                .distortionEffect(
                    ShaderLibrary.testDistortionEffect(
                        .boundingRect,
                        .float(time)
                    ), maxSampleOffset: .init(width: 800, height: 800)
                )
                .clipped()
        }
    }
}

#Preview {
    DistortionEffectView()
}
