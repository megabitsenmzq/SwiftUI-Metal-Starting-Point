//
//  ContentView.swift
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/06/04.
//

import SwiftUI

struct ContentView: View {
    @State var startDate = Date()
    var body: some View {
        TabView {
            ColorEffectView()
                .tabItem({ Label("Color", systemImage: "paintpalette") })
            DistortionEffectView()
                .tabItem({ Label("Distortion", systemImage: "water.waves") })
            LayerEffectView()
                .tabItem({ Label("Layer", systemImage: "square.2.layers.3d") })
        }
    }
}

#Preview {
    ContentView()
}
