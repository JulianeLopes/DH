//
//  SerHumanoTableViewCell.swift
//  SegmentedControll_DesafioProgramador
//
//  Created by Juliane Lopes on 04/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class SerHumanoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fotoImageView: UIImageView!
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configuraCelula(foto: UIImage, nome: String){
        fotoImageView.image = foto
        nomeLabel.text = nome
    }
    func configuraCelula(serHumano: SerHumano){
        fotoImageView.image = serHumano.foto
        nomeLabel.text = serHumano.nome
    }
}
