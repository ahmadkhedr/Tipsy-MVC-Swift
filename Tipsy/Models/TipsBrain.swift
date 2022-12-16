//
//  TipsBrain.swift
//  Tipsy
//
//  Created by Ahmad Khedr on 16/12/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct TipsBrain {
    
    
    var selectdValue : String = "0.0"
    var tip = 1.0
    var totalPerople = 0
    var finalVlaue = ""
    
    mutating func updateTipsPercentage(currentValue : String)  {
        var newValue = currentValue
        selectdValue = newValue
        newValue.removeLast()
        tip = Double(Double(newValue)! / 100)
       
    }
    
    mutating func getTotalPeople(totalValue : Int){
        totalPerople = totalValue
    }
    
    mutating func getTotalMountForEachPerson(totalNumber :String) {
        let bill = Double(totalNumber)
       
        
        let totalForEachPerson = ( (bill ?? 0.0) + ( (bill ?? 0.0) * tip )) / Double(totalPerople)
        
        
         finalVlaue = String(format: "%.2f", totalForEachPerson)
        
       
    }
    
    func returnTotalPeople()->Int {
        return totalPerople
    }
    
    func returnTotalForEachPerosn()-> String{
        return finalVlaue
    }
    func returnSelectedPersnatge()-> String{
        return selectdValue
    }
}
