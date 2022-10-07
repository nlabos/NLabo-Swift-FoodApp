//
//  ViewController.swift
//  NLabo-Swift-FoodtrackerApp
//
//  Created by 髙津悠樹 on 2022/10/04.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Propertis
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.delegate = self
    }
    
    // MARK: Actions
    @IBAction func setDefaultButton(_ sendar: Any) {
        mealNameLabel.text = "Default"
    }


}


// MARK: TextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keybord
        textField.resignFirstResponder()
        return true
    }
}
