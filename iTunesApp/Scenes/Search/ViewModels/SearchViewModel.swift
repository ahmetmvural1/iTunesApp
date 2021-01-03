//
//  SearchViewModel.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import UIKit
import Foundation
import RxSwift
import RxCocoa

final class SearchViewModel {
    
    private var disposeBag: DisposeBag!
    private var repository: SearchRepository!
    var behaviorRelay = BehaviorRelay<Array<Content>>(value: [])
    let stateManager = StateManager.getInstance()
    
    init(disposeBag: DisposeBag, repository: SearchRepository) {
        self.disposeBag = disposeBag
        self.repository = repository
    }
    
    func getSearchResults(dto: SearchDTO, filterType: String) {
                
        var _temp = dto
        _temp.media = "all"
        
        if let state = stateManager.get(.filter).behaviorRelay.value as? FilterStateListDTO, state.taskStateList.count > 0 {
            _temp.media = state.taskStateList.first?.title.lowercased() ?? "all"
        }
        
        repository
            .getSearchResults(dto: _temp)
            .subscribe(onNext: { [weak self] content in
                guard let _content = content else {return}
                self?.behaviorRelay.accept(_content)
            }, onError: { error in
                print("\(error.localizedDescription)")
            }).disposed(by: disposeBag)
    }        
        
}
