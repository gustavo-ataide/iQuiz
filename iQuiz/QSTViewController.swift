//
//  QSTViewController.swift
//  iQuiz
//
//  Created by Gustavo on 04/10/23.
//

import UIKit

class QSTViewController: UIViewController {
    var QuestaoAltual = 0
    var Pontuacao = 0
    
    @IBOutlet var BotoesResposta: [UIButton]!
    
    @IBAction func QuestaoBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
        let usuarioacertouResposta = questoes[QuestaoAltual].RespostaCorreta == sender.tag
        
        if usuarioacertouResposta{
            Pontuacao+=1
            print("O Usuario acertou a resposta")
            BotoesResposta[sender.tag].backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        }
        else{
            BotoesResposta[sender.tag].backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        
        QuestaoAltual+=1
        
        if QuestaoAltual < questoes.count{
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ConfigurarQuestao), userInfo: nil, repeats: false)
        }
        else{
            NavegaTelaDesempenho()
        }
        
    }
    
    
    @IBOutlet weak var TituloQuestaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigurarLayout()
        ConfigurarQuestao()
        // Do any additional setup after loading the view.
    }
    
    func ConfigurarLayout(){
        navigationItem.hidesBackButton=true
        for botao in BotoesResposta{
            botao.layer.cornerRadius = 12.0
        }
    }
        @objc func ConfigurarQuestao(){
            TituloQuestaoLabel.text = questoes[QuestaoAltual].Titulo
            TituloQuestaoLabel.numberOfLines = 0
            
            for botao in BotoesResposta{
                botao.backgroundColor = UIColor(red: 166/255, green: 50/255, blue: 255/255, alpha: 1.0)
                
                let titulobotao = questoes[QuestaoAltual].Respostas[botao.tag]
                botao.setTitle(titulobotao, for: .normal)
            }
        
        }
    
    func NavegaTelaDesempenho(){
        performSegue(withIdentifier: "NavegaDesempenho", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else{return}
        desempenhoVC.pontuacao = Pontuacao
        
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
