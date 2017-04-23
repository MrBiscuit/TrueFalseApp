//
//  Question.swift
//  TrueFalseStarter
//
//  Created by SunShuaiqi on 11/03/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation



final class QuestionSet {
    
    struct Question: Hashable , Equatable {
        
        var hashValue: Int
        let stem: String
        let options: [String?]
        var answer: Int { didSet { answer -= 1 } }
        
        static func ==(lhs: Question, rhs: Question) -> Bool {
            return lhs.hashValue == rhs.hashValue
        }
    }
    
    // Singleton
    static let shared: [QuestionSet.Question] = {
        let questionSet = [Question(hashValue: 0, stem: "This was the only US President to serve more than two consecutive terms.", options: ["George Washington", "Franklin D. Roosevelt", "Woodrow Wilson", "Andrew Jackson"], answer: 2 ),
            Question(hashValue: 1, stem: "Which of the following countries has the most residents?", options: ["Nigeria", 	"Russia", 	"Iran", 	"Vietnam"], answer: 1),
            Question(hashValue: 2, stem: "In what year was the United Nations founded?", options: ["1918", 	"1919", 	"1945", 	"1954"], answer: 3),
            Question(hashValue: 3, stem: "The Titanic departed from the United Kingdom, where was it supposed to arrive?", options: ["Paris", 	"Washington D.C.", 	"New York City", 	"Boston"], answer: 3),
            Question(hashValue: 4, stem: "Which nation produces the most oil?", options: ["Iran", "Iraq", 	"Brazil", "Canada"], answer: 4),
            Question(hashValue: 5, stem: "Which country has most recently won consecutive World Cups in Soccer?", options: ["Italy", "Brazil", 	"Argetina", 	"Spain"], answer: 2),
            Question(hashValue: 6, stem: "Which of the following rivers is longest?", options: ["Yangtze", 	"Mississippi", 	"Congo", 	"Mekong"], answer: 2),
            Question(hashValue: 7, stem: "Which city is the oldest?", options: ["Mexico City", 	"Cape Town", 	"San Juan", 	"Sydney"], answer: 1),
            Question(hashValue: 8, stem: "Which country was the first to allow women to vote in national elections?", options: ["Poland", 	"United States", 	"Sweden", 	"Senegal"], answer: 1),
            Question(hashValue: 9, stem: "Which of these countries won the most medals in the 2012 Summer Games?", options: ["France", 	"Germany", 	"Japan", 	"Great Britian", ], answer: 4)
        ]
        return questionSet
    }()
    
}
