//
//  ViewController.swift
//  ExerciciosBasicos
//
//  Created by Juliane Lopes on 17/03/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

  //  /*
     
     1.     Definir  o  método  arraysDiferentes(arrayUm:  [Int],  arrayDois:  [Int])  ->  Bool  que
    deve usar dois arrays de inteiros e retornar true caso sejam diferentes ou false caso
    coincidam.
    Invocar o método com os seguintes arrays e conferir se o resultado é o esperado:
    a. [1,2,3], [4,5,6]  -> true
    b. [1,2,3,4,5,6],[1] -> true
    c. [1,2,3], [1,2,3]  -> false
     
     func arraysDiferentes(_ arrayUm:  [Int],_ arrayDois:  [Int])  ->  Bool{

       if arrayUm != arrayDois{
       return true
       }else{
         return false
       }
     }
     print(arraysDiferentes([1,2,3], [4,5,6]))
     print(arraysDiferentes([1,2,3,4,5,6],[1]))
     print(arraysDiferentes([1,2,3], [1,2,3]))
     
    2.      Definir o método media(numeros: [Int]) -> Double, que deve analisar um array de
     números inteiros e calcular a média entre os números armazenados nele.
     
     func media(numeros: [Int]) -> Double {
       var soma = 0.0
       
       for numero in numeros{
        soma = soma + Double(numero)
       }
       let mediaAritmetica = soma / Double(numeros.count)
       return mediaAritmetica
     }

     print(media(numeros: [1,2,3,4,5,10]))
     
     
     3.     Definir um método que use como parâmetro um array de números inteiros e retorne
     outro array que contenha apenas os números pares do primeiro array.

     
     
     
     
*/
}

