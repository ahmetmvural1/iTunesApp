//
//  MoyaProvider.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import Moya

let provider: MoyaProvider<AppAPI> = {
    return MoyaProvider<AppAPI>.init(plugins: [NetworkLoggerPlugin()])    
}()

enum AppAPI {
    case search(_ dto: SearchDTO)
}

extension AppAPI: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://itunes.apple.com")!
    }
    
    var path: String {
        return "/search"
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return "sample".data(using: .utf8) ?? Data()
    }
    
    var task: Task {
        switch self {
        case .search(let dto):
            return .requestParameters(parameters: ["term":dto.term,"media":dto.media], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return ["Accept":"*/*"]
    }
    
    
}
