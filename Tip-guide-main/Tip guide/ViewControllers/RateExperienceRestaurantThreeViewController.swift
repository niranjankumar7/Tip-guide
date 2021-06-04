//
//  RateExperienceRestaurantThreeViewController.swift
//  Tip guide
//
//  Created by Rashmi Rao on 31/05/21.
//

import Foundation
import UIKit

public class RateExperienceRestaurantThreeViewController : UIViewController {
    @IBOutlet weak var foodRating : UILabel!
    @IBOutlet weak var ambienceRating : UILabel!
    @IBOutlet weak var serviceRating : UILabel!
    @IBOutlet weak var hygieneRating : UILabel!
    
    public var fr : Int = 0
    public var ar : Int = 0
    public var sr : Int = 0
    public var hr : Int = 0
    public var bill : String = ""
    public var billAmt : String = ""
    public var perc : String = ""
    public var n = 0
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "Rate Experience"
        bill = billAmt
        

    }
    
    
    @IBAction func foodUIStepper(_ sender: UIStepper) {
        foodRating.text = String(sender.value)
        fr = Int(sender.value)
        
    }
    
    @IBAction func ambienceUIStepper(_ sender: UIStepper) {
        
        ambienceRating.text = String(sender.value)
        ar = Int(sender.value)
        
    }
    
    @IBAction func serviceUIStepper(_ sender: UIStepper) {
        serviceRating.text = String(sender.value)
        sr = Int(sender.value)
        
    }
    
    @IBAction func hygieneUIStepper(_ sender: UIStepper) {
        hygieneRating.text = String(sender.value)
        hr = Int(sender.value)
        
    }
    
    
    var x : Int = 0
    
    func calculation(n : inout Int) -> Int {
    let a = fr
    let b = ar
    let c = sr
    let d = hr
    n = a+b+c+d
    return n
    }
    
    public var tipamt : Double = 0.0
    var billAmount : String = ""
    var calculatedTip : String = ""
    
 var x = 0
    
    func calculation(n : Int) {
        let a = foodRating as? Int
        let b = ambienceRating as? Int
        let c = serviceRating as? Int
        let d = hygieneRating as? Int
        n = a+b+c+d
    }
    
    
    
    public var tipamt = 0
    
    var billAmount : String = ""
    var calculatedTip : String = ""
    
    var c = calculation(x)
    tipamt = bill % c
    
    @IBAction func nextButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "nextButton", sender: self)
        billAmount = bill.text!
        calculatedTip = tipamt.text!
    }
    
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MySegueID" {
            if let destination = segue.destination as? TipCalculationRestaurantThreeViewController {
                destination.billAmount = self.billAmount
                destination.calculatedTip = self.calculatedTip
            }
        }
    }

}
