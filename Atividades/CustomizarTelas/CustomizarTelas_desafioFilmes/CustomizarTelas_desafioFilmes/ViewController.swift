//
//  ViewController.swift
//  CustomizarTelas_desafioFilmes
//
//  Created by Juliane Lopes on 29/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let filmes: [Filme] = [
        Filme(poster: UIImage(named: "sonic") ?? .init(), titulo: "Sonic 2",genero: "ação"),
        .init(poster: UIImage(named: "os caras malvados") ?? .init(), titulo: "Os caras Malvados", genero: "ação")
    ]
    
    let series: [Serie] = [
        Serie(poster: UIImage(named: "Lucifer") ?? .init(), titulo: "Lucifer"),
        .init(poster: UIImage(named: "la casa de papel") ?? .init(), titulo: "La Casa de Papel")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {return filmes.count}
        if section == 1 {return series.count}
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        let row = indexPath.row
        
        if section == 0 { // filmes
            if let cell = tableView.dequeueReusableCell(withIdentifier: "filmeCell") as? FilmesTableViewCell {
                let filme = filmes[row]
                
                
                cell.configuraCelulaDoFilme(
                    posterFilme: filme.poster,
                    tituloFilme: filme.titulo,
                    generoFilme: filme.genero)
                
                if row % 2 != 0{
                    cell.backgroundColor = .red
                }
                
                return cell
            }
            
        }
        
        if section == 1 { // serie
            
            if let cell = tableView.dequeueReusableCell(withIdentifier: "seriesCell") as? SeriesTableViewCell {
                let serie = series[row]
                
                
                cell.configuraCelulaSerie(
                    posterSerie: serie.poster,
                    tituloSerie: serie.titulo)
                
                if row % 2 != 0{
                    cell.backgroundColor = .red
                }
                
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 { return "Filmes" }
        if section == 1 { return "Series" }
    
        return " "
        
    }
}
