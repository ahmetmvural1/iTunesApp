//
//  DetailComponent.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift
import Swinject
import SwinjectAutoregistration

class DetailComponent {
    
    public static func register(_ container: Container) {
                        
        container.register(DetailViewController.self) { r in
            let vc = DetailViewController()            
            vc.disposeBag = r.resolve(DisposeBag.self)
            return vc
        }
        
    }
    
}

