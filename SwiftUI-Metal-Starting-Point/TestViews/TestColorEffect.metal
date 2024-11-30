//
//  TestColorEffect.metal
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/06/04.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 testColorEffect(float2 position, half4 color, float4 bounds, float time) {
    
    // Example
    float2 positionInSize = position/bounds.zw;
    half a = smoothstep(1.0, 0.0, positionInSize.y * sin(time));
    return color * a;
}

