//
//  RealmProducer.swift
//  iTunesApp
//
//  Created by Ahmet Muhammet Vural on 12.12.2020.
//  Copyright © 2020 Ahmet Muhammet Vural. All rights reserved.
//

import Foundation
import RealmSwift

public class RealmProducer{
    
    ///Eager Init
    private static var database:Realm = try! Realm()
    
    private init(){
        
    }
    public static func getRealm() -> Realm{
        return RealmProducer.database
    }
}

