//
//  ViewController.swift
//  iQuiz
//
//  Created by Gustavo on 03/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BotaoIniciarQuiz: UIButton!
    
    
    @IBAction func BotaoPressionado(_ sender: Any) {
        print("O Botao foi pressionado")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    func configuraLayout(){
        navigationItem.hidesBackButton = true
        BotaoIniciarQuiz.layer.cornerRadius = 12.0
    }

}

