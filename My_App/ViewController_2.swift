//
//  ViewController_2.swift
//  My_App
//
//  Created by Андрей Дютин on 01.08.2020.
//  Copyright © 2020 Андрей Дютин. All rights reserved.
//

import UIKit

class ViewController_2: UIViewController {
    var login: String?
    
    @IBOutlet weak var labelHellow: UILabel!
    
    override func viewDidLoad() {//вызывается по умолчанию
        super.viewDidLoad()

        guard let login = self.login else { return }
        labelHellow.text = "Добрый день, \(login)"
    }
    @IBAction func buttonLogOff(_ sender: UIButton) {
    }
    
    
    


}
