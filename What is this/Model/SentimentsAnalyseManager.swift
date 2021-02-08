//
//  SentimentsAnalyseManager.swift
//  What is this
//
//  Created by Phantasy on 2021/2/7.
//

import NaturalLanguage
import CoreML
import Foundation

func predict(_ news: String) -> String?{
    var predictionLabel : String?
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
    if predictionLabel != nil {
        return predictionLabel!
    } else {
        return "ニュースの印象を分類中..."
    }
}

