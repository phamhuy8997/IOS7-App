//
//  ViewController.swift
//  AppProject
//
//  Created by Huy Pham on 4/16/17.
//  Copyright © 2017 Huy Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen = Double()
    var previousNumber = Double()
    var performingMath = false
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func btNumbers(_ sender: UIButton) {
        
        if performingMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btOperator(_ sender: UIButton) {
    
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 { // chia
                label.text = "/"
                performingMath = true
                operation = sender.tag
            }
            else if sender.tag == 13 { // nhan
                label.text = "*"
                performingMath = true
                operation = sender.tag
            }
            else if sender.tag == 14 { // tru
                label.text = "-"
                performingMath = true
                operation = sender.tag
            }
            else if sender.tag == 15 { // cong
                label.text = "+"
                performingMath = true
                operation = sender.tag
            }
            else if sender.tag == 17 {
                label.text = String(previousNumber * -1)
                performingMath = true
                operation = sender.tag
            }
            else if sender.tag == 18 {
                label.text = String(previousNumber / 100)
                performingMath = true
                operation = sender.tag
            }
            else if sender.tag == 19 {
                label.text = label.text! + "."
                previousNumber = Double(label.text!)!
                numberOnScreen = Double(label.text!)!
                print(numberOnScreen)
            }
            
        }
            
        else if sender.tag == 16 {
            if operation == 12 {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13 {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14 {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15 {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
           
        else if sender.tag == 11 {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            performingMath = true
        }
    }


}

