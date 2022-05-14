//
//  ViewController.swift
//  PickerView_desafio1
//
//  Created by Juliane Lopes on 06/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nomeLabel: UILabel!

    @IBOutlet weak var pickerView: UIPickerView!
    
    let arrayNomes = ["Juliane", "Giovanna", "Raul", "Jessica", "Adriano"]
    
    var nomeSelecionado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    
    @IBAction func botaoButton(_ sender: Any) {
        nomeLabel.text = nomeSelecionado
    }
    
    
}



extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nomeSelecionado = arrayNomes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayNomes[row]
    }
}

extension ViewController: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayNomes.count
    }
   
}
