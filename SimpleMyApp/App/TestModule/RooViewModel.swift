//
//  RooViewModel.swift
//  SimpleMyApp
//
//  Created by yespeace on 5/2/21.
//

import Foundation
import RxSwift

enum NavigationStackAction {
    case set(viewModels: [Any], animated: Bool)
    case push(viewModel: Any, animated: Bool)
    case pop(animated: Bool)
}


class RootViewModel {
    let navigationStackActions = BehaviorSubject<NavigationStackAction>(value: .set(viewModels: [LoginViewModel()], animated: false))
}
    