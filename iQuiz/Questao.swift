import Foundation


struct Questao{
    var Titulo:String
    var Respostas: [String]
    var RespostaCorreta:Int
}

let questoes:[Questao] = [
    Questao(Titulo: "Qual foi o dia que começamos a namorar?", Respostas: ["22/11","05/04","05/03"], RespostaCorreta: 1),
    Questao(Titulo: "Qual o nosso role preferido?", Respostas: ["ir ao mercado comprar besteira para comer","Ir ao cinema","Ir à Disney fazer um bate e volta"], RespostaCorreta: 0),
    Questao(Titulo: "Melhor receita que ja fizemos?", Respostas: ["Pudim","Acarajé","Pavê"], RespostaCorreta: 2),
    Questao(Titulo: "Quem ama mais?", Respostas: ["Gustavo","Sabrina","Os dois"], RespostaCorreta: 0)

]
