//
//  Double+Extension.swift
//  Solving Triangles
//
//  Created by Aafaq Ahmed Saqi on 15/07/2023.
//

import Foundation
import UIKit

extension Double {
    func toRadian() -> Double {
        return Measurement(value: self, unit: UnitAngle.degrees).converted(to: .radians).value
    }
    
    func toDegrees() -> Double {
        return Measurement(value: self, unit: UnitAngle.radians).converted(to: .degrees).value
    }
}
