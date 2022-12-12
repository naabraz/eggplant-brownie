import Foundation
import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe() {
        let alerta = UIAlertController(title: "Desculpe",
                                       message: "Não foi possível atualizar a tabela",
                                       preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel)
        
        alerta.addAction(ok)

        controller.present(alerta, animated: true)
    }
}
