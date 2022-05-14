import UIKit



class Competidor{
    let velocidade: Double
    let aceleracao: Double
    let giro: Int
    let placa: String
    
    init(velocidade: Double, aceleracao: Double, giro: Int, placa: String){
        self.velocidade = velocidade
        self.aceleracao = aceleracao
        self.giro = giro
        self.placa = placa
    }
}

class Corrida{
    let distancia: Double
    let premioEmDolares: Double
    let nome: String
    let quantidadeDeCompetidoresPermitidos: Int
    var listaDeCompetidores: [Competidor] = []
    let socorristaCarro: SocorristaCarro
    let socorristaMoto: SocorristaMoto
    
    init(distancia: Double, premioEmDolares: Double, nome: String, quantidadeDeCompetidoresPermitidos: Int, socorristaCarro: SocorristaCarro, socorristaMoto: SocorristaMoto, velocidade: Double, aceleracao: Double, giro: Int, placa: String){
        self.distancia = distancia
        self.premioEmDolares = premioEmDolares
        self.nome = nome
        self.quantidadeDeCompetidoresPermitidos = quantidadeDeCompetidoresPermitidos
        self.socorristaCarro = socorristaCarro
        self.socorristaMoto = socorristaMoto
    }
    
    public func adicionarCarro(velocidade: Double, aceleracao: Double, giro: Int, placa: String) -> Void{
        let carro = Carro(quilos: 1000.0,rodas: 4, velocidade: velocidade, aceleracao: aceleracao, giro:  giro, placa: placa)
        listaDeCompetidores.append(carro)
    }
    
    public func adicionarMoto(velocidade: Double, aceleracao: Double, giro: Int, placa: String) -> Void{
        let moto = Moto(quilos: 300.0, rodas: 2, velocidade: velocidade, aceleracao: aceleracao, giro: giro, placa: placa)
        listaDeCompetidores.append(moto)
    }
    
    public func eliminarCompetidor(competidor: Competidor) -> Void{
        var posicao = -1
        
        for i in 0...listaDeCompetidores.count - 1{
            if competidor.placa == listaDeCompetidores[i].placa{
                posicao = i
                break
            }
        }
        listaDeCompetidores.remove(at: posicao)
        
    }
    public func eliminarCompetidorComPlaca(umaPlaca: String) -> Void{
        var posicao = -1
        
        for i in 0...listaDeCompetidores.count - 1{
            if umaPlaca == listaDeCompetidores[i].placa{
                posicao = i
                break
            }
        }
        listaDeCompetidores.remove(at: posicao)
        
    }
    
    public func oGanhador() -> Competidor{
        return listaDeCompetidores.randomElement()!
    }
    
    public func socorrer( umaPlaca: String ) -> Void{
        var competidor: Competidor = Competidor(velocidade: 0,aceleracao: 0,giro: 0,placa: "")
        
        for elemento in listaDeCompetidores{
            if elemento.placa == umaPlaca{
                competidor = elemento
                break
            }
        }
        if competidor is Carro{
            socorristaCarro.socorrer(UmCompetidor: competidor)
        }else{
            socorristaMoto.socorrer(UmCompetidor: competidor)
        }
    }

}

class Carro: Competidor{
    let quilos: Double
    let rodas: Int
    
    init(quilos: Double, rodas: Int,velocidade: Double, aceleracao: Double, giro: Int, placa: String){
        self.quilos = quilos
        self.rodas = rodas
        
        super.init(velocidade: velocidade, aceleracao: aceleracao, giro: giro, placa: placa)
    }
}

class Moto: Competidor {
    let quilos: Double
    let rodas: Int
    
    init(quilos: Double, rodas: Int, velocidade: Double, aceleracao: Double, giro: Int, placa: String){
        self.quilos = quilos
        self.rodas = rodas
        
        super.init(velocidade: velocidade, aceleracao: aceleracao, giro: giro, placa: placa)
    }
}


class SocorristaCarro{
    public func socorrer(UmCompetidor: Competidor){
        print("Socorrendo carro \(UmCompetidor.placa)")
    }
}

class SocorristaMoto{
    public func socorrer(UmCompetidor: Competidor){
        print("Socorrendo moto\(UmCompetidor.placa)")
    }
}














