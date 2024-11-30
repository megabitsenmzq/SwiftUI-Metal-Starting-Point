//
//  TestLayerEffect.metal
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/11/30.
//

#include <metal_stdlib>
#include <SwiftUI/SwiftUI.h>
using namespace metal;

[[ stitchable ]] half4 testLayerEffect(float2 position, SwiftUI::Layer layer, float4 bounds, float time) {
    
    // Example
    float2 a = 1 / ((sin(time) + 2) / 3);
    return layer.sample(fmod(position * a, bounds.zw));
}
