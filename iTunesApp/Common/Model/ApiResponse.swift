//
//  ApiResponse.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation

public struct ApiResponse: Decodable {
    public let results: Array<Content>?
    public let resultCount: Int?        
}
