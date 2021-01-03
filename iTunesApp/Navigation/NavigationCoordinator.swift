//
//  NavigationCoordinator.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Swinject
import UIKit
import RxSwift

public protocol NavigationCoordinator: CoordinatorProtocol  {
}

extension NavigationCoordinator where Self: BaseCoordinator {
    func initializeNavigationService(){
        self.viewController.navigationSubject.subscribe(onNext: { (navigation) in
            try! NavigationService.requestNavigationObject()
                .start(fromViewController: self.viewController,
                       navigationController: self.navigationController,
                       prevCoordinator: self,
                       nextScene: navigation.scene,
                       data: navigation.data)
        }).disposed(by: self.disposeBag)
    }
}
