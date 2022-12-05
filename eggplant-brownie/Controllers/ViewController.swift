import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource {
  
    // MARK: - Atributos
  
    var delegate: AdicionaRefeicaoDelegate?
    var itens: [String] = ["Molho de Tomate", "Queijo", "Molho Apimentado", "Manjericão"]
    
    // MARK: - IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
  
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let linhaDaTabela = indexPath.row
        let item = itens[linhaDaTabela]
        
        celula.textLabel?.text = item
        
        return celula
    }
    
    // MARK: - IBActions
    
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
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }
}
