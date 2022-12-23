//
//  ViewController.swift
//  PassingDataApp
//
//  Created by Melih Yuvacı on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // observers listens and executes the method in the selector if there is a change
        NotificationCenter.default.addObserver(self, selector: #selector(didNotificationArrive(data:)), name: .init(rawValue: "notifiyData"), object: nil)
    }
    
    //MARK: - Perform Segues and Prepare for Segue
    
    //transitions are defined according to the clicked button
    
    @IBAction func protocolButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toProtocolVC", sender: nil)
    }
    
    @IBAction func closureButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toClosureVC", sender: nil)
    }
    
    @IBAction func notificationButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toNotificationVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toProtocolVC" {
            let destinationVC = segue.destination as! ProtocolViewController
            destinationVC.delegate = self
            
        }else if segue.identifier == "toClosureVC"{
            let destinationVC = segue.destination as! ClosureViewController
            destinationVC.dataClosure = { data in
                self.textLabel.text = data
            }
        }
    }
    
    //MARK: - Notification Center Selector Method
    
    @objc func didNotificationArrive(data: Notification){
        //If there is incoming data, casting is done and changed
        textLabel.text = data.object as? String
    }
    
}

//MARK: - Protocol ViewController Delegate

// Data comes in with delegate design pattern
extension ViewController : protocolViewControllerDelegate{
    func sendData(data: String) {
        textLabel.text = data
    }
}

