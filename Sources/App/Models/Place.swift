//
//  Place.swift
//  App
//
//  Created by Russell Archer on 10/06/2020.
//

//import FluentSQLite
import Vapor

/// Place data model. Conforming to the Content protocol enables Place to be HTTP encoded/decoded
final class Place: Content {

    var id: Int?
    var title: String

    init(id: Int? = nil, title: String) {
        self.id = id
        self.title = title
    }
}
