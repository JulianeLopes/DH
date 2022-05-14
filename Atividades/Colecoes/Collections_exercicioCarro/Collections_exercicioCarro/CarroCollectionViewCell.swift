//
//  CarroCollectionViewCell.swift
//  Collections_exercicioCarro
//
//  Created by Juliane Lopes on 01/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class CarroCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var posterCarroImageView: UIImageView!
    
    func configurarImagem(posterCarro: UIImage){
        posterCarroImageView.image = posterCarro
    }
    
    func arredondarImagem(arredondamentoDaImagem: CGFloat){
        posterCarroImageView.layer.cornerRadius = arredondamentoDaImagem
        posterCarroImageView.clipsToBounds = true
        
    }
    
    func colorirBorda(larguraDaBorda: CGFloat, corDaBorda: CGColor){
        posterCarroImageView.layer.borderWidth = larguraDaBorda
        posterCarroImageView.layer.borderColor = corDaBorda
    }
    
    func arredondarEColorirImagem(arredondamentoDaImagem: CGFloat, larguraDaBorda: CGFloat, corDaBorda: CGColor){
        arredondarImagem(arredondamentoDaImagem: arredondamentoDaImagem)
        colorirBorda(larguraDaBorda: larguraDaBorda, corDaBorda: corDaBorda)
    }
    
}
