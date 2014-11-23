//
//  ViewController.swift
//  War
//
//  Created by Felix Mohnert on 20/11/14.
//  Copyright (c) 2014 Felix Mohnert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var firstCardImageView: UIImageView!
  @IBOutlet weak var secondCardImageView: UIImageView!
  @IBOutlet weak var playRoundButton: UIButton!
  @IBOutlet weak var backgroundImageView: UIImageView!
  @IBOutlet weak var playerScore: UILabel!
  @IBOutlet weak var enemyScore: UILabel!
  
  var cardNamesArray:[String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
  var playerScoreTotal = 0
  var enemyScoreTotal = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func playRoundTapped(sender: UIButton) {
    // Randomize a number for the first imageview
    var firstRandomNumber: Int = Int(arc4random_uniform(13))
      
    // Construct a string with the random number
    var firstCardString: String = self.cardNamesArray[firstRandomNumber]
      
    // Set the first card image view ot the asset corresponding to the randomized number
    self.firstCardImageView.image = UIImage(named: firstCardString)
      
    // Randomize a number for the second imageview
    var secondRandomNumber: Int = Int(arc4random_uniform(13))
      
    // Construct a string with the random number
    var secondCardString: String = self.cardNamesArray[secondRandomNumber]
      
    // Set the second card image view ot the asset corresponding to the randomized number
    self.secondCardImageView.image = UIImage(named: secondCardString)
    
    // Determine the higher card
    if firstRandomNumber > secondRandomNumber {
      playerScoreTotal += 1
      self.playerScore.text = String(playerScoreTotal)
    }
    else if firstRandomNumber == secondRandomNumber {
      // Nothing happens
    }
    else {
      // TOTO: Sedonc card is larger
      enemyScoreTotal += 1
      self.enemyScore.text = String(enemyScoreTotal)
    }
  }
}

