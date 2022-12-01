//
//  CoustomShape.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import SwiftUI

struct CoustomShape: Shape {

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight],cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct CoustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CoustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
