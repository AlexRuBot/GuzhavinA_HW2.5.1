//
//  ViewController.swift
//  GuzhavinA_HW2.5.1
//
//  Created by Саша Гужавин on 02/10/2019.
//  Copyright © 2019 Саша Гужавин. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapGestureToHideKeyboard()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationController = segue.destination as? WelcomeVC else { return }
        let login: String = loginTextField.text!
        destinationController.login = login
    }
    
    @IBAction func loginInButton(_ sender: UIButton) {
        if loginTextField.text == "Sasha" && passwordTextField.text == "Pas" {
            performSegue(withIdentifier: "WelcomeVC", sender: nil)
        }else {
            alertPush(title: "Тут такое дело...",
                      message: "У тебя не верный логин или пароль, перепроверь пожалуйста.")
            loginTextField.text = ""
            passwordTextField.text = ""
        }
        
    }
    @IBAction func forgotLogin(_ sender: UIButton) {
        alertPush(title: "Забыл?",
                  message: "Вот твой Логин: Sasha. Не забывай!")
    }
    @IBAction func forgotPassword(_ sender: UIButton) {
        alertPush(title: "И его забыл!?",
                  message: "Вот твой Пароль: Pas. Сьешь Гематоген!")
    }
    
    private func alertPush(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { action in })
            
        present(alert, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loginTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
    
    func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
}

