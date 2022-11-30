//
//  CategoryModel.swift
//  TouchDown-main
//
//  Created by yeomim Kim on 2022/11/30.
//

import Foundation


struct Category : Codable, Identifiable {
    let id: Int
    let name : String
    let image : String
}

