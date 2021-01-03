//
//  DetailCoordinator.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import UIKit

public enum DetailScene: String, AppScene {
    
    case back = "back"
    case detail = "detail"
    
    public var name: String {
        return self.rawValue
    }
    
    public var identifier: String {
        return "Detail"
    }
    
    public var coordinator: BaseCoordinator.Type{
        return DetailCoordinator.self
    }
}

final class DetailCoordinator: BaseCoordinator {
    
    override func start(_ name:AppScene, data:Any) {
        guard let detailViewController = container.resolve(DetailViewController.self) else {return}
        viewController = detailViewController.self
        
        let _data = data as! [String:Any]
        (viewController as! DetailViewController).content = _data["content"] as? Content
        
        self.initializeNavigationService()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    override func navigate(scene: AppScene, data: Any) {
    }
    
    override func back(_ viewController: UIViewController) {
    }
}

