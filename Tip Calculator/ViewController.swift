//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Srikar Prayaga on 9/05/20.
//  Copyright © 2020 Srikar Prayaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel:UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any)
    {
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        //calculate the tip and total
        let tipPercentages=[0.10,0.18,0.20]
        let tip=tipPercentages[tipControl.selectedSegmentIndex]*bill
        let total=bill+tip
        tipLabel.text=String(format:"$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
        
    }
    
}

