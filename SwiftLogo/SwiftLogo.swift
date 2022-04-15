//
//  SwiftLogo.swift
//  Drawing
//
//  Created by Alex on 15/04/2022.
//
// Using a grid of 10x10 i.e 0.1, 0.2 ...1 on both x and y axes. with 0,0 at topleading corner as usual.

import SwiftUI

struct SwiftLogoShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: rect.minX, y: height * 0.63))
        path.addCurve(to: CGPoint(x: width * 0.98, y: height * 0.93), control1: CGPoint(x: width * 0.3, y: height * 1.2), control2: CGPoint(x: width * 0.85, y: height * 0.7))
        path.addQuadCurve(to: CGPoint(x: width * 0.9, y: height * 0.68), control: CGPoint(x: width, y: height * 0.8))
        path.addQuadCurve(to: CGPoint(x: width * 0.61, y: rect.minY), control: CGPoint(x: width, y: height * 0.3))
        path.addQuadCurve(to: CGPoint(x: width * 0.7, y: height * 0.53), control: CGPoint(x: width * 0.78, y: height * 0.3))
        path.addQuadCurve(to: CGPoint(x: width * 0.22, y: height * 0.09), control: CGPoint(x: width * 0.35, y: height * 0.25))
        path.addQuadCurve(to: CGPoint(x: width * 0.5, y: height * 0.48), control: CGPoint(x: width * 0.3, y: height * 0.25))
        path.addQuadCurve(to: CGPoint(x: width * 0.1, y: height * 0.15), control: CGPoint(x: width * 0.35, y: height * 0.4))
        path.addQuadCurve(to: CGPoint(x: width * 0.56, y: height * 0.71), control: CGPoint(x: width * 0.33, y: height * 0.51))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: height * 0.63), control: CGPoint(x: width * 0.3, y: height * 0.85))
        
        
        return path
    }
    
    
}

struct SwiftLogo: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .fill(
                    LinearGradient(colors: [Color(red: 0.99, green: 0.15, blue: 0.13), Color(red: 0.97, green: 0.54, blue: 0.21)],
                                   startPoint: .bottomTrailing,
                                   endPoint: .topLeading)
                )
                .frame(width: 300, height: 300)
            SwiftLogoShape()
                .fill(.white)
                .frame(width: 250, height: 250)
            
        }.padding()
        
    }
}

struct SwiftLogo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftLogo()
    }
}
