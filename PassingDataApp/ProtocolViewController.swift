//
//  ProtocolViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

//we define the protocol
protocol protocolViewControllerDelegate{
    func sendData(data: String)
}

class ProtocolViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    //We define delegate as optional protocol
    var delegate : protocolViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = ""
    }
    
    @IBAction func sendProtocolButtonClicked(_ sender: UIButton) {
        // We add the data if not empty
        if textField.text != "" {
            self.delegate?.sendData(data: textField.text!)
        }
        dismiss(animated: true,completion: nil)
    }
    

}
