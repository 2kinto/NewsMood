//
//  News.swift
//  What is this
//
//  Created by Phantasy on 2021/1/31.
//

import Foundation
import SwiftUI

struct Response: Codable {
//    var status: String
//    var totalResults: Int
    var news: [News]
}

struct News: Codable {
    var id: Int
    var title: String
    var description: String
    var content: String
    private var urlToImage: String
    var image: Image {
        Image(urlToImage)
    }
}

//struct News: Hashable, Codable, Identifiable {
//    var id: Int
//    var title: String
//    var description: String
//    var content: String
//
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
//}
