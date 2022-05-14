//
//  ViewController.swift
//  IBOutlet&&IBAction
//
//  Created by Juliane Lopes on 14/03/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorldLabel.text = "GoodBye World"
    }

    @IBAction func mudarTextoButtonAction(_ sender: Any) {
    }
    
}

