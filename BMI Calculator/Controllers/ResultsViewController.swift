//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Melih Yuvacı on 19.12.2022.
//

import UIKit

class ResultsViewController: UIViewController,BMIManagerDelegate{

    @IBOutlet weak var leanBodyWeightLabel: UILabel!
    @IBOutlet weak var idealBodyWeightLabel: UILabel!
    @IBOutlet weak var bodySurfaceAreaLabel: UILabel!
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func didUpdateBMI(lean: String) {
        print(lean)
        leanBodyWeightLabel.text = lean
    }


}
