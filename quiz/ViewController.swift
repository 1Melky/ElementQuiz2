//
//  ViewController.swift
//  quiz
//
//  Created by SD on 04/03/2024.
//

import UIKit

enum Mode {
    case flashCard
    case quiz
}

class ViewController: UIViewController, UITextFieldDelegate {
    var mode: Mode = .flashCard
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    var currentElementIndex = 0
    
    func updateElement(){
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        answerLabel.text = "?"
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: Any){
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func next(_ sender: Any){
        currentElementIndex += 1
        if currentElementIndex >= elementList.count{
            currentElementIndex = 0
        }
        updateElement()
    }
}
