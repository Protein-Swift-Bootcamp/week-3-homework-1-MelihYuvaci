//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Melih Yuvacı on 21.12.2022.
//

import Foundation

protocol CalculatorBrainDelegate {
    func gender()
}

struct CalculatorBrain{
    
    func getLeanBody()-> String{
        return ""
    }
    
    func getIdealBody()-> String{
        return ""
    }
    
    func getBodySurface()-> String{
        return ""
    }
    
    func getBMIValue()-> String{
        return ""
    }
    
    func getResults()-> String{
        return ""
    }
    
    func getColor()-> String{
        return ""
    }
    
}
