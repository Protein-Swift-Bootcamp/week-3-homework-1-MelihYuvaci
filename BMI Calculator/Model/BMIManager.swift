//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Melih Yuvacı on 21.12.2022.
//

import Foundation

protocol BMIManagerDelegate {
    func didUpdateBMI(lean: String)
}

struct BMIManager{
    
    var delegate : BMIManagerDelegate?
    
    func calculateBMI(gender: String, weight: Int, height: Int){
        
        let leanBody = getLeanBody(height:height , weight: weight)
        delegate?.didUpdateBMI(lean: leanBody)
        
        
    }
    
    func getLeanBody(height: Int, weight: Int)-> String{
        let value = sqrt((Double(height) * Double(weight))/3600)
        return String(format: "%.2f", value)
    }
    
    func getIdealBody()-> String{
        return ""
    }
    
    func getBodySurface()-> String{
        return ""
    }
    func getBmi()->String{
        return ""
    }
    
    func getResults()-> String{
        return ""
    }
    
    func getColor()-> String{
        return ""
    }
    
}
