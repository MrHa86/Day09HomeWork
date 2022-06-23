//
//  EditViewController.swift
//  Day09 Home Work
//
//  Created by Vu Nam Ha on 22/06/2022.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    var name: String = ""
    var author: String = ""
    var price:Int = 0
    var handleUpdate: (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.text = name
        authorTextField.text = author
        priceTextField.text = "\(price)"
        nameTextField.keyboardType = .default
        authorTextField.keyboardType = .default
        priceTextField.keyboardType = .numberPad
        
    }

    @IBAction func actionUpdateButton(_ sender: Any) {
        if let name = nameTextField.text,
           let author = authorTextField.text,
           let price = priceTextField.text,
           name.count > 0,
           author.count > 0,
           price.count > 0 {
            handleUpdate?()
            dismiss(animated: true)
        } else {
            let alertVC = UIAlertController(title: "Error", message: "Nhập đầy đủ các thông tin", preferredStyle: .alert)
            let actionDone = UIAlertAction(title: "Ok", style: .default) { _ in
                print()
            }
            let actionCancel = UIAlertAction(title: "Cancel", style: .cancel)
            alertVC.addAction(actionDone)
            alertVC.addAction(actionCancel)
            present(alertVC, animated: true)
        }
    }
    
    
    

}
