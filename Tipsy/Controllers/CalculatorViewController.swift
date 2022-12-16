

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    
    @IBOutlet weak var zeroPcButton: UIButton!
    
    @IBOutlet weak var tenPcButton: UIButton!
    
    @IBOutlet weak var twentyPcButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipsBrain = TipsBrain()
    
  
  


    @IBAction func tipChanged(_ sender: UIButton) {
        
        
        tipsBrain.updateTipsPercentage(currentValue: sender.currentTitle ?? "% 0.0")
        selectAndDeslectButtons(buttonTitle: tipsBrain.selectdValue)
      
       
    }
    
    
    func selectAndDeslectButtons( buttonTitle : String ){
        if(buttonTitle == zeroPcButton.currentTitle){
            zeroPcButton.isSelected = true
            tenPcButton.isSelected = false
            twentyPcButton.isSelected = false
        }else if(buttonTitle == tenPcButton.currentTitle){
            zeroPcButton.isSelected = false
            tenPcButton.isSelected = true
            twentyPcButton.isSelected = false
        }else if(buttonTitle == twentyPcButton.currentTitle){
            zeroPcButton.isSelected = false
            tenPcButton.isSelected = false
            twentyPcButton.isSelected = true
        }
       
    }
    
    @IBAction func stipperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        
        tipsBrain.getTotalPeople(totalValue: Int(String(format: "%.0f", sender.value))!)
        
      
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
      
        //tip

      
        tipsBrain.getTotalMountForEachPerson(totalNumber: billTextField.text!)
        
       
        
        self.performSegue(withIdentifier: "GoToResults", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "GoToResults"){
            let destinationVC = segue.destination  as! ResultsViewController
            destinationVC.valueForEachPerson = tipsBrain.returnTotalForEachPerosn()
            destinationVC.numberOfPeople = tipsBrain.returnTotalPeople()
            destinationVC.tipPercentage = tipsBrain.returnSelectedPersnatge()
        }
    }
    
    
}

