//
//  ViewController.swift
//  CustomizarTelas_Aula
//
//  Created by Juliane Lopes on 27/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let nomes = ["Juliane", "Rubens"]

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellAmarela") as? CustomizarTableViewCell {
            cell.mudarNomeDaLabel(nome: nomes[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    
}

