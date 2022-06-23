//
//  HomeViewController.swift
//  Day09_HomeWork02
//
//  Created by Vu Nam Ha on 22/06/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextField.keyboardType = .numberPad
    }
    
    @IBAction func actionCheckButton(_ sender: Any) {
        if let numberText: String = numberTextField.text,           // kiểm tra người dùng có nhập số tiền chưa
           let numberMoney: Float = Float(numberText) {
            var distance:Float = 0
            switch numberMoney {                                    // tính quãng đường distance
            case 0...110000:
                distance = numberMoney/11000
            case 110000...210000:
                distance = (numberMoney-110000)/10000 + 10
            case 210000...305000:
                distance = (numberMoney-210000)/9500 + 20
            default:
                distance = (numberMoney-305000)/9000 + 30
            }
            func round1(a:Double)->Double{                          // func lấy 2 số sau dấu , của Float
                    let mu = pow(10.0,2.0)
                    let r=round(a*mu)/mu
                    return r
                }
            
            let alertVC1 = UIAlertController(title: "Thông báo", message: "Quãng đường có thể đi được là: \(round1(a: Double(distance))) km", preferredStyle: .alert)
            let actionDone = UIAlertAction(title: "Ok", style: .default) { _ in
                print()
            }
            alertVC1.addAction(actionDone)
            present(alertVC1, animated: true)
        } else {                                                    // Bắt người dùng nhập lại
            let alertVC2 = UIAlertController(title: "Error", message: "Nhập số tiền", preferredStyle: .alert)
            let actionDone = UIAlertAction(title: "Ok", style: .default) { _ in
                print()
            }
            let actionCancel = UIAlertAction(title: "Cancel", style: .cancel)
            alertVC2.addAction(actionDone)
            alertVC2.addAction(actionCancel)
            present(alertVC2, animated: true)
            
        }
    }
    
    
    
}
