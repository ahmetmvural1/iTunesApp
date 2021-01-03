//
//  String+Extensions.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation

extension String {
  var urlEscaped: String? {
    return addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
  }
}
