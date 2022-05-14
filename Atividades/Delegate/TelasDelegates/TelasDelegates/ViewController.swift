//
//  ViewController.swift
//  TelasDelegates
//
//  Created by Juliane Lopes on 04/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var telefoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeTextField.delegate = self
        cpfTextField.delegate = self
        telefoneTextField.delegate = self
        emailTextField.delegate = self
    }
    
    func verificaCampoPreenchido(textField: UITextField) -> Bool{
        return textField.text != nil && textField.text != ""
    }
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldShouderBeginEditing(_textField: UITextField) -> Bool{
        if textField.tag == 2{
            if verificaCampoPreenchido(textField: nomeTextField){
                if nomeTextField.text != nil{
                    return true
                }
            }else{
                return false
            }
        }
        return true
    }
}

