//
//  ViewController.swift
//  TableView_aula
//
//  Created by Juliane Lopes on 20/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let arraySecoes = ["A", "B", "C", "D"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// extensao para nao encher a class da linha 11
extension ViewController: UITableViewDelegate{
    
    
    // clique da celula
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicou na linha \(indexPath.row) da secao \(indexPath.section) ")
    }
    
}

extension ViewController: UITableViewDataSource{
    
//     quantidade de linhas na secao
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 { return 1}
        if section == 1 { return 4}
        if section == 2 { return 2}
        if section == 3 { return 6}
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let section = indexPath.section
        
        print(" entrei na celula")
    
        let cell = UITableViewCell()
        cell.textLabel?.text = "Linha \(row) Secao \(section)"
        return cell
    }
    
//     numero de secoes
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraySecoes.count
        
//        return 10
        
    }
    
//     titulo da celula
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return arraySecoes[section]
        
//        if section == 0 { return "A"}
//        if section == 1 { return "B"}
//        if section == 2 { return "C" }
//        if section == 3 { return "D"}
//        return ""
    }
}

