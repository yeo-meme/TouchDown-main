//
//  AddtoCartDetailView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import SwiftUI

struct AddtoCartDetailView: View {
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
            Color(red: sampleProduct.red , green: sampleProduct.green,blue: sampleProduct.blue))
        
        .clipShape(Capsule())
    }
}

struct AddtoCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddtoCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
