//
//  HeaderDetilView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import SwiftUI

struct HeaderDetilView: View {
    var body: some View {

        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) // :VSTACK
        .foregroundColor(.white)
    }
}

struct HeaderDetilView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetilView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
