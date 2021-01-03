//
//  Navigation.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation

public struct Navigation<T> {
    
    public let scene: AppScene
    public let data:Any
    public let name: String?
    
    public init(_ scene:AppScene, data:Any, name: String? = nil) {
        self.scene = scene
        self.data = data
        self.name = name
    }
}
