//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Gustavo on 04/10/23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao:Int?
    @IBOutlet weak var ResultadoLabel: UILabel!
    
    @IBOutlet weak var PercentualLabel: UILabel!
    
    @IBOutlet weak var BotaoReiniciarQuiz: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfiguraLayout()
        ConfigurarDesempenho()
        // Do any additional setup after loading the view.
    }
    
    func ConfiguraLayout(){
        navigationItem.hidesBackButton = true
        BotaoReiniciarQuiz.layer.cornerRadius = 12.0
    }
    
    func ConfigurarDesempenho(){
        guard let pontuacao = pontuacao else{return}
        ResultadoLabel.text = "Voce acertou \(pontuacao) de \(questoes.count) questões"
        let percentual = (pontuacao*100)/questoes.count
        PercentualLabel.text = "Percentual: \(percentual)%"
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
