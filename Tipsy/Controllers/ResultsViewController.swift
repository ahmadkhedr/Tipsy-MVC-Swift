//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Ahmad Khedr on 15/12/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLable: UILabel!
    
    var valueForEachPerson : String?
    
    var numberOfPeople : Int?
    
    var tipPercentage : String?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = valueForEachPerson!
        
        settingsLable.text = "Split between \(numberOfPeople!) people, with \(tipPercentage!) tip."

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true,completion: nil)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
