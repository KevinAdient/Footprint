//
//  MapOverlay.swift
//  Footprint
//
//  Created by Peter Michael Gits on 6/20/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit
import MapKit

class MapOverlay: NSObject, MKOverlay {
    
    var coordinate: CLLocationCoordinate2D
    var boundingMapRect: MKMapRect
    
    init(coord: CLLocationCoordinate2D, rect: MKMapRect) {
        self.coordinate = coord
        self.boundingMapRect = rect
    }
}
