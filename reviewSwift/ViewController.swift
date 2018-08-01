//
//  ViewController.swift
//  reviewSwift
//
//  Created by LisacoOno on 2018/08/01.
//  Copyright © 2018年 LisacoOno. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var firstNum = 0.0
    var secondNum = 0.0
    var whichCalc = 0.0

    @IBOutlet weak var NumLabel: UILabel!
    @IBAction func NumButton(_ sender: UIButton) {
        firstNum = secondNum
        secondNum = Double(sender.tag)
        NumLabel.text = secondNum.description
    }
    @IBAction func WhichCalc(_ sender: UIButton) {
        whichCalc = Double(sender.tag)
        firstNum = secondNum
    }
    @IBAction func EqualButton(_ sender: Any) {
        switch whichCalc {
        case 1:
            firstNum = firstNum + secondNum
            break
        case 2:
            firstNum = firstNum - secondNum
            break
        case 3:
            firstNum = firstNum * secondNum
            break
        case 4:
            firstNum = firstNum / secondNum
            break
        default:
            print("Error")
        }
        secondNum = firstNum
        NumLabel.text = firstNum.description
    }
    @IBAction func ACButton(_ sender: Any) {
        firstNum = 0
        secondNum = 0
        NumLabel.text = firstNum.description
    }
    @IBAction func PlusOrMinus(_ sender: Any) {
        secondNum *= -1
        NumLabel.text = secondNum.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstNum = 0.0
        secondNum = 0.0
        whichCalc = 0.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

