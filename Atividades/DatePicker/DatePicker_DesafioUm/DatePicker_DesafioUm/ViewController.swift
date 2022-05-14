//
//  ViewController.swift
//  DatePicker_DesafioUm
//
//  Created by Juliane Lopes on 04/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var telefoneTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var telefoneLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func MudouValorDatePicker(_ sender: Any) {
        // obrigatorio essa chamada
        let dataEHora = datePicker.date
        
        // formatacao da data e hora local
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC-3")
        
        let stringData = dateFormatter.string(from: dataEHora)
        
        print("minha data formatada é - \(stringData)")
        print("mudou valor da data - \(dataEHora)")
        
        atualizarNomeLabel()
        atualizarTelefoneLabel()
        atualizarDataEHora(date: dataEHora)
    }
    
    func atualizarNomeLabel(){
        nomeLabel.text = nomeTextField.text
        
       }
       func atualizarTelefoneLabel(){
        telefoneLabel.text = telefoneTextField.text
           
       }
    func atualizarDataEHora(date: Date){
        dataLabel.text = "\(date)"
      }
}

