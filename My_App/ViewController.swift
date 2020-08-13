//
//  ViewController.swift
//  My_App
//
//  Created by Андрей Дютин on 30.07.2020.
//  Copyright © 2020 Андрей Дютин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lableLogin: UITextField!
    @IBOutlet weak var labelPassworg: UITextField!
    @IBAction func buttonLogin(_ sender: UIButton) {
        performSegue(withIdentifier: "Segue_1", sender: nil)
    }
    @IBAction func unwindSegueToMainScreen (segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {//переход на 2 окно
        guard let dvc = segue.destination as? ViewController_2 else { return }
        dvc.login = lableLogin.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//закрытие клавиатуры
        self.view.endEditing(true)
    }
    
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }


}

