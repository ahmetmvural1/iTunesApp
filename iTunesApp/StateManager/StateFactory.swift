//
//  StateFactory.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift

public enum StateItem {
    case filter
}

public protocol StateFactoryProtocol{
    static func getManager(_ stateItem: StateItem) -> StateManagerProtocol
}

class StateFactory : StateFactoryProtocol{
    public static func getManager(_ stateItem: StateItem) -> StateManagerProtocol {
        switch stateItem {
        case .filter:
            return FilterStateManager.getInstance()
        }
    }
}

