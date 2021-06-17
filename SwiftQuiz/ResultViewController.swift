//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Magno Miranda Dantas on 14/04/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbAnswered.text = "Perguntas Respondias \(totalAnswers)"
        lbCorrect.text = "Perguntas Corretas \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas Erradas \(totalAnswers - totalCorrectAnswers)"
        
        var score: Int = 0
        
        if totalAnswers != 0 {
            score = (totalCorrectAnswers * 100) / totalAnswers
        }
        lbScore.text = "\(score)%"
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
