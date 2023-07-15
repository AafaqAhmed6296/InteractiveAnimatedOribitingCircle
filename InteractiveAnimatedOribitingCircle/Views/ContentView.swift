//
//  ContentView.swift
//  InteractiveAnimatedOribitingCircle
//
//  Created by Aafaq Ahmed Saqi on 15/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State var tappedPoint: CGPoint = CGPoint(x: 0, y: 0)
    
    var body: some View {
        ZStack {
            Arc(startAngle: .degrees(0),
                endAngle: .degrees(360),
                clockwise: true)
                .stroke(.blue, lineWidth: 10)
                .frame(width: 400, height: 400)
            
            InteractiveAnimatedOrbit(point: tappedPoint)
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.height)
        }
        .background(.white)
        .gesture(
            DragGesture()
                .onChanged({ gesture in
                    self.tappedPoint = gesture.location
                })
        )
    }
}

#Preview {
    ContentView()
}
