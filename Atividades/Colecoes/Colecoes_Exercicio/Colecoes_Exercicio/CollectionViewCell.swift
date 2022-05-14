//
//  CollectionViewCell.swift
//  Colecoes_Exercicio
//
//  Created by Juliane Lopes on 29/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imagem: UIImageView!
    
    func configurarImagem(posterCarro: UIImage){
        imagem.image = posterCarro
    }
    
    func arredondarImagem(){
        imagem.layer.cornerRadius = 80
        imagem.clipsToBounds = true
        
        imagem.layer.borderWidth = 3
        imagem.layer.borderColor = UIColor.white.cgColor
    }
}
