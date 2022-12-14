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
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.delegate = self
    }
    
    // MARK: Actions
    @IBAction func setDefaultButton(_ sendar: Any) {
        mealNameLabel.text = "Default"
    }
    
    @IBAction func selectImageFromPhotoLibrary(_ sendar: UITapGestureRecognizer){
        
    }

}

// MARK: TextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keybord
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        //ここのプログラムを追加することでできることは、⌘Kでキーボードを表示させて確定ボタンを押したときにLabelに表示をすることができるようになる
    }
}
