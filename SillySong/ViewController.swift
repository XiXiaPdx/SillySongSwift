//
//  ViewController.swift
//  SillySong
//
//  Created by Macbook Air on 12/19/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameField.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func reset(_ sender: Any) {
        nameField.text=""
        lyricsView.text=""
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
            if (nameField.text=="") {
                lyricsView.text="Please give me a name so I can make sweet lyrics!"
            } else {
                let enteredName = nameField.text
                lyricsView.text=enteredName
            }
        }
}

func shortenName (_ name: String) -> String {
    // if constant, remove it and check again.
    let vowels: Array<Character> = ["a", "e", "i", "o", "u"]
    var shorterName = name
    for nameLetter in name{
        if vowels.contains(nameLetter){
            return shorterName.lowercased()
        } else {
            shorterName.remove(at: shorterName.startIndex)
            print (shorterName)
        }
    }
    return "Not a real name"
}

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

func makeLyrics(with template: String, from name: String) -> String{
    let newLyrics = template.replacingOccurrences(of: "<FULL_NAME>", with: name)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortenName(name))
    return newLyrics
}

// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}



