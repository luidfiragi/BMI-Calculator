//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Emerson Luiz Firagi on 02/02/22.
//

import UIKit

class ResultViewController: UIViewController {

    
    // MARK: - Outlets
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // MARK: - Variaveis
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    // MARK: - Life cicle view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    // MARK: - Actions
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
