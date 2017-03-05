//
//  ViewController.swift
//  VendingMachine
//
//  Created by Abhiraj Bhatia on 2017-02-25.
//  Copyright © 2017 Test Org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentPrice: Float = 0
    
    @IBOutlet weak var CurrentPriceLabel: UILabel!
    
    @IBAction func item1(_ sender: Any) {
        UpdatePrice(newPrice: 10)
    }
    
    @IBAction func item2(_ sender: Any) {
        UpdatePrice(newPrice: 20)
    }
    
    @IBAction func item3(_ sender: Any) {
        UpdatePrice(newPrice: 30)
    }
    
    @IBAction func item4(_ sender: Any) {
        UpdatePrice(newPrice: 40)
    }
    
    func GetCurrentPrice() -> String{
        return String(format: "%.2f", currentPrice)
    }
    
    func UpdatePrice(newPrice: Float){
        currentPrice = newPrice
        CurrentPriceLabel.text = "$" + GetCurrentPrice()
    }
    
    @IBAction func buyBtn(_ sender: Any) {
        // create the alert
        let msg = currentPrice < 1 ? "Please select an item!" :
            "Are you sure? $" + GetCurrentPrice()
        
        
        let alert = UIAlertController(title: "Purchase Confirmation", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        
        if(currentPrice > 0){
            // add an action (button)
            alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: nil))
            
            alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: nil))
        }else{
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))

        }
       
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
    }

