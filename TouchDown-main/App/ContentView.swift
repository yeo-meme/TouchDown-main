//
//  ContentView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/11/28.
//

import SwiftUI

struct ContentView: View {
    
    //Utility shop class : 헬멧 아이템 누르면 이동하기
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        
        // MARK: - PROPERTIES
        
        // MARK: - BODY
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                    
                    //네이게이션 노치 적용
                        .padding(.top,
                                 UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05),
                                radius: 5,x: 0, y:5)
                    
            
                    //하단에 배치된 푸터뷰로 백그라운영역을 잡고
                    //스페이서로 밀면서 상단여백이 생긴다
    //                Spacer()
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width/1.475)
                                .padding(.vertical, 20)
                            
                            CategoryGirdView()
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                    //아이템 터치 제스쳐
                                    
                                        .onTapGesture {
                                            //constant UIImpactFeedbackGenerator
                                            feedback.impactOccurred()
                                            //Utility shop class : 헬멧 아이템 누르면 이동하기
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: LOOP
                            }) // : GRID
                            .padding(15)
                            
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            FooterView().padding(.horizontal)
                        }
                    })
             
                } //: VSTACK
                .background(colorBackgournd.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } // : ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //Utility shop class : 헬멧 아이템 누르면 이동하기
            .environmentObject(Shop())
    }
}
