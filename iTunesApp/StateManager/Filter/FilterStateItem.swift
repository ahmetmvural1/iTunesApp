//
//  FilterStateItem.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RealmSwift

enum FilterStateAction: StateProtocol {
    case upsert(FilterStateDTO)
    case remove(String)
    case removeAll
}

class FilterStateObject: Object, StateProtocol {
    @objc dynamic var id = ""
    @objc dynamic var title = ""
    @objc dynamic var selected = false
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

public struct FilterStateListDTO: StateProtocol {
    let taskStateList: Array<FilterStateObject>
}

public struct FilterStateDTO {
    public var id: String
    public var title: String
    public var selected: Bool
    
    public init(_ id: String, title: String, selected: Bool) {
        self.id = id
        self.title = title
        self.selected = selected
    }
}
