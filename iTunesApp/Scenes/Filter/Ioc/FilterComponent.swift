//
//  FilterComponent.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift
import Swinject
import SwinjectAutoregistration

class FilterComponent {
    
    public static func register(_ container: Container) {
        
        container.autoregister(FilterViewModel.self, initializer: FilterViewModel.init)
                        
        container.register(FilterViewController.self) { r in
            let vc = FilterViewController()
            vc.viewModel = r.resolve(FilterViewModel.self)
            vc.disposeBag = r.resolve(DisposeBag.self)
            return vc
        }
        
    }
    
}


