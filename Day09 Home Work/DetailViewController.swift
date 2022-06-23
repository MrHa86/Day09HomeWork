//
//  DetailViewController.swift
//  Day09 Home Work
//
//  Created by Vu Nam Ha on 22/06/2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name: String = ""
    var author: String = ""
    var price: Int = 0

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.text = name
        nameTextField.isUserInteractionEnabled = false
        authorTextField.text = author
        authorTextField.isUserInteractionEnabled = false
        priceTextField.text = "\(price)"
        priceTextField.isUserInteractionEnabled = false
    }

    @IBAction func actionEditButton(_ sender: Any) {
        let editVC = EditViewController()
        editVC.name = self.nameTextField.text ?? ""
        editVC.author = self.authorTextField.text ?? ""
        editVC.price = Int(self.priceTextField.text ?? "") ?? 0
        editVC.modalPresentationStyle = .fullScreen
        
        editVC.handleUpdate = {
            self.nameTextField.text = editVC.nameTextField.text
            self.authorTextField.text = editVC.authorTextField.text
            self.priceTextField.text = editVC.priceTextField.text
        }
        present(editVC, animated: true)
    }
    
    @IBAction func actionBackButton(_ sender: Any) {
        dismiss(animated: true)
    }
    

}
