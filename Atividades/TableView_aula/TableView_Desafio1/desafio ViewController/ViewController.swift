//
//  ViewController.swift
//  desafio ViewController
//
//  Created by Juliane Lopes on 20/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayMarcasDeCarros = ["Fiat", "Honda", "Renalt", "BMW", "Audi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let carroSelecionado = arrayMarcasDeCarros[indexPath.row]
        
        print("carro: \(carroSelecionado)")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayMarcasDeCarros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let marcaDosCarros = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        marcaDosCarros.textLabel?.text =  arrayMarcasDeCarros[ indexPath.row ]
        
        return marcaDosCarros
    }
}
