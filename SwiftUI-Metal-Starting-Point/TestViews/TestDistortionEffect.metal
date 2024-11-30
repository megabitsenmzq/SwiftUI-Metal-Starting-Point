//
//  TestDistortionEffect.metal
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/11/30.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 testDistortionEffect(float2 position, float4 bounds, float time) {
    
    // Example
    float2 positionInSize = position / bounds.zw;
    float size = sin(time) * 100;
    return float2(position.x + positionInSize.y * size, position.y + positionInSize.x * size);
}
