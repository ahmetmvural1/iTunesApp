//
//  FilterViewModel.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift

final class FilterViewModel {
    
    var disposeBag: DisposeBag!
    
    internal let filters = [
        Filter(name: "All", selected: true),
        Filter(name: "Music", selected: false),
        Filter(name: "Movie", selected: false),
        Filter(name: "Podcast", selected: false)
    ]
    
    init(disposeBag: DisposeBag) {
        self.disposeBag = disposeBag
    }
    
}
