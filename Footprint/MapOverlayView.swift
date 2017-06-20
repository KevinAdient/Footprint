//
//  MapOverlayView.swift
//  Footprint
//
//  Created by Peter Michael Gits on 6/20/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit
import MapKit

class MapOverlayView: MKOverlayRenderer {
    
    var overlayImage: UIImage
    
    init(overlay: MKOverlay, overlayImage:UIImage) {
        self.overlayImage = overlayImage
        super.init(overlay: overlay)
    }
    
    override func draw(_ mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext) {
        let mapImage = overlayImage.cgImage
        let mapRect = rect(for: overlay.boundingMapRect)
        context.scaleBy(x: 1.0, y: -1.0)
        context.translateBy(x: 0.0, y: -mapRect.size.height)
        context.draw(mapImage!, in: mapRect)
    }
}
