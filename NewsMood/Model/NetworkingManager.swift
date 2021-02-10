//
//  NetworkingManager.swift
//  NewsMood
//
//  Created by Phantasy on 2021/2/8.
//

import Foundation

class NetworkingManager: ObservableObject {
    @Published var newsSet = [News]()

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
