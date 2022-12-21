//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Melih Yuvacı on 19.12.2022.
//

import UIKit

class ResultsViewController: UIViewController, BMIManagerDelegate{

    @IBOutlet weak var leanBodyWeightLabel: UILabel!
    @IBOutlet weak var idealBodyWeightLabel: UILabel!
    @IBOutlet weak var bodySurfaceAreaLabel: UILabel!
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    var bmiManager = BMIManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiManager.delegate = self

    }
    
    func didUpdateBMI(lean: String, ideal: String, surface: String, bmi: String) {
        print(lean)
        print(ideal)
        print(surface)
        print(bmi)
    }

}


