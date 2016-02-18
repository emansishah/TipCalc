//
//  SecondViewController.swift
//  TipCalc
//
//  Created by Mansi Shah on 2/17/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var AmountTextField: UITextField!
    @IBOutlet weak var TenPercentTipLabel: UILabel!
    @IBOutlet weak var FifteenPercentTipLabel: UILabel!
    @IBOutlet weak var TwentyPercentTipLabel: UILabel!
    @IBOutlet weak var CustomPercentTipLabel: UILabel!
    @IBOutlet weak var CustomPercent: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CalculateTip(sender: AnyObject) {
        let percent:Double = Double(CustomPercent.text!)!
        let amount:Double = Double(AmountTextField.text!)!
        let TenPercentofAmount:Double = amount * 0.1
        let FifteenPercentofAmount:Double = amount * 0.15
        let TwentyPercentofAmount:Double = amount * 0.2
        let CustomPercentofAmount:Double = amount * percent/100
        TenPercentTipLabel.text = String(TenPercentofAmount)
        FifteenPercentTipLabel.text = String(FifteenPercentofAmount)
        TwentyPercentTipLabel.text = String(TwentyPercentofAmount)
        CustomPercentTipLabel.text = String(CustomPercentofAmount)
    }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */