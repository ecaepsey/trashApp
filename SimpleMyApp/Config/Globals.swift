//
//  Globals.swift
//  SimpleMyApp
//
//  Created by yespeace on 5/2/21.
//

import Foundation
import UIKit

func viewController(forViewModel viewModel: Any) -> UIViewController? {
    switch viewModel {
    case let viewModel as RootViewModel:
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "rootViewController") as? RootViewController
        viewController?.viewModel = viewModel
        return viewController
    case let viewModel as LoginViewModel:
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "loginViewController") as? LoginViewController
        viewController?.viewModel = viewModel
        return viewController
    default:
        return nil
    }
}
