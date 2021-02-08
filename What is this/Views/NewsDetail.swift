//
//  NewsDetail.swift
//  What is this
//
//  Created by Phantasy on 2021/1/31.


import SwiftUI

struct NewsDetail: View {
    var news: News
    var label = predict(newsSet[0].content)
    
    var body: some View {
        VStack {
            news.image
            Text(news.content)
            Text(label!)
        }
    }
}

struct NewsDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetail(news: newsSet[0])
    }
}
