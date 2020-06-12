import Vapor

public func routes(_ router: Router) throws {
    
    let placeController = PlaceController()
    router.get("", use: placeController.index)                                  // GET  Show help text
    router.get("api", use: placeController.index)                               // GET  Show help text
    router.get("api", "places", use: placeController.getAll)                    // GET  All places (/api/places)
    router.get("api", "places", Int.parameter, use: placeController.get)        // GET  Place with id (/api/places/n)
    router.post(Place.self, at: "api", "places", use: placeController.create)   // POST A new new Place (/api/places)
}
