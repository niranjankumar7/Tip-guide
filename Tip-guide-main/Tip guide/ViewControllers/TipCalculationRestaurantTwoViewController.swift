//
//  TipCalculationRestaurantTwoViewController.swift
//  Tip guide
//
//  Created by Rashmi Rao on 31/05/21.
//

import Foundation
import UIKit

class TipCalculationRestaurantTwoViewController : UIViewController {
    @IBOutlet weak var billAmt : UITextView!
    @IBOutlet weak var tipAmt : UITextView!
    var billAmount : String = ""
    var calculatedTip : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Calculated Tip"
        billAmt.text = billAmount
        tipAmt.text = calculatedTip
    }
    
    @IBAction func writeReviewButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "writeReviewButton", sender: self)
    }
    
}

