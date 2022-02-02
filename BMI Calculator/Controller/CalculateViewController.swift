//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Emerson Luiz Firagi on 27/01/22.
//

import UIKit

class CalculateViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // MARK: - Variavies
    
    var calculateBrain = CalculatorBrain()
    var bmi = "0.0"
    
    // MARK: - Life cicle View
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func heightSliderChanched(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculateBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculateBrain.getBmiValue()
            destinationVc.advice = calculateBrain.getAdvice()
            destinationVc.color = calculateBrain.getColor()
        }
    }
}

