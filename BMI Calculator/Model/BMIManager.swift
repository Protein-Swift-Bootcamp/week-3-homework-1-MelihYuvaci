//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Melih Yuvacı on 21.12.2022.
//

import Foundation

protocol BMIManagerDelegate {
    func didUpdateBMI(lean: String, ideal: String, surface: String, bmi: String)
}

struct BMIManager{
    
    var delegate : BMIManagerDelegate?
    var bmi: BMI?
    
    mutating func calculateBMI(gender: String, weight: Int, height: Int){
        
        let leanBody = getLeanBody(gender, weight,  height)
        let idealBody = getIdealBody( gender, height, weight)
        let bodySurface = getBodySurface(height, weight)
        let bmi = getBmi(height, weight)
        
        delegate?.didUpdateBMI(lean: leanBody, ideal: idealBody, surface: bodySurface, bmi: bmi)
        
    }
    
    
    func getLeanBody(_ gender: String,_ weight: Int,_ height: Int)-> String{
        if gender == "Erkek"{
            let value = Int(((1.10 * Double(weight)) - 128 * (pow(Double(weight), 2) / pow(Double(height), 2))))
            return String(value) + " kg"
        }else if gender == "Kadın"{
            let value = Int(((1.07 * Double(weight)) - 148 * (pow(Double(weight), 2) / pow(Double(height), 2))))
            return String(value) + " kg"
        }
        return ""
    }
    
    
    func getIdealBody(_ gender: String,_ height: Int,_ weight:Int)-> String{
        if gender == "Kadın"{
            let value = Int(45.5 + 2.3 * ((Double(height) / 2.54) - 60))
            return  String(value) + " kg"
        }else if gender == "Erkek"{
            let value = Int(50 + 2.3 * ((Double(height) / 2.54) - 60))
            return  String(value) + " kg"
        }else{
            return ""
        }
    }
    
    
    func getBodySurface(_ height: Int,_ weight: Int)-> String{
        let value = sqrt((Double(height) * Double(weight))/3600)
        return String(format: "%.1f", value) + " m2"
    }
    
    mutating func getBmi(_ height: Int,_ weight: Int)->String{
        let metersHeight = Double(height) / 100
        let value = Double(weight) / (pow(metersHeight, 2))
        
        return String(format: "%.1f", value) + " kg/m2"
    }
    
    func getResults()-> String{
        return ""
    }
    
    func getColor()-> String{
        return ""
    }
    
}
