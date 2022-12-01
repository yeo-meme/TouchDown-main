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
                .zIndex(1)
            
            //DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                //PARINGS + SIZES
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
               
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false,content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                Spacer()
            })
            .padding(.horizontal)
            //커스텀 쉐이프 적용 (Utility-> CoustomShape)
            .background(Color.white
                .clipShape(CoustomShape())
                .padding(.top, -105)
            )
           
            //QUANTITY + FAVOURITE
            //ADD TO CART
      
        }) //: VSTACK
        .zIndex(0)
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
