//
//  ViewController.swift
//  GestureRecognizer_Desafio
//
//  Created by Juliane Lopes on 13/05/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var tapGesture: UIView!
    @IBOutlet weak var swipeGesture: UIView!
    @IBOutlet weak var longPressGesture: UIView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configGesture()
    }
    
    // MARK: - CONFGESTURE
    
    func configGesture(){
        
        // TAP configuracao do click
        let tap = UITapGestureRecognizer(
            target: self,
            action: #selector(tapGesture(_:))
        )
        self.tapGesture.addGestureRecognizer(tap)
        
        // SWIPE configuracao da direcao podendo ser pra cima, direita, esquerda, para baixo
        
        let swipe = UISwipeGestureRecognizer(
            target: self,
            action: #selector(swipeGesture(_:))
        )
        swipe.direction = .down
        self.swipeGesture.addGestureRecognizer(swipe)
        
        
        // LONGPRESS configuracao do apertar a tela
        let longPress = UILongPressGestureRecognizer(
            target: self,
            action: #selector(longPressGesture(_:))
        )
        longPress.minimumPressDuration = 2; self.longPressGesture.addGestureRecognizer(longPress)
    }
    
    
    // MARK: - Funções
    
    @objc func tapGesture(_ sender: UITapGestureRecognizer){
        self.count += 1
        self.resultadoLabel.text = String(count)
    }
    @objc func swipeGesture(_ sender: UISwipeGestureRecognizer){
        self.count -= 1
        self.resultadoLabel.text = String(count)
    }
    
    @objc func longPressGesture(_ sender: UILongPressGestureRecognizer){
        self.count -= 1
        self.resultadoLabel.text = String(count)
    }
    
}

