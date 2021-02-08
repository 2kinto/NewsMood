//
//  ImageRow.swift
//  What is this
//
//  Created by Phantasy on 2021/1/30.
//

import SwiftUI

struct NewsRow: View {
    var news: News
    
    var body: some View {
        HStack {
            news.image
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack {
                Text(news.title)
                Text(news.description)
            }
            Spacer()
        }
    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewsRow(news: newsSet[0])
            NewsRow(news: newsSet[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
