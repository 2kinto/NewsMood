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
            List(newsSet) { news in
                NavigationLink(destination: NewsDetail(news: news)) {
                    NewsRow(news: news)
                }
            }
            .navigationTitle("TeamLab News")
        }
    }
}

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
