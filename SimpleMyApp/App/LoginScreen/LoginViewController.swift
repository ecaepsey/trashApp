//
//  LoginViewController.swift
//  SimpleMyApp
//
//  Created by yespeace on 5/2/21.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var viewModel: LoginViewModel!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
    }
}
