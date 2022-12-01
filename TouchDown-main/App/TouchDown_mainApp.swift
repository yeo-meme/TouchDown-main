//
//  TouchDown_mainApp.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/11/28.
//

import SwiftUI

@main
struct TouchDown_mainApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            //Utility shop class : 헬멧 아이템 누르면 이동하기
                .environmentObject(Shop())
        }
    }
}
