import UIKit

class Item: NSObject {
    
    // MARK: - Atributos
    
    var nome: String
    var calorias: Double

    // MARK: - Init
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
