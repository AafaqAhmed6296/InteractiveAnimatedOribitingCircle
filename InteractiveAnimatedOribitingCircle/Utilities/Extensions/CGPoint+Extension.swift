//
//  CGPoint+Extension.swift
//  Solving Triangles
//
//  Created by Aafaq Ahmed Saqi on 15/07/2023.
//

import Foundation
import UIKit

extension CGPoint {
    /// It will convert the Polar Coordinate to Cartesian Coordinates
    /// - Parameters:
    ///   - radius: radius to point in plane
    ///   - angle: angle in degrees, create from origin
    private
    init(radius: Double, angle: Double) {
        let angleInRadians = (Double.pi * angle) /  180
        self.init()
        self.x = radius * cos(angleInRadians)
        self.y = radius * sin(angleInRadians)
    }
    
    init(polarCoordinate: PolarCoordinate) {
        self.init(radius: polarCoordinate.radius, angle: polarCoordinate.angle)
    }
    
    func toPolarCoordinate() -> PolarCoordinate {
        return PolarCoordinate(point: self)
    }
}
