//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Emerson Luiz Firagi on 02/02/22.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBmiValue()-> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: .green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
        
        print(bmiValue)
    }
}

//    var bmi: BMI?
//
//    func getBMIValue()-> String{
//        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
//        return bmiTo1DecimalPlace
//    }
//
//    func getAdvice()-> String{
//        return bmi?.advice ?? "No advice"
//    }
//
//    func getColor()-> UIColor{
//        return bmi?.color ?? .white
//    }
//
//    mutating func calculateBMI(height: Float, weight: Float){
//        let bmiValue = weight / (height * height)
//
//        if bmiValue < 18.5 {
//            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
//        }else if bmiValue < 24.9 {
//            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: .green)
//        }else{
//            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
//        }
//    }
//}
