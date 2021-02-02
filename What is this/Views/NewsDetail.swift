//
//  NewsDetail.swift
//  What is this
//
//  Created by Phantasy on 2021/1/31.


import SwiftUI

struct NewsDetail: View {
    var news: News
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NewsDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetail(news: newsSet[0])
    }
}
