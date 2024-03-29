//
//  BaseCoordinator.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import Swinject
import RxSwift
import UIKit

public class BaseCoordinator: NavigationCoordinator {
        
    public let container: Container
    public let disposeBag: DisposeBag
    public let fromViewController: BaseViewController?
    public var navigationController: BaseNavigationController
    
    var currentScene: AppScene!
    var viewController: BaseViewController!    
    
    required init(container: Container, navigationController: BaseNavigationController,
         disposeBag: DisposeBag, fromViewController: BaseViewController?) {
        self.container = container
        self.navigationController = navigationController
        self.disposeBag = disposeBag
        self.fromViewController = fromViewController
    }
    
    public func navigate(scene: AppScene, data: Any) {
        //not implemented
    }
    
    public func back(_ viewController: UIViewController) {
        //not implemented
    }
    
    public func start(_ scene: AppScene, data: Any) {
        //not implemented
    }
}


