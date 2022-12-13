import Foundation
import UIKit

class RemoveRefeicaoViewContoller {

    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void) {
        let alerta = UIAlertController(title: refeicao.nome,
                                       message: refeicao.detalhes(),
                                       preferredStyle: .alert)
        
        let botaoCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        
        alerta.addAction(botaoCancelar)
        
        let botaoRemover = UIAlertAction(
            title: "Remover",
            style: .destructive,
            handler: handler)
        
        alerta.addAction(botaoRemover)
        
        controller.present(alerta, animated: true)
    }
}
