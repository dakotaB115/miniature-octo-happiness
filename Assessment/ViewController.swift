//
//  ViewController.swift
//  Assessment
//
//  Created by Dakota Brown on 10/25/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.underlined()
        lastName.underlined()
        email.underlined()
    }

    func displayError(title: String, message: String) {
        let title = title
        let message = message
        let action = UIAlertAction(title: "Ok", style: .default) { _ in
            self.dismiss(animated: true)
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(action)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func submit(_ sender: Any) {
        
        guard let firstName = firstName.text, !firstName.isEmpty else {
            displayError(title: "Missing First Name", message: "Please enter a First Name.")
            return
        }
        
        guard let lastName = lastName.text, !lastName.isEmpty else {
            displayError(title: "Missing Last Name", message: "Please enter a Last Name.")
            return
        }
        
        guard let email = email.text, !email.isEmpty else {
            displayError(title: "Missing Email", message: "Please enter an Email.")
            return
        }
        let p1 = Person(firstName: firstName, lastName: lastName, email: email)
        print(p1.firstName!)
        print(p1.lastName!)
        print(p1.email!)
    }
    
}

