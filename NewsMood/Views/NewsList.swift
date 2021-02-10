//
//  ImageList.swift
//  NewsMood
//
//  Created by Phantasy on 2021/1/30.
//

import SwiftUI

struct NewsList: View {
    @State var newsSet : [News] = [News]()
    
    var body: some View {
        NavigationView {
            List(newsSet, id: \.title) { news in
                NavigationLink(destination: NewsDetail(news: news, newsDetection: SentimentsAnalyseManager())) {
                    NewsRow(news: news)
                }
            }
            .navigationTitle("TeamLab News")
            .onAppear(perform: load)
        }
    }
    
    func load() {
        let url = URL(string: "http://newsapi.org/v2/everything?domains=wsj.com&apiKey=5614da21aa7a4af9b91ef240064c523c")!
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    DispatchQueue.main.async {
                        self.newsSet = decodedResponse.articles
//                        print(self.newsSet[0].title)
                    }
                } else {
                    print("decode failed")
                }
            }
        }.resume()
    }
}

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
