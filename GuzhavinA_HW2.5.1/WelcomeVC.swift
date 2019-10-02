//
//  welcomeVC.swift
//  GuzhavinA_HW2.5.1
//
//  Created by Саша Гужавин on 02/10/2019.
//  Copyright © 2019 Саша Гужавин. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var labelWelcome: UILabel!
    
    var login = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelWelcome.text = "Добро пожаловать дорогой \(login)"
    }
    
    @IBAction func backToLoginVC() {
        
        dismiss(animated: true)
    }

}
