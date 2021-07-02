//
//  ViewController.swift
//  Destini
//
//  Created by Binaya on 15/05/2021.
//

import UIKit

class DestiniViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI () {
        questionLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getChoice1Answer(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2Answer(), for: .normal)
    }
    
}

