//
//  ViewController.swift
//  PickerView_desafio2
//
//  Created by Juliane Lopes on 06/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var Label: UILabel!
    
    var horas: [String] = []
    var minutos: [String] = []
    var segundos: [String] = []
    
    var valorHora: String = ""
    var valorMinuto: String = ""
    var valorSegundo: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        Label.text = "0 horas, 0 min, 0 seg"
        
        // inicializa o array de horas
        
        for i in 0..<24{
            let stringHora = String(i)
            horas.append(stringHora)
        }
        
        // inicia o array de minutos
        for i in 0..<60{
            let stringMinuto = String(i)
            horas.append(stringMinuto)
        }
        for i in 0..<24{
            let stringSegundo = String(i)
            horas.append(stringSegundo)
        }
        
        valorHora = horas[0]
        valorMinuto = minutos[0]
        valorSegundo = segundos[0]
    }

    @IBAction func botaoIniciar(_ sender: Any) {
        
        Label.text = "\(valorHora) horas, \(valorMinuto) min, \(valorSegundo) seg"
        
    }
    
    
    @IBAction func botaoCancelar(_ sender: Any) {
         Label.text = "0 Horas, 0 min, 0 seg"
    }
}


extension ViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            valorHora = horas[row]
        }
        if component == 1{
            valorMinuto = minutos[row]
        }
        if component == 2 {
            valorSegundo = segundos[row]
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 { // horas
            return "\(horas[row]) horas"
        }
        if component == 1 { // minutos
            return "\(minutos[row]) min"
        }
        if component == 2 { // segundos
            return "\(segundos[row]) seg"
        }
        return nil
    }
}

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 { return horas.count}
        if component == 1 { return minutos.count}
        if component == 2 { return segundos.count}
        
        return 0
    }
}

