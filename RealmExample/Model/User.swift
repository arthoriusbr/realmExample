//
//  User.swift
//  RealmExample
//
//  Created by administrador on 16/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    @objc dynamic var matricula: String = ""
    @objc dynamic var senha: String = ""
    
    override static func primaryKey() -> String? {
        return "matricula"
    }
}
