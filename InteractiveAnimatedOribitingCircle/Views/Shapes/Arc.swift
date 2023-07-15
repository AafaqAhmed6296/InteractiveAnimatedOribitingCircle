//
//  Arc.swift
//  InteractiveAnimatedOribitingCircle
//
//  Created by Aafaq Ahmed Saqi on 15/07/2023.
//

import Foundation
import SwiftUI

struct Arc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: .init(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        return path
    }
}
