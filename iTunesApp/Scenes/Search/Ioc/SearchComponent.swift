//
//  SearchComponent.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift
import Swinject
import SwinjectAutoregistration

class SearchComponent {
    
    public static func register(_ container: Container) {
        
        container.autoregister(SearchRepository.self, initializer: SearchRepository.init)
        container.autoregister(SearchViewModel.self, initializer: SearchViewModel.init)
        
        container.register(SearchViewController.self) { r in
            let vc = SearchViewController()
            vc.viewModel = r.resolve(SearchViewModel.self)
            vc.disposeBag = r.resolve(DisposeBag.self)
            vc.container = container
            return vc
        }
        
    }
    
}
