//
//  SearchCoordinator.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import UIKit

public enum SearchScene: String, AppScene {
    
    case back = "back"
    case search = "search"
    
    public var name: String {
        return self.rawValue
    }
    
    public var identifier: String {
        return "Search"
    }
    
    public var coordinator: BaseCoordinator.Type{
        return SearchCoordinator.self
    }
}

final class SearchCoordinator: BaseCoordinator {
    
    override func start(_ name:AppScene, data:Any) {        
        guard let searchViewController = container.resolve(SearchViewController.self) else {return}
        viewController = searchViewController.self
        self.initializeNavigationService()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    override func navigate(scene: AppScene, data: Any) {
    }
    
    override func back(_ viewController: UIViewController) {
    }
}

