//
//  ViewController.swift
//  SegmentedControll_DesafioProgramador
//
//  Created by Juliane Lopes on 04/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet weak var serHumanoTableView: UITableView!
    @IBOutlet weak var programadorPessoaSegmentedControl: UISegmentedControl!
    
    let programadores: [SerHumano] = [
        SerHumano(foto: UIImage(named: "walt") ?? .init(),
                  nome: "Walt Disney")]
    
    let pessoas: [SerHumano] = []
    
    var listaParaTableView: [SerHumano] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaParaTableView = programadores
        serHumanoTableView.dataSource = self
    }

    @IBAction func mudouValorNoSegmentedControl(_ sender: Any) {
        let index = programadorPessoaSegmentedControl.selectedSegmentIndex
        
        switch index {
        case 0: // programadores
            listaParaTableView = programadores
            serHumanoTableView.reloadData()
        case 1: // pessoas
            listaParaTableView = pessoas
            serHumanoTableView.reloadData()
        default:
            break
        }
     }
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "serHumanoCell") as? SerHumanoTableViewCell{
            cell.configuraCelula(
                serHumano: listaParaTableView[indexPath.row]
                )
        return cell
        }
    return UITableViewCell()
    }
    
    
}

