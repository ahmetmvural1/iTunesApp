//
//  Filter.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation

struct Filter {
    let id = UUID().uuidString
    let name: String
    var selected: Bool
}
