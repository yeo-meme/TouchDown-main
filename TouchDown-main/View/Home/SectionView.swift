//
//  SectionView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/11/30.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateColockwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateColockwise ? 90 : -90))
            
            Spacer()
            
        } // :VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateColockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackgournd)
    }
}
