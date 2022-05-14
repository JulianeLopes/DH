//
//  NomesTableViewCell.swift
//  CustomizarTelas_revisao
//
//  Created by Juliane Lopes on 27/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class NomesTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 }
    
    func configuraCelula(nome: String){
        nomeLabel.text = nome
    }

}
