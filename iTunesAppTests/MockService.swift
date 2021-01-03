//
//  MockService.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import iTunesApp

public class MockService {
    
    public static func readJsonFile() -> Array<Content>? {
        let bundle = Bundle(for: MockService.self)
        guard let path = bundle.path(forResource: "sample", ofType: "json") else {return nil}
        guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {return nil}
        let decoder = JSONDecoder()
        guard let parsedJson = try? decoder.decode(ApiResponse.self, from: data) else {return nil}
        return parsedJson.results        
    }
    
}
