//
//  ViewController.swift
//  RealmExample
//
//  Created by administrador on 13/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoUnifor: UIImageView!
    
    @IBOutlet weak var matriculaTextBox: UITextField! //caixa para digitar matricula que será gravada no banco
    @IBOutlet weak var senhaTextBox: UITextField! //caixa para digitar senha que será gravada no banco
    
    @IBOutlet weak var botaoEntrar: UIButton! //botao para gravar no banco
    @IBOutlet weak var botaoLer: UIButton! //botao para efetuar a busca
    
    @IBOutlet weak var matriculaShow: UILabel! //label para mostrar a matricula que puxa do banco na busca
    @IBOutlet weak var senhaShow: UILabel! //label para mostrar a senha que puxa do banco na busca
    
    @IBOutlet weak var matriculaRead: UITextField! //caixa de busca
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fundoUnifor")!)
        //self.view.addBackground()
        
        self.logoUnifor.tintColor = .white
        self.botaoEntrar.setTitle("Entrar", for: .normal)
        self.botaoEntrar.layer.cornerRadius = self.botaoEntrar.frame.height / 2
        
        self.botaoLer.setTitle("Ler", for: .normal)
        self.botaoLer.layer.cornerRadius = self.botaoLer.frame.height / 2
        
        self.matriculaTextBox.placeholder = "Digite aqui sua matrícula"
        self.senhaTextBox.placeholder = "Digite aqui sua senha"
        self.matriculaRead.placeholder = "Faça aqui sua consulta no banco"
        
        
//        let user = User()
//        user.matricula = matriculaTextBox.text
//        user.senha = senhaTextBox.text
//
//        try! uiRealm.write {
//            uiRealm.add(user)
//        }
        
    }
    
    //MARK - Actions
    @IBAction func entrar(_ sender: UIButton) {
        if let matriculaTextBox = self.matriculaTextBox.text, let senhaTextBox = self.senhaTextBox.text {
            let user = User()
            user.matricula = matriculaTextBox
            user.senha = senhaTextBox
            
            try! uiRealm.write {
                uiRealm.add(user)
            }
        }
    }
    
    @IBAction func ler(_ sender: UIButton) {
        if let matricula = self.matriculaRead.text {
            if let user = uiRealm.object(ofType: User.self, forPrimaryKey: matricula) {
                self.matriculaShow.text = user.matricula
                self.senhaShow.text = user.senha
            }
        }
        
        let users = uiRealm.objects(User.self)
        
        var usersArray: [User] = []
        usersArray.append(contentsOf: users)
        
        for user in usersArray.filter({$0.senha.contains("iOS")}) {
            print(user)
        }
    }
}

