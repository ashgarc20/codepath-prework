//
//  ViewController.swift
//  Prework
//
//  Created by Ashley Garcia-Arellano on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tips = bill * tipPercentages[tip.selectedSegmentIndex]
        let total = bill + tips
        
        // Update Tip Amount Lable
        tipAmountLabel.text = String(format: "$%.2f", tips)
        // Update Total Amount
        totalLable.text = String(format: "$%.2f", total)
    }
}

