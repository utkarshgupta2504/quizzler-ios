//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func onAnswerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer) {
            print("Right!")
            sender.backgroundColor = UIColor.systemGreen
        } else {
            print("Wrong!")
            sender.backgroundColor = UIColor.systemRed
        }
        
        quizBrain.nextQuestion()
        
        updateUI()
    }
    
    func updateUI() {
        self.questionLabel.text = quizBrain.getQuestionText()
        self.scoreLabel.text = "Score : \(quizBrain.getScore())"
        
        UIView.animate(withDuration: 0.2) {
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
            self.progressBar.progress = self.quizBrain.getProgress()
            self.progressBar.layoutIfNeeded()
        }
    }
}

