//
//  SentimentsAnalyseManager.swift
//  NewsMood
//
//  Created by Phantasy on 2021/2/7.
//

import NaturalLanguage
import CoreML
import Foundation
import SwiftUI

class SentimentsAnalyseManager: ObservableObject {
    var news: String = ""
    @Published var predictionLabel : String? = "クリックして分析結果を取得"
    
    func predict(_ news: String) {
        do
            {
                let mlModel = try SentimentsAnalyse(configuration: MLModelConfiguration()).model
                        
                let sentimentPredictor = try NLModel(mlModel: mlModel)
                predictionLabel = sentimentPredictor.predictedLabel(for: news)
            }
            catch let error as NSError
            {
                print(error.localizedDescription)
            }
//        if predictionLabel != nil {
//            return predictionLabel!
//        } else {
//            return "ニュースの印象を分類中..."
//        }
    }
}

