//
//  FilmesTableViewCell.swift
//  CustomizacaoDeTelas_aula
//
//  Created by Juliane Lopes on 30/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class FilmesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var posterFilmeImageView: UIImageView!
    @IBOutlet weak var tituloFilmeLabel: UILabel!
    @IBOutlet weak var generoFilmeLabel: UILabel!
    

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configuraCelulaFilme(posterFilme: UIImage, tituloFilme: String, generoFilme: String){
        posterFilmeImageView.image = posterFilme
        tituloFilmeLabel.text = tituloFilme
        generoFilmeLabel.text = generoFilme
    }
    
    func arredondarImagem(){
        posterFilmeImageView.layer.cornerRadius = 10
        posterFilmeImageView.clipsToBounds = true
        
        // largura de borda
        //posterFilmeImageView.layer.borderWidth = 0
    }

}
