//
//  ViewController.swift
//  SementedControl_desafio
//
//  Created by Juliane Lopes on 04/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UIView!
    
    @IBOutlet weak var imagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configurarImagem(posterDaPrincesa: UIImage){
        imagem.image = posterDaPrincesa
    }


}

