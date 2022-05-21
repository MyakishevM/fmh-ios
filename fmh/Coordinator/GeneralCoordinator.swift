//
//  GeneralCoordinator.swift
//  fmh
//
//  Created: 15.05.2022
//

import Foundation
import UIKit

final class GeneralCoordinator: BaseCoordinator {
    
    fileprivate unowned let navigationController: UINavigationController
     
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init()
    }
    
    override func start() {
        mainFlow()
    }

}

// MARK: - Navigation flows
extension GeneralCoordinator {
    
    func mainFlow() {
        let repository: AuthRepositoryProtocol = AuthRepository()
        let interactor: AuthInteractorProtocol = AuthInteractor(repository: repository)
        let viewController = GeneralViewController()
        let presenter  = GeneralPresenter(output: viewController)
        
        presenter.interactor = interactor
        viewController.presenter = presenter
        
        presenter.isCompletion = { [unowned self] in
            self.isCompletion?()
        }
        
        navigationController.setViewControllers([viewController], animated: false)
        navigationController.isNavigationBarHidden = false
    }
    
}

