//
//  ViewController.swift
//  PickerView
//
//  Created by Juliane Lopes on 06/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    let nomes = ["Joao", "Maria", "Jose", "Roberto"]
    let nomesInvertidos = ["Roberto", "Jose", "Maria", "Joao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      switch component {
      case 0:
        print("Nome selecionado: \(nomes[row])")
        case 1:
        print("Nome invertidos: \(nomesInvertidos[row])")
      default:
        return
    }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return nomes[row]
        case 1:
            return nomesInvertidos[row]
        default:
            return nil
        }
        
    }
    
}

extension ViewController: UIPickerViewDataSource{
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch component{
        case 0:
            return nomes.count
        case 1:
            return nomesInvertidos.count
        default:
            break
        }
        return 0
    }
    
}

