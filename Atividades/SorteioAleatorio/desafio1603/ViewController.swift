//
//  ViewController.swift
//  desafio1603
//
//  Created by Juliane Lopes on 16/03/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  let listaNomes: [String] = ["a", "b", "c", "d", "e"]
    
    @IBOutlet weak var nomes: UILabel!
    
    @IBAction func SortearButton(_ sender: Any) {
        if let sorteio = listaNomes.randomElement(){
            nomes.text = sorteio
      
            //aleatorio()
        }
    }
    
    func aleatorio() {
        if let sorteio = listaNomes.randomElement(){
            nomes.text = sorteio
        }
    }
    
    /*  var lista: [String] = []
     lista.append("1")
     lista.append("2")
     lista.append("3")
     lista.append("4")
     lista.append("5")
     lista.append("6")
     lista.append("7")
     lista.append("8")
     lista.append("9")
     lista.append("10")
     
     let nomesAleatorios = arc4random_uniform(10)
     nomes.text = lista[ Int (nomesAleatorios)]
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
