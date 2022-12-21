//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Melih Yuvacı on 19.12.2022.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var maleImageView: UIImageView!
    @IBOutlet weak var femaleImageView: UIImageView!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    var selectedIndex = 0
    var bmiManager = BMIManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentControl()
        
    }
    
    
    @IBAction func segmentedControlSelected(_ sender: UISegmentedControl) {
        
        segmentControl()
        selectedIndex = sender.selectedSegmentIndex
        
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toResultVC", sender: nil)
        if let gender = genderSegmentedControl.titleForSegment(at: selectedIndex){
            print(gender)
            if let height = Int(heightTextField.text!){
                print(height)
                if let weight = Int(weightTextField.text!){
                    print(weight)
                    bmiManager.calculateBMI(gender: gender, weight: weight, height: height)
                }
            }
            
        }
        
        
    }
    
    
    func segmentControl (){
        if genderSegmentedControl.selectedSegmentIndex == 0 {
            femaleImageView.alpha = 0.5
            maleImageView.alpha = 1
            
        }else if genderSegmentedControl.selectedSegmentIndex == 1 {
            maleImageView.alpha = 0.5
            femaleImageView.alpha = 1
        }
    }
    
    
}

