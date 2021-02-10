//
//  NewsDetail.swift
//  What is this
//
//  Created by Phantasy on 2021/1/31.


import SwiftUI
import URLImage

struct NewsDetail: View {
    var news: News
    @ObservedObject var newsDetection: SentimentsAnalyseManager
    
    var body: some View {
        VStack {
            URLImage(url:  news.image) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Text(news.title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(news.content)
                .padding()
            Spacer()
            Text(self.newsDetection.predictionLabel!)
                .font(.body)
                .padding()
            Button("AI分析") {
                self.newsDetection.predict(news.content)
            }
        }.padding()
    }
}

struct NewsDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetail(news: NewsList().newsSet[0], newsDetection: SentimentsAnalyseManager())
    }
}
