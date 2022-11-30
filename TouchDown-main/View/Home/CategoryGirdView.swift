//
//  CategoryGirdView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/11/30.
//

import SwiftUI

struct CategoryGirdView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center , spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateColockwise: false),
                    footer: SectionView(rotateColockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) // : GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: SCROLL
    }
}

struct CategoryGirdView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGirdView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgournd)
    }
}
