//
//  News.swift
//  NewsMood
//
//  Created by Phantasy on 2021/1/31.
//

import Foundation
import SwiftUI

struct Response: Codable {
    var totalResults: Int
    var status: String
    var articles: [News]
}

struct News: Codable {
    var source: Source
    var title: String
    var description: String
    var content: String
    var author: String?
    var url: String
    var publishedAt: String

    var urlToImage: String
    var image: URL {
        let url = URL(string: urlToImage)!
        return url
    }
}

struct Source: Codable {
    var id: String
    var name: String
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
