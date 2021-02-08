//
//  ImageList.swift
//  What is this
//
//  Created by Phantasy on 2021/1/30.
//

import SwiftUI

struct NewsList: View {

    var body: some View {
        NavigationView {
            List(NetworkingManager().newsSet, id: \.id) { news in
                NavigationLink(destination: NewsDetail(news: news, newsDetection: SentimentsAnalyseManager())) {
                    NewsRow(news: news)
                }
            }
            .navigationTitle("TeamLab News")
            .onAppear(perform: NetworkingManager().load)
        }
    }
}

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
