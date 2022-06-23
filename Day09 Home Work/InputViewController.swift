//
//  InputViewController.swift
//  Day09 Home Work
//
//  Created by Vu Nam Ha on 22/06/2022.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.keyboardType = .default
        authorTextField.keyboardType = .default
        priceTextField.keyboardType = .numberPad
        
    }
    
    @IBAction func actionInputButton(_ sender: Any) {
        if let name = nameTextField.text,
           let author = authorTextField.text,
           let price = priceTextField.text,
           name.count > 0,
           author.count > 0,
           price.count > 0 {
            let detailVC = DetailViewController()
            detailVC.name = nameTextField.text!
            detailVC.author = authorTextField.text!
            detailVC.price = Int(priceTextField.text!) ?? 0
            detailVC.modalPresentationStyle = .fullScreen
            present(detailVC, animated: true)
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
