//
//  AddtoCartDetailView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import SwiftUI

struct AddtoCartDetailView: View {
    
    @EnvironmentObject var shop : Shop
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //:Button
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red ,
                  green: shop.selectedProduct?.green ?? sampleProduct.green ,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        
        .clipShape(Capsule())
    }
}

struct AddtoCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddtoCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
