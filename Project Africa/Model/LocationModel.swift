//
//  LocationModel.swift
//  Project Africa
//
//  Created by okonji emmanuel on 13/05/2021.
//

import Foundation
import MapKit


struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    
    //ComputedProperty
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
