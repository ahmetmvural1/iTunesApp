//
//  FilterCoordinator.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import UIKit

public enum FilterScene: String, AppScene {
    
    case back = "back"
    case filter = "filter"
    
    public var name: String {
        return self.rawValue
    }
    
    public var identifier: String {
        return "Filter"
    }
    
    public var coordinator: BaseCoordinator.Type{
        return FilterCoordinator.self
    }
}

final class FilterCoordinator: BaseCoordinator {
    
    override func start(_ name:AppScene, data:Any) {
        guard let filterViewController = container.resolve(FilterViewController.self) else {return}
        viewController = filterViewController.self
        self.initializeNavigationService()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    override func navigate(scene: AppScene, data: Any) {
    }
    
    override func back(_ viewController: UIViewController) {
    }
}


