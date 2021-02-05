//
//  RootViewController.swift
//  SimpleMyApp
//
//  Created by yespeace on 5/2/21.
//

import Foundation
import UIKit
import RxSwift

class RootViewController: UINavigationController {
    
    var viewModel: RootViewModel!
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        print("Our Market App loading already")
        
        
        RootViewModel().navigationStackActions
            .subscribe(onNext: { [weak self] navigationStackAction in
                switch navigationStackAction {
                case .set(let viewModels, let animated):
                    let viewControllers = viewModels.flatMap {viewController(forViewModel: $0)}
                    self?.setViewControllers(viewControllers, animated: animated)
                case .push(let viewModel, let animated):
                    guard let viewController = viewController(forViewModel: viewModel) else {return }
                    self?.pushViewController(viewController, animated: animated)
                    
                case .pop(let animated):
                    _ = self?.popViewController(animated: animated)
                }
            })
            .disposed(by: DisposeBag())
    }
}
