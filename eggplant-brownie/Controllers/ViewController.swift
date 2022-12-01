import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var nomeTextField: UITextField?
  @IBOutlet weak var felicidadeTextField: UITextField?
  
  @IBAction func adicionar(_ sender: Any) {
    guard let nomeDaRefeicao = nomeTextField?.text else {
      return
    }
    
    guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
      print("erro ao obter felicidade")
      return
    }
    
    let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
    
    print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
      
    navigationController?.popViewController(animated: true)
  }
}
