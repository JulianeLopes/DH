//
//  SeriesTableViewCell.swift
//  CustomizacaoDeTelas_aula
//
//  Created by Juliane Lopes on 30/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class SeriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var posterSerieImageView: UIImageView!
   @IBOutlet weak var tituloSerieLabel: UILabel!
    


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configuraCelulaSerie(posterSerie: UIImage, tituloSerie: String){
        posterSerieImageView.image = posterSerie
        tituloSerieLabel.text = tituloSerie
    }
    
    func arredondarImagem(){
        posterSerieImageView.layer.cornerRadius = 10
        posterSerieImageView.clipsToBounds = true
        
        // largura de borda
        //posterFilmeImageView.layer.borderWidth = 0
    }
}
