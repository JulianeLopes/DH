//
//  ViewController.swift
//  Collections_exercicioCarro
//
//  Created by Juliane Lopes on 01/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let carros: [Carro] = [
    Carro(posterCarro: UIImage(named: "carro1") ?? .init()),
    Carro(posterCarro: UIImage(named: "carro2") ?? .init()),
    Carro(posterCarro: UIImage(named: "carro3") ?? .init()),
    Carro(posterCarro: UIImage(named: "carro4") ?? .init())
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let row = indexPath.row
        
        if let cellCarro = collectionView.dequeueReusableCell(withReuseIdentifier: "carroCell", for: indexPath) as? CarroCollectionViewCell{
            let carro = carros[row]
            
            cellCarro.configurarImagem(posterCarro: carro.posterCarro)
            
            cellCarro.arredondarEColorirImagem(arredondamentoDaImagem: 50, larguraDaBorda: 2, corDaBorda: .init(srgbRed: 255/255, green: 255/255, blue: 255/255, alpha: 1))
            
            return cellCarro
        }
        return UICollectionViewCell()
    }
}
