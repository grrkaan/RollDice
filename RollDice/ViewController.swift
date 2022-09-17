//
//  ViewController.swift
//  RollDice
//
//  Created by Kaan Sercan Görür on 17.09.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    @IBOutlet weak var diceTitle: UILabel!
    
    let rollSound = URL(fileURLWithPath: Bundle.main.path(forResource: "dice", ofType: "mp3")!)
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollDiceButton(_ sender: Any) {
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: rollSound)
            audioPlayer.play()
        } catch {
            // couldn't load file :(
        }
        
        
        var randomDiceOne = Int.random(in: 1 ... 6)
        var randomDiceTwo = Int.random(in: 1 ... 6)
        
        
        firstDice.image = UIImage.init(named: "Group_" + String(randomDiceOne))
        
        secondDice.image = UIImage.init(named: "Group_" + String(randomDiceTwo))
        
        
        if(randomDiceOne == 1 && randomDiceTwo == 1){
            diceTitle.text = "Snake Eyes"
        }else if(randomDiceOne == 2 && randomDiceTwo == 1){
            diceTitle.text = "Ace Deuce"
        }else if(randomDiceOne == 2 && randomDiceTwo == 2){
            diceTitle.text = "Hard Four"
        }else if(randomDiceOne == 3 && randomDiceTwo == 1){
            diceTitle.text = "Easy Four"
        }else if(randomDiceOne == 3 && randomDiceTwo == 2){
            diceTitle.text = "Five (Fever Five)"
        }else if(randomDiceOne == 3 && randomDiceTwo == 3){
            diceTitle.text = "Hard Six"
        }else if(randomDiceOne == 4 && randomDiceTwo == 1){
            diceTitle.text = "Five (Fever Five)"
        }else if(randomDiceOne == 4 && randomDiceTwo == 2){
            diceTitle.text = "Easy Six"
        }else if(randomDiceOne == 4 && randomDiceTwo == 3){
            diceTitle.text = "Natural/Seven Out"
        }else if(randomDiceOne == 4 && randomDiceTwo == 4){
            diceTitle.text = "Hard Eight"
        }else if(randomDiceOne == 5 && randomDiceTwo == 1){
            diceTitle.text = "Easy Six"
        }else if(randomDiceOne == 5 && randomDiceTwo == 2){
            diceTitle.text = "Natural/Seven Out"
        }else if(randomDiceOne == 5 && randomDiceTwo == 3){
            diceTitle.text = "Easy Eight"
        }else if(randomDiceOne == 5 && randomDiceTwo == 4){
            diceTitle.text = "Nine (Nina)"
        }else if(randomDiceOne == 5 && randomDiceTwo == 5){
            diceTitle.text = "Hard Ten"
        }else if(randomDiceOne == 6 && randomDiceTwo == 1){
            diceTitle.text = "Natural or Seven Out"
        }else if(randomDiceOne == 6 && randomDiceTwo == 2){
            diceTitle.text = "Easy Eight"
        }else if(randomDiceOne == 6 && randomDiceTwo == 3){
            diceTitle.text = "Nine (Nina)"
        }else if(randomDiceOne == 6 && randomDiceTwo == 4){
            diceTitle.text = "Easy Ten"
        }else if(randomDiceOne == 6 && randomDiceTwo == 5){
            diceTitle.text = "Yo (Yo-leven)"
        }else if(randomDiceOne == 6 && randomDiceTwo == 6){
            diceTitle.text = "Boxcars/Midnight"
        }else {
            diceTitle.text = ""
        }
        
        
        
    }
    
}

