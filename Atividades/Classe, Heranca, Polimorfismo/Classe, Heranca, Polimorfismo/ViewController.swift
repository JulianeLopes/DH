//
//  ViewController.swift
//  Classe, Heranca, Polimorfismo
//
//  Created by Juliane Lopes on 25/03/22.
//  Copyright © 2022 DH. All rights reserved.
//

import UIKit

/*
 
 class = conjunto de objetos
 Atributos = conjunto que define a estrutura da classe
 Metodos = sao as funcoes
 Herança = herda o comportamento da class
 Polimorfismo = subscrita (override)
 Protocol = contratos
 
 
 exercicio Funcionario
 
 Definir classe Funcionario com nome, salario e cpf
 Definir classes Programador com plataforma de trabalho (Android, IOS e Web)
 Definir  classe Designer com ferramentas preferidas( photoshop, Sketch e Gimp)
 Ambos tem bonus anual baseado no salario, onde Programador recebe 20% e Designer recebe 15%
 Faca um metodo que calcule o bonus anual e mostre o valor na tela
 Use polimorfismo para resolver problema.
 
 Class Funcionario{
 var nome: String
 var salario: Int
 var cpf: String
 
 init(nome: String, salario: Int, cpf: String){
 self.nome = nome
 self.salario = salario
 self.cpf = cpf
 
 }
 
 func calculaBonusAnual() -> Double {
 let salarioAnual = salario * 12
 return salarioAnual * 0.15
 }
 }
 
 Class Programador: Funcionario{
 var plataformaDeTrabalho: String
 
 init(plataformaDeTrabalho: String, nome: String, salario: Int, cpf: String){
 self.plataformaDeTrabalho = plataformaDeTrabalho
 super. init(nome: nome, salario: salario , cpf: cpf)
 }
 }
 
 Class Designer: Funcionario{
 var ferramentaPreferida: String
 
 init(ferramentaPreferida: String, nome: String, salario: Int, cpf: String){
 self.ferramentaPreferida = ferramentaPreferida
 super. init(nome: nome, salario: salario , cpf: cpf)
 }
 }
 
 
 -------------------------------
 
 
 Exercicios de Protocolo
 
 Exercicio 1
 
 Protocol Imprimivel{
 func imprimir() -> Void
 }
 
 Class Contrato:Imprimivel {
 func imprimir()
 print("Sou um contrato muito legal")
 }
 
 Class Foto: Imprimivel{
 func imprimir()
 print("Sou uma selfie")
 }
 
 Class Documento: Imprimivel{
 func imprimir()
 print("Sou documento do word")
 
 }
 
 Class Impressora{
 
 var imprimiveis: [Imprimivel] = []
 
    public func imprimirTudo() -> Void{
    for i in imprimiveis{
    i.imprimir()
    }
 }
    public func agregarImprimivel(umImprimivel: Imprimivel) ->Void{
 imprimiveis.append(UmImprimivel)
    }
 }
 
var documento = Documento()
var foto = Foto()
var contrato = Contrato()
var printer = Impressora()

printer.agregarImprimivel(umImprimivel: documento)
printer.agregarImprimivel(umImprimivel: foto)
printer.agregarImprimivel(umImprimivel: contrato)

 
 printer.imprimirTudo()
 }
 
 ---------------------------------------
 
 Exercicio 2
 
 Protocol Voador{
 func voar() -> Void
 }
 
 
 Class Pato: Voador{
    var energia = Int.random(in: o...100)
 
    func voar() -> Void{
    energia = energia - 5
    print("Estou voando como pato")
    }
 }
 
 Class Aviao: Voador{
    var horas = 0
 
    func voar() -> Void{
    horas = horas + 13
    print("Estou voando como aviao")
    }
 }
 
 Class Super-Homem: Voador{
 var experiencia = 0
    func voar() -> Void{
    experiencia = experiencia + 3
    print("Estou voando como campeao")
    }
 }
 
 */
