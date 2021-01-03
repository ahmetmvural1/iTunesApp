//
//  AppDelegate+Ioc.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift
import Swinject
import SwinjectAutoregistration

extension AppDelegate {
    
    internal func initDependencyGraph() {
        self.registerGlobalDependencies(container)
        
        SearchComponent.register(container)
        DetailComponent.register(container)
        FilterComponent.register(container)
    }
    
    private func registerGlobalDependencies(_ container: Container){
        
        //DisposeBag
        //Singleton
        container.autoregister(DisposeBag.self, initializer: DisposeBag.init)
            .inObjectScope(.container)
        
    }
    
}
