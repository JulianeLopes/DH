//
//  ViewController.swift
//  DatePicker
//
//  Created by Juliane Lopes on 04/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func datePickerMudouDeValor(_ sender: Any) {
        let dataEHora = datePicker.date
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC-3")
        
        let stringData = dateFormatter.string(from: dataEHora)
        
        print("minha data formatada é - \(stringData)")
        
        print("mudou valor da data - \(dataEHora)")
    }
    
   
    
}

