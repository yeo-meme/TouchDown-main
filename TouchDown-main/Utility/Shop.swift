//
//  Shop.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/12/01.
//

import Foundation

//Utility shop class : 헬멧 아이템 누르면 이동하기
class Shop : ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
