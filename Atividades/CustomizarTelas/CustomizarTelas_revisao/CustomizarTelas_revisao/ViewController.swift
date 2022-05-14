//
//  ViewController.swift
//  CustomizarTelas_revisao
//
//  Created by Juliane Lopes on 27/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomesTableView: UITableView!
    
    let nomes = ["A", "B", "C", "D"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomesTableView.dataSource = self
        
    }
}

extension ViewController: UITableViewDataSource{
    // numero de linhas na sessao
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomes.count
    }
    
    // celulas na linha
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "nomeCell") as? NomesTableViewCell{
            cell.configuraCelula(nome: nomes[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
   
}



