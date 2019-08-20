//
//  ViewController.swift
//  Tip-Top
//
//  Created by John Stanton Abrams on 8/12/19.
//  Copyright © 2019 John Stanton Abrams. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    // FIELDS
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    //@IBOutlet weak var roundSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        // HIDES KEYBOARD
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        //if(roundSwitch.isOn){
            
            //let newTotal = round(total)
            
            //if(newTotal > total){
                
                //tip = tip + (newTotal - total)
            //}
            
            //else{
                
                //tip = tip - (total - newTotal)
            //}
            
            //total = newTotal
        //}
            
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

