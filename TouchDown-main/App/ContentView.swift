//
//  ContentView.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/11/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        // MARK: - PROPERTIES
        
        // MARK: - BODY
        ZStack {
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
                        
                        FooterView().padding(.horizontal)
                    }
                })
         
            } //: VSTACK
            .background(colorBackgournd.ignoresSafeArea(.all, edges: .all))
        } // : ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
