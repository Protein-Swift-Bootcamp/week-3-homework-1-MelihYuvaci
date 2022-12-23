//
//  ClosureViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

class ClosureViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    //Define a closure that takes string parameters and returns nothing
    var dataClosure: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = ""
        
    }
    
    
    @IBAction func closureButtonClicked(_ sender: UIButton) {
        if textField.text != "" {
            //if not empty we add the data
            dataClosure?(textField.text!)
        }
        dismiss(animated: true,completion: nil)
    }
    

}
