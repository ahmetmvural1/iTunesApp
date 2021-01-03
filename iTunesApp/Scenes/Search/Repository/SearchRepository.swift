//
//  SearchRepository.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 13.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RxSwift
import RxMoya

final class SearchRepository {
    
    func getSearchResults(dto: SearchDTO) -> Observable<Array<Content>?> {
        return provider.rx
            .request(.search(dto))
            .observeOn(MainScheduler.instance)
            .map(ApiResponse.self)
            .map{$0.results}
        .asObservable()
    }
    
}
