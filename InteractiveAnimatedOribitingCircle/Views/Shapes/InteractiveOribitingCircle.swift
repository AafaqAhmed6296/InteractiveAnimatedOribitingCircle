//
//  InteractiveOribitingCircle.swift
//  Solving Triangles
//
//  Created by Aafaq Ahmed Saqi on 15/07/2023.
//

import SwiftUI

struct InteractiveAnimatedOrbit: Shape {
    var point: CGPoint
    
    var animatableData: CGPoint {
        get { point }
        set { point = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            
            let origin = CGPoint(x: rect.midX, y: rect.midY)
            path.addArc(center: origin,
                        radius: 40, startAngle: .degrees(0),
                        endAngle: .degrees(360), clockwise: true)
            
            
            // second ball
            let distance: Double = 200
            let x = point.x - rect.midX
            let y = -point.y + rect.midY
            let theta = PolarCoordinate(point: .init(x: x, y: y)).angle.toRadian()
            
            let newX = origin.x + distance * cos(-theta)
            let newY = origin.y + distance * sin(-theta)
            let outerCircleOrigin = CGPoint(x: newX, y: newY)
            
            path.addArc(center: outerCircleOrigin,
                        radius: 20,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360),
                        clockwise: true)
        }
    }
}
