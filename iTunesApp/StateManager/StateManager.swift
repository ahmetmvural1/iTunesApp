//
//  StateManager.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public protocol StateManagerProtocol {
    static func getInstance() -> StateManagerProtocol
    var behaviorRelay : BehaviorRelay<StateProtocol> {get}
    func  update<T:StateProtocol>(_ stateItem: T, success: (() -> Void)?) throws
}

public protocol StateProtocol{
    
}

public class StateManager {
    
    public static var instance: StateManager = StateManager()

    public static func getInstance() -> StateManager{
      return StateManager.instance
    }
    
    public func get(_ stateItem: StateItem) -> StateManagerProtocol {
        return StateFactory.getManager(stateItem)
    }
}
