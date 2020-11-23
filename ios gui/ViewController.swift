//
//  ViewController.swift
//  ios gui
//
//  Created by Frame Doungdee on 11/21/20.
//  Copyright © 2020 Frame Doungdee. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.text = "admin"
        passwordTextField.text = "password"
    }

    @IBAction func onSignIn() {
        if usernameTextField.text == "admin" && passwordTextField.text == "password" {
            
            let profileViewController = ProfileViewController(nibName: "ProfileViewController", bundle: .none)
            navigationController?.pushViewController(profileViewController, animated: true)
            
//            let myStoryBoard = UIStoryboard(name: "MyStoryBoard", bundle: .none)
//            let homeViewController = myStoryBoard.instantiateViewController(identifier: "HomeScreen")
//            navigationController?.pushViewController(homeViewController, animated: true)
        }
    }
}

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        
        let label = UILabel()
        label.text = "My Home"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let userNameTextField = UITextField()
        userNameTextField.placeholder = "username"
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "password"
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let signInButton = UIButton(type: .system)
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitle("Hello", for: .highlighted)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        view.addSubview(userNameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            userNameTextField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 40),
            userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.widthAnchor.constraint(greaterThanOrEqualTo: view.widthAnchor, multiplier: 0.5),
            
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func onButton(_ sender: Any) {
//        performSegue(withIdentifier: "segueB", sender: .none)
//    }
}

class ScreenB: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


class ScreenC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
