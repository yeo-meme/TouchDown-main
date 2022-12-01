//
//  TopPartDetailView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6 ,content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
