//
//  MainCoordinator.swift
//  fmh
//
//  Created: 10.05.2022
//

import Foundation

protocol MainCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

final class MainCoordinator: Coordinator, MainCoordinatorOutput {
    
    var finishFlow: CompletionBlock?
    
    fileprivate let factory: MainModuleFactoryProtocol
    fileprivate let router : Routable
    
    init(with factory: MainModuleFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router  = router
    }
}

// MARK: - Coordinatable
extension MainCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

// MARK: - Private methods
private extension MainCoordinator {
    func performFlow() {
        let view = factory.makeMainView()
        view.onCompletion = finishFlow
        router.setRootModule(view, hideBar: false)
    }
}
