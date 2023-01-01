//
//  CharmedView.swift
//  AwardsCollectionApp
//
//  Created by Artem Lapov on 27.12.2022.
//

import SwiftUI

struct CharmedView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let farLine = size * 0.9
            let nearLine = size * 0.1

            Path { path in
                path.move(to: CGPoint(x: nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
            }
            .fill(
                RadialGradient(
                    colors: [.purple, .white],
                    center: .center,
                    startRadius: size * 0.07,
                    endRadius: size * 0.41
                )
            )

            Path { path in
                path.addArc(
                    center: CGPoint(x: farLine, y: middle),
                    radius: middle,
                    startAngle: .degrees(180),
                    endAngle: .degrees(90),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: nearLine, y: middle),
                    radius: middle,
                    startAngle: .degrees(90),
                    endAngle: .degrees(0),
                    clockwise: true
                )
            }
            .stroke(Color.purple, lineWidth: 3)
        }
    }
}

struct CharmedView_Previews: PreviewProvider {
    static var previews: some View {
        CharmedView()
            .frame(width: 200, height: 200)
    }
}
