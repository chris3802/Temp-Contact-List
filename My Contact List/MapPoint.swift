//
//  MapPoint.swift
//  My Contact List
//
//  Created by Christopher Smith on 11/21/17.
//  Copyright © 2017 Leaning Mobile Apps. All rights reserved.
//

import Foundation
import MapKit

class MapPoint: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
