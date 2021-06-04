//
//  InputBillRestaurantOneViewController.swift
//  Tip guide
//
//  Created by Rashmi Rao on 31/05/21.
//

import Foundation

import UIKit

public class InputBillRestaurantOneViewController : UIViewController {
    
    @IBOutlet weak var billAmount : UITextField!
    
    public var billAmt : String = "0"
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "Input Bill"
        
        billAmount.keyboardType = .numberPad
    }
    
    @IBAction func buttonClick(sender: UIButton) {
        self.performSegue(withIdentifier: "submit", sender: self)
        billAmt = billAmount.text!
    }
    
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MySegueID" {
            if let destination = segue.destination as? RateExperienceRestaurantOneViewController {
                destination.billAmt = self.billAmt
            }
        }
    }
}
