//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by SHAdON . on 8/27/22.
//

import UIKit

class ViewController: UIViewController {
    // all my connections go here
    
    @IBOutlet weak var computersChoice: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    var playerCount: Int8 = 0
    var computerCount: Int8 = 0
    let choices: Array<String> = ["Rock", "Paper", "Scissors"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        // multiple buttons connected to this one function
        // print(sender.titleLabel!.text!)
        
        let playerResponse = sender.titleLabel!.text!
        let computerResponse = choices.randomElement()
        
        if playerCount == 3 {
            winner.text! += "Emeka"
        } else if computerCount == 3 {
            winner.text! += "Computer"
        } else {
            decideWinner(a: playerResponse, b: computerResponse!)
            print("Emeka chose: \(String(describing: playerResponse)) and computer chose \(String(describing: computerResponse))")
            print("Emeka's count is: \(playerCount)")
            print("computers count it: \(computerCount)")
        }
        
        func decideWinner(a: String, b: String) {
            if a == "Rock" && b == "Scissors" {
                playerCount += 1
            } else if a == "Rock" && b == "Paper" {
                computerCount += 1
            } else if a == "Paper" && b == "Rock" {
                playerCount += 1
            } else if a == "Paper" && b == "Scissors" {
                computerCount += 1
            } else if a == "Scissors" && b == "Rock" {
                computerCount += 1
            } else if a == "Scissors" && b == "Paper" {
                playerCount += 1
            }
        }
        
    }
    
}

