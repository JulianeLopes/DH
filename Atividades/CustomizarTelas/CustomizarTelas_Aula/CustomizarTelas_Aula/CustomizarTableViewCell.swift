//
//  CustomizarTableViewCell.swift
//  CustomizarTelas_Aula
//
//  Created by Juliane Lopes on 27/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class CustomizarTableViewCell: UITableViewCell {
 
    
    @IBOutlet weak var label: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func mudarNomeDaLabel(nome: String){
        label.text = nome
    }
    
}
