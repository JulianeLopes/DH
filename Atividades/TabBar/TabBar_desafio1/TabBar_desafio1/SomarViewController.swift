//
//  SomarViewController.swift
//  TabBar_desafio1
//
//  Created by Juliane Lopes on 09/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class SomarViewController: UIViewController {
    
    
    @IBOutlet weak var primeiroNumero: UITextField!
    @IBOutlet weak var segundoNumero: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func somar(_ sender: Any) {
        let soma = Int(primeiroNumero.text!)! + Int(segundoNumero.text!)!
        resultado.text =  String(soma)
   }
}

