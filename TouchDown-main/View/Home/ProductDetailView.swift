//
//  ProductDetailView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            
            HeaderDetilView()
                .padding(.horizontal)
//            Text(sampleProduct.name)
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            
            //DETAIL BOTTOM PART
            //PARINGS + SIZES
            //DESCRIPTION
            //QUANTITY + FAVOURITE
            //ADD TO CART
            Spacer()
        }) //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red : sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previewsf: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
