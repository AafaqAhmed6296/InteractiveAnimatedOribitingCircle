//
//  PolarCoordinates.swift
//  Solving Triangles
//
//  Created by Aafaq Ahmed Saqi on 15/07/2023.
//
import UIKit

struct PolarCoordinate {
    internal init(radius: Double, angle: Double) {
        self.radius = radius
        self.angle = angle
    }
    
    let radius: Double
    /// Angle in radians
    let angle: Double
    
    private
    init(x: CGFloat, y: CGFloat) {
        self.radius = sqrt((x * x) + (y * y))
        let angle = atan2(y, x)
        self.angle = (angle * 180) / .pi
    }
    
    init(point: CGPoint) {
        self.init(x: point.x, y: point.y)
    }
    
    public func toCGPoint() -> CGPoint {
        return .init(polarCoordinate: self)
    }
}
