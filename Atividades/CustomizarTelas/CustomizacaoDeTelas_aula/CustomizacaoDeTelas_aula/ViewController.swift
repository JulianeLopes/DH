//
//  ViewController.swift
//  CustomizacaoDeTelas_aula
//
//  Created by Juliane Lopes on 30/04/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let filmes: [Filme] = [
        Filme(poster: UIImage(named: "sonic") ?? .init(), titulo: "Sonic 2", genero: "Gênero: Ação"),
        Filme(poster: UIImage(named: "os caras malvados") ?? .init(), titulo: "Os Caras Malvados", genero: "Gênero: Ação")
    ]
    
    let series: [Serie] = [
        Serie(poster: UIImage(named: "Lucifer") ?? .init(), titulo: "Lucifer"),
        Serie(poster: UIImage(named: "la casa de papel") ?? .init(), titulo: "La Casa de Papel")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}


extension ViewController: UITableViewDataSource{
    
    // configurar numero de linhas na secao
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // quantidade de linhas nas secoes: nesse caso teremos 2 linhas, sendo 1 filme e 1 serie
        
        if section == 0 { return filmes.count}
        if section == 1 { return series.count}
        
        return 0
    }
    
    // configurar a celula para linha
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // celulas na linha, teremos 2 celulas
        
        let section = indexPath.section
        let row = indexPath.row
        
        // configurar filmes
        if section == 0 { // chamar a FilmestableViewCell
            if let cellFilme = tableView.dequeueReusableCell(withIdentifier: "filmeCell") as? FilmesTableViewCell {
                let filme = filmes[row]
                
                // configurar celula da FilmestableViewCell
                cellFilme.configuraCelulaFilme(
                    posterFilme: filme.poster,
                    tituloFilme: filme.titulo,
                    generoFilme: filme.genero)
                
                // arredondar borda
                cellFilme.arredondarImagem()
                
                // colorir as linhas da celula
                //                if row % 2 != 0 {
                //                    cellFilme.backgroundColor = .red
                //                }
                // retornar a celula
                return cellFilme
            }
        }
        // configurar serie
        if section == 1 {// chamar a SeriestableViewCell
            if let cellSerie = tableView.dequeueReusableCell(withIdentifier: "serieCell") as? SeriesTableViewCell{
                let serie = series[row]
                
                // configurar celula da SeriestableViewCell
                cellSerie.configuraCelulaSerie(
                    posterSerie: serie.poster,
                    tituloSerie: serie.titulo)
                
                
                // arredondar borda
                cellSerie.arredondarImagem()
                
                // colorir linha da celula
//                if row % 2 != 0 {
//                    cellSerie.backgroundColor = .init(red: 148.0/255.0, green: 122.0/255.0, blue: 214.0/255.0, alpha: 1.0)
//                }
                
                return cellSerie
            }
        }
        return UITableViewCell()
    }
    
    // configurar a quantidade de secoes
    func numberOfSections(in tableView: UITableView) -> Int {
        // nesse caso retornara 2 secoes, sendo 1 para filmes e 1 para serie
        return 2
    }
    
    //configurar o titulo na secao
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // nesse caso configurar 2 titulos, sendo 1 Filmes e 1 Serie
        
        if section == 0 { return "Filmes"}
        if section == 1 { return "Series"}
        
        return ""
    }
}
