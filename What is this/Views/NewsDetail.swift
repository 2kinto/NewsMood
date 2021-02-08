//
//  NewsDetail.swift
//  What is this
//
//  Created by Phantasy on 2021/1/31.


import SwiftUI

struct NewsDetail: View {
    var news: News
    @ObservedObject var newsDetection: SentimentsAnalyseManager
    
    var body: some View {
        VStack {
            news.image                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(news.content)
            Text(self.newsDetection.predictionLabel!)
            Button("AI分析") {
                self.newsDetection.predict(news.content)
            }
        }
    }
}

struct NewsDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetail(news: newsSet[0], newsDetection: SentimentsAnalyseManager())
    }
}
