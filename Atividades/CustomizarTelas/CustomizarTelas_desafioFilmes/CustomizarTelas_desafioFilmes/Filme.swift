//
//  Filme.swift
//  CustomizarTelas_desafioFilmes
//
//  Created by Juliane Lopes on 29/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import Foundation
import UIKit

class Filme {
    let poster: UIImage
    let titulo: String
    let genero: String
    
  init(poster: UIImage, titulo: String, genero: String) {
        self.poster = poster
        self.titulo = titulo
        self.genero = genero
    }
}
