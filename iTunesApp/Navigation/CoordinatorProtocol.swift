//
//  CoordinatorProtocol.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Swinject
import UIKit
import RxSwift

public protocol AppScene{
    var identifier: String { get }
    var name: String { get }    
    var coordinator: BaseCoordinator.Type{get}
}

 public protocol CoordinatorProtocol: AnyObject {
    func navigate(scene:AppScene, data: Any)
    func back(_ viewController: UIViewController)
    var container: Container { get }
    func start(_ scene: AppScene, data:Any)
}

