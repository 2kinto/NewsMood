//
//  NetworkingManager.swift
//  What is this
//
//  Created by Phantasy on 2021/2/8.
//

import Foundation

class NetworkingManager: ObservableObject {
    @Published var newsSet = [News]()

    func load(){
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2021-01-08&sortBy=publishedAt&apiKey=5614da21aa7a4af9b91ef240064c523c")!
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    print("!!!!!!")
                    DispatchQueue.main.async {
                        self.newsSet = decodedResponse.news
                        print("!!!!!!")
                        print(self.newsSet)
                    }
                    return
                }
            }
        }.resume()
    }
}
