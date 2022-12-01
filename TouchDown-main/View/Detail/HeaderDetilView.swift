//
//  HeaderDetilView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import SwiftUI

struct HeaderDetilView: View {
    
    @EnvironmentObject var shop : Shop
    
    var body: some View {

        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            //기존코드
//            Text(sampleProduct.name)
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) // :VSTACK
        .foregroundColor(.white)
    }
}

struct HeaderDetilView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetilView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
