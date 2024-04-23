//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Utkarsh Gupta on 23/04/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
