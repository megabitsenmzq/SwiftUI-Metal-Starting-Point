//
//  ExampleContent.swift
//  SwiftUI-Metal-Starting-Point
//
//  Created by Jinyu Meng on 2024/12/01.
//

import SwiftUI

struct ExampleContent: View {
    
    struct Triangle: Shape {
        func path(in rect: CGRect) -> Path {
            Path { path in
                path.move(to: CGPoint(x: rect.midX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            }
        }
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
            Rectangle()
                .fill(Color.green)
                .padding(50)
                .offset(x: 30)
            Rectangle()
                .fill(Color.blue)
                .padding(100)
                .offset(x: 40)
            Rectangle()
                .fill(Color.white)
                .padding(150)
                .offset(x: 50)
            Triangle()
                .foregroundStyle(.indigo)
                .opacity(0.3)
                .padding(20)
            VStack(spacing: 50) {
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 150)
                Circle()
                    .fill(Color.mint)
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.pink)
                    .frame(width: 50, height: 50)
            }
        }
    }
}


#Preview {
    ExampleContent()
}
