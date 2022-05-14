//
//  ViewController.swift
//  TableView_Desafio2
//
//  Created by Juliane Lopes on 25/04/22.
//  Copyright © 2022 YouTube. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dicionario:[String: [String]] = [
        "A": ["Amanda", "Alice", "Allison"],
        "B": ["Barbara", "Bruno"]
    ]

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let chaves = Array(dicionario.keys)
        return dicionario[chaves[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

