//
//  OnBoardBg1.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import SwiftUI

struct OnBoardBg0: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.5835*height))
        path.addCurve(to: CGPoint(x: 0.5096*width, y: 0.99877*height), control1: CGPoint(x: width, y: 0.5835*height), control2: CGPoint(x: 0.80782*width, y: 0.98496*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.86333*height), control1: CGPoint(x: 0.21138*width, y: 1.01257*height), control2: CGPoint(x: 0, y: 0.86333*height))
        path.addLine(to: CGPoint(x: 0, y: -0.09113*height))
        path.addLine(to: CGPoint(x: width, y: -0.09113*height))
        path.addLine(to: CGPoint(x: width, y: 0.5835*height))
        path.closeSubpath()
        return path
    }
}

struct OnBoardBg1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.97737*height))
        path.addCurve(to: CGPoint(x: 0.32542*width, y: 0.41296*height), control1: CGPoint(x: 0, y: 0.97737*height), control2: CGPoint(x: 0.15849*width, y: 0.41296*height))
        path.addCurve(to: CGPoint(x: 0.77618*width, y: 0.99882*height), control1: CGPoint(x: 0.49235*width, y: 0.41296*height), control2: CGPoint(x: 0.60925*width, y: 0.99882*height))
        path.addCurve(to: CGPoint(x: width, y: 0.69387*height), control1: CGPoint(x: 0.94311*width, y: 0.99882*height), control2: CGPoint(x: 0.92462*width, y: 0.69387*height))
        path.addLine(to: CGPoint(x: width, y: -0.18265*height))
        path.addLine(to: CGPoint(x: 0, y: -0.18265*height))
        path.addLine(to: CGPoint(x: 0, y: 0.97737*height))
        path.closeSubpath()
        return path
    }
}

struct OnBoardBg2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.47621*height))
        path.addCurve(to: CGPoint(x: 0.12027*width, y: 0.67263*height), control1: CGPoint(x: 0, y: 0.47621*height), control2: CGPoint(x: 0.05973*width, y: 0.4843*height))
        path.addCurve(to: CGPoint(x: 0.56791*width, y: height), control1: CGPoint(x: 0.1808*width, y: 0.86095*height), control2: CGPoint(x: 0.3488*width, y: height))
        path.addCurve(to: CGPoint(x: width, y: 0.56765*height), control1: CGPoint(x: 0.78702*width, y: height), control2: CGPoint(x: width, y: 0.73803*height))
        path.addLine(to: CGPoint(x: width, y: -0.00458*height))
        path.addLine(to: CGPoint(x: 0, y: -0.00458*height))
        path.addLine(to: CGPoint(x: 0, y: 0.47621*height))
        path.closeSubpath()
        return path
    }
}


struct OnBoardBg3: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.34178*height))
        path.addCurve(to: CGPoint(x: 0.11396*width, y: 0.25181*height), control1: CGPoint(x: 0, y: 0.34178*height), control2: CGPoint(x: 0.03689*width, y: 0.22029*height))
        path.addCurve(to: CGPoint(x: 0.78595*width, y: 0.99757*height), control1: CGPoint(x: 0.22142*width, y: 0.29569*height), control2: CGPoint(x: 0.49689*width, y: 0.99757*height))
        path.addCurve(to: CGPoint(x: width, y: 0.87493*height), control1: CGPoint(x: 0.93413*width, y: 0.99757*height), control2: CGPoint(x: width, y: 0.87493*height))
        path.addLine(to: CGPoint(x: width, y: -0.07781*height))
        path.addLine(to: CGPoint(x: 0, y: -0.07781*height))
        path.addLine(to: CGPoint(x: 0, y: 0.34178*height))
        path.closeSubpath()
        return path
    }
}
