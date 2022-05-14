//
//  SubtrairViewController.swift
//  TabBar_desafio1
//
//  Created by Juliane Lopes on 09/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class SubtrairViewController: UIViewController {

    @IBOutlet weak var subtrairPrimeiroNumero: UITextField!
    @IBOutlet weak var subtrairSegundoNumero: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
     
    
    @IBAction func resultadoSubtrair(_ sender: Any) {
        
        let subtrair = Int(subtrairPrimeiroNumero.text!)! - Int(subtrairSegundoNumero.text!)!
        resultado.text = String(subtrair)
    }
 }
