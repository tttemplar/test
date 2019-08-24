//
//  ViewController.swift
//  test
//
//  Created by tttemplar on 8/17/19.
//  Copyright © 2019 tttemplar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var valueLabel: UILabel!
    
    var actualValue: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "0.00"
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        var valueText = sender.text!
        var outputText: String = ""
        if let firstDot = valueText.firstIndex(of: ".") {
            valueText.remove(at: firstDot)
        }
        let value = Int(valueText)!
        if valueText.last! == "0" {
            outputText = String(Double(value) / 100)
            outputText.append("0")
        } else {
            outputText = String(Double(value) / 100)
        }
        textField.text = outputText
        actualValue = Double(value) / 100
        valueLabel.text = String(actualValue)
    }
    

}

