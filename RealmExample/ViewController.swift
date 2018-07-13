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
    @IBOutlet weak var matriculaTextBox: UITextField!
    @IBOutlet weak var senhaTextBox: UITextField!
    @IBOutlet weak var botaoEntrar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fundoUnifor")!)
        //self.view.addBackground()
        self.logoUnifor.tintColor = .white
        self.botaoEntrar.setTitle("Entrar", for: .normal)
        self.botaoEntrar.layer.cornerRadius = self.botaoEntrar.frame.height / 2
        self.matriculaTextBox.placeholder = "Digite aqui sua matrícula"
        self.senhaTextBox.placeholder = "Digite aqui sua senha"
    }
    
//    extension UIView {
//        func addBackground() {
//            // screen width and height:
//            let width = UIScreen.mainScreen().bounds.size.width
//            let height = UIScreen.mainScreen().bounds.size.height
//
//            let imageViewBackground = UIImageView(frame: CGRectMake(0, 0, width, height))
//            imageViewBackground.image = UIImage(named: "fundoUnifor")
//
//            // you can change the content mode:
//            imageViewBackground.contentMode = UIViewContentMode.ScaleAspectFill
//
//            self.addSubview(imageViewBackground)
//            self.sendSubviewToBack(imageViewBackground)
//        }}
    
    
    @IBAction func cliqueBotao(_ sender: Any) {
        matriculaTextBox.text = "Oi!"
    }
    
}

