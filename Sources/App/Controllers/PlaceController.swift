//
//  PlaceController.swift
//  App
//
//  Created by Russell Archer on 10/06/2020.
//

import Vapor

final class PlaceController {

    
    /// Displays help text on how to use the REST API
    func index(_ req: Request) throws -> String { "Use /api/ for API calls. For example, http://localhost:8080/api/places" }
    
    /// Get all Places. GET /api/places/
    func getAll(_ req: Request) throws -> [Place] {
        [Place(id: 0, title: "A"), Place(id: 1, title: "B"), Place(id: 2, title: "C")]
    }
    
    /// Get Place with specific id. GET /api/places/n
    func get(_ req: Request) throws -> Place {
        guard let id = try? req.parameters.next(Int.self) else { return Place(id: -1, title: "") }
        return Place(id: id, title: "A")  // Echo back a Place with the same id as that requested
    }
    
    /// Create a new Place. POST /api/places/
    /// Make the request "Content-Type" is set to "application/json" and the body is a JSON-encoded Place.
    /// For example, {"id":-1,"title":"A place"}
    func create(_ req: Request, place: Place) throws -> Place {
        place.id = 101
        place.title.append(contentsOf: " (created)")
        
        return place
    }
}


