//
//  CompleteProfileBg.swift
//  Fitness SwiftUi
//
//  Created by Jewel Rana on 24/10/25.
//

import Foundation
import SwiftUI

struct CompleteProfileBg: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49403*width, y: 0.97997*height))
        path.addCurve(to: CGPoint(x: 0.34281*width, y: 0.91758*height), control1: CGPoint(x: 0.44142*width, y: 0.96749*height), control2: CGPoint(x: 0.39596*width, y: 0.92492*height))
        path.addCurve(to: CGPoint(x: 0.0936*width, y: 0.92466*height), control1: CGPoint(x: 0.25911*width, y: 0.90602*height), control2: CGPoint(x: 0.13666*width, y: 1.02103*height))
        path.addCurve(to: CGPoint(x: 0.19627*width, y: 0.58956*height), control1: CGPoint(x: 0.0467*width, y: 0.81968*height), control2: CGPoint(x: 0.21555*width, y: 0.70902*height))
        path.addCurve(to: CGPoint(x: 0.00067*width, y: 0.34885*height), control1: CGPoint(x: 0.17737*width, y: 0.47245*height), control2: CGPoint(x: 0.01228*width, y: 0.46763*height))
        path.addCurve(to: CGPoint(x: 0.15187*width, y: 0.13521*height), control1: CGPoint(x: -0.00894*width, y: 0.25053*height), control2: CGPoint(x: 0.087*width, y: 0.1837*height))
        path.addCurve(to: CGPoint(x: 0.34645*width, y: 0.09043*height), control1: CGPoint(x: 0.21001*width, y: 0.09176*height), control2: CGPoint(x: 0.27981*width, y: 0.09224*height))
        path.addCurve(to: CGPoint(x: 0.49403*width, y: 0.12588*height), control1: CGPoint(x: 0.39706*width, y: 0.08904*height), control2: CGPoint(x: 0.44446*width, y: 0.13955*height))
        path.addCurve(to: CGPoint(x: 0.67428*width, y: 0.00001*height), control1: CGPoint(x: 0.5613*width, y: 0.10733*height), control2: CGPoint(x: 0.6056*width, y: -0.00112*height))
        path.addCurve(to: CGPoint(x: 0.83966*width, y: 0.13153*height), control1: CGPoint(x: 0.73928*width, y: 0.00107*height), control2: CGPoint(x: 0.83884*width, y: 0.04488*height))
        path.addCurve(to: CGPoint(x: 0.67846*width, y: 0.44285*height), control1: CGPoint(x: 0.84086*width, y: 0.25921*height), control2: CGPoint(x: 0.64378*width, y: 0.32382*height))
        path.addCurve(to: CGPoint(x: 0.99078*width, y: 0.6501*height), control1: CGPoint(x: 0.72111*width, y: 0.58919*height), control2: CGPoint(x: 0.93172*width, y: 0.51428*height))
        path.addCurve(to: CGPoint(x: 0.88239*width, y: 0.91182*height), control1: CGPoint(x: 1.02874*width, y: 0.73741*height), control2: CGPoint(x: 0.94097*width, y: 0.84791*height))
        path.addCurve(to: CGPoint(x: 0.67361*width, y: 0.99605*height), control1: CGPoint(x: 0.8254*width, y: 0.97397*height), control2: CGPoint(x: 0.74661*width, y: 0.98324*height))
        path.addCurve(to: CGPoint(x: 0.49403*width, y: 0.97997*height), control1: CGPoint(x: 0.61337*width, y: 1.00662*height), control2: CGPoint(x: 0.55385*width, y: 0.99416*height))
        path.closeSubpath()
        return path
    }
}
