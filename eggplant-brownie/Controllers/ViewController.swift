import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var nomeTextField: UITextField?
  @IBOutlet weak var felicidadeTextField: UITextField?
  
  @IBAction func adicionar(_ sender: Any) {
      
      if let nomeDaRefeicao = nomeTextField?.text,
         let felicidadeDaRefeicao = felicidadeTextField?.text {
          let nome = nomeDaRefeicao
          
          if let felicidade = Int(felicidadeDaRefeicao) {
              let refeicao = Refeicao(nome: nome!, felicidade: felicidade)
              print("comi \(nome) e fiquei com felicidade: \(felicidade)")
          } else {
              print("erro ao tentar criar a refeição")
          }
      }
      
    let nome = nomeTextField.text
    let felicidade: Int! = Int(felicidadeTextField.text!)

    let refeicao = Refeicao(nome: nome!, felicidade: felicidade)
  }
  
}
