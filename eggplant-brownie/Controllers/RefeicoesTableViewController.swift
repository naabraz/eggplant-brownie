import Foundation
import UIKit

class RefeicoesTableViewController: UITableViewController {
    var refeicoes = [Refeicao(nome: "Macarrão", felicidade: 4),
                    Refeicao(nome: "Pizza", felicidade: 4),
                    Refeicao(nome: "Comida Japonesa", felicidade: 5)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome

        return celula
    }

    func add(_ refeicao: Refeicao) {       
        refeicoes.append(refeicao)
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adicionar" {
            if let viewController = segue.destination as? ViewController {
                viewController.tableViewController = self
            }
        }
    }
}
