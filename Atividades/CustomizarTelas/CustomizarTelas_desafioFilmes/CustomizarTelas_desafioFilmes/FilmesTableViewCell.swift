//
//  FilmesTableViewCell.swift
//  CustomizarTelas_desafioFilmes
//
//  Created by Juliane Lopes on 29/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class FilmesTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
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
    
    func configuraCelulaDoFilme(posterFilme: UIImage, tituloFilme: String, generoFilme: String){
        posterImageView.image = posterFilme
        tituloFilmeLabel.text = tituloFilme
        generoFilmeLabel.text = generoFilme
        
    }

}
